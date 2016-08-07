var ThoughtBox = React.createClass({
  propTypes: {
    thoughts: React.PropTypes.array.isRequired
  },
  render : function () {
    return (
      <div>
        <h1 className='display-1'>ThoughtBox</h1>
        <br></br>
        <ThoughtCreator></ThoughtCreator>
        <br></br><br></br>
        <Filter></Filter>
        <br></br>
        <ThoughtList thoughts={this.props.thoughts}></ThoughtList>
      </div>
    );
  }
});
