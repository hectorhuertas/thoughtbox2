var Thought = React.createClass({
  propTypes: {
    title: React.PropTypes.string.isRequired,
    description: React.PropTypes.string.isRequired,
    quality: React.PropTypes.number.isRequired,
  },
  render: function () {
    return(
      <li className="list-group-item">
        <span className="pull-xs-right tag tag-primary">{this.props.quality}</span>
        <h5 className="thought-title list-group-item-heading">{this.props.title}</h5>
        <p className="thought-description list-group-item-text">{ this.props.description }</p>
        <a href="/thoughts/4/edit">Edit Thought</a>
        <br></br>
        <a rel="nofollow" data-method="delete" href="/thoughts/4">Delete Thought</a>
      </li>
    );
  }
});
