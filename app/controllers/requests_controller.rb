class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  respond_to? :json
  before_action :authenticate_user!

  def request_map
    format.json { render :json => @requests.to_json(:only => [:id, :title, :description, :longitude, :latitude, :category, :done], :methods => [:to_param]) }
  end

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all

    respond_to do |format|
      format.html
      format.json { render json: @requests }
    end
  end

  def request_creator
      @requests = Request.all

      respond_to do |format|
          format.html
          format.json { render json: @requests }
      end
  end

  def request_counter
    @requests = Request.where(status:'unfulfilled').count
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @request = Request.find(params[:id])
    @conversation = Conversation.new(id: @request.id)
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
     @request = current_user.request.build(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, statuss: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    @request = Request.find(params[:id])

    respond_to do |format|
      if @request.update(conversations_count_params)
        @request.conversations_count = 0
        @request.save
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, Request: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    if current_user = @request.user
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

  def republish
    @request = Request.find(params[:id])
         @request.updated_at = Time.now
         @request.save
      redirect_to @request, notice: 'Request was updated.'
  end

  def volunteer
    @request = Request.find(params[:id])
    @conversation = Conversation.create!(request_id: @request.id,sender_id: current_user.id,recipient_id: @request.user_id)
    redirect_to @request
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.fetch(:request, {}).permit(:title, :description, :category, :longitude, :latitude, :status)
  end

  def conversations_count_params
    params.require(:request).permit(:conversations_count)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def request_params
    #   params.fetch(:request, {}).permit(:title, :description, :category, :longitude, :latitude, :status, :done)
    # end
  end
