class Navigation extends React.Component {

  render() {
    return (
      <nav className="navbar-default navbar navbar-expand-lg navbar-light bg-light">
        <a className="navbar-brand" href="/">askHelp</a>
        <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span className="navbar-toggler-icon"></span>
        </button>

        <div className="collapse navbar-collapse navbar-right" id="navbarSupportedContent">
          <ul className="navbar-nav navbar-right">
            <li className="nav-item">
              <a className="nav-link" href="/requests">Requests</a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="/requests/new">Add a new request</a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="/conversations">Messages</a>
            </li>
          </ul>
        </div>
      </nav>
    );
  }
};
