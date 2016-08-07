var Thought = React.createClass({
  render: function () {
    return(
      <li className="list-group-item">
        <span className="pull-xs-right tag tag-primary">0</span>
        <h5 className="thought-title list-group-item-heading">{this.props.title}</h5>
        <p className="thought-description list-group-item-text">{ this.props.description }</p>
        <a href="/thoughts/4/edit">Edit Thought</a>
        <br></br>
        <a rel="nofollow" data-method="delete" href="/thoughts/4">Delete Thought</a>
      </li>
    );
  }
});
