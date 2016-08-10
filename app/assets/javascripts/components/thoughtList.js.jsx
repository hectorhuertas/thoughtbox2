var ThoughtList = React.createClass({
  propTypes: {
    thoughts: React.PropTypes.array.isRequired,
    filterText: React.PropTypes.string.isRequired
  },
  render: function () {
    var rows = [];
    this.props.thoughts.forEach(function (thought, i) {
      var isNotFiltered = this.props.filterText === ''||
        thought.title.includes(this.props.filterText) ||
        thought.description.includes(this.props.filterText);
      if ( isNotFiltered ) {
        rows.push(
         <Thought title={thought.title} description={thought.description}
           quality={thought.quality} key={i}></Thought>
        );
      }
    },this);
    return(
      <ul className='list-group'>
        {rows}
      </ul>
    );
  }
});
