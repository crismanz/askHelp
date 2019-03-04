class Navigation extends React.Component {

    render() {
      return (
            <div className="navbar navbar-expand-lg navbar-light bg-light">
                    <a className="navbar-brand" href="/"><h6>askHelp</h6></a>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                      </button>
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul className="navbar-nav mr-auto">
                        <li className="nav-item">
                          <a className="nav-link" href="/site/about"><h6>About</h6></a>
                        </li>
                        <li className="nav-item">
                          <a className="nav-link" href="/requests"><h6>Requests</h6></a>
                        </li>
                        <li className="nav-item">
                          <a className="nav-link" href="/requests/new"><h6>Add a new request</h6></a>
                        </li>
                        <li className="nav-item">
                          <a className="nav-link" href="/conversations"><h6>Messages</h6></a>
                        </li>
                        <li className="nav-item">
                          <a className="nav-link" href="/site/contact"><h6>Contact</h6></a>
                        </li>
                    </ul>
                    </div>
            </div>
      );
    }
  };
