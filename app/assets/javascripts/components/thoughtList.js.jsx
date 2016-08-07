var ThoughtList = React.createClass({
  render: function () {
    var thoughts = JSON.parse(this.props.thoughts);
    var rows = [];
    thoughts.forEach(function (thought, i) {
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
