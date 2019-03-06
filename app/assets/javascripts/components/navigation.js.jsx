class Navigation extends React.Component {

  render() {
    return (
      <div className="navbar navbar-default navbar-static-top" role= "navgiation">
        <div className="container">
            <a href="/" className="navbar-brand">askHelp</a>
            <button className="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span className="icon icon-bar"></span>
            </button>
            <div className="collapse navbar-collapse">
              <ul className="nav navbar-nav navbar-right">
                <li><a href="/requests">Requests</a></li>
                <li><a href="/requests/new">Add a new request</a></li>
                <li><a href="/conversations">Messages</a></li>
              </ul>
            </div>
        </div>
      </div>
    );
  }
};
