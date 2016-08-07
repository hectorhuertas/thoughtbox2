var ThoughtBox = React.createClass({
  propTypes: {
    thoughts: React.PropTypes.array.isRequired
  },
  getInitialState: () => {
    return { filterText: ''};
  },
  handleUserInput: function (newFilterText) {
    this.setState({filterText: newFilterText});
  },
  render : function () {
    return (
      <div>
        <h1 className='display-1'>ThoughtBox</h1>
        <br></br>
        <ThoughtCreator></ThoughtCreator>
        <br></br><br></br>
        <Filter filterText={this.state.filterText} onUserInput={this.handleUserInput}></Filter>
        <br></br>
        <ThoughtList thoughts={this.props.thoughts} filterText={this.state.filterText}></ThoughtList>
      </div>
    );
  }
});
