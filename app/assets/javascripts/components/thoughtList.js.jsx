var ThoughtList = React.createClass({
  propTypes: {
    thoughts: React.PropTypes.array.isRequired
  },
  render: function () {
    var rows = [];
    this.props.thoughts.forEach(function (thought, i) {
      rows.push(
        <Thought title={thought.title} description={thought.description}
          quality={thought.quality} key={i}></Thought>
      );
    });
    return(
      <ul className='list-group'>
        {rows}
      </ul>
    );
  }
});
