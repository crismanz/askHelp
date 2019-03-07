class About extends React.Component{

  render() {
    return (
      <section id="about">
      <div className="container">
      <div className="row">
      <h2>How it works</h2>

      <p>Once signed in, all users see a map with markers on it indicating people in need of community help.
      The markers are colored differently for two different kinds of needs: one-time tasks (i.e., to help carry a piece of heavy furniture) or for a material need (i.e., a homeless woman on your street who needs a blanket for winter).
      </p>
      <p>Upon clicking a marker, information about the help request appears. There is a button displayed allowing users to volunteer to fulfill the selected need.
      Upon clicking the button to fulfill the need, the requester and the volunteer can communicate within a message flow this way the can organize fulfillment of the need.
      Once 5 separate users have clicked on the fulfillment button and sent messages to the requester, the need is no longer displayed on the site. This prevents people from putting up requests that last forever to which hundreds of people reply!
      What if 1 of the 5 users doesn't actually fulfill the help request, though? If, within 24 hours, the request still hasn't been marked as fulfilled, the requester can republish it. However, if either party marks the request as fulfilled (a status associated with the request that either the requester or volunteer can modify), it cannot be republished.</p>
      </div>
      </div>
      </section>
    );
  }
};
