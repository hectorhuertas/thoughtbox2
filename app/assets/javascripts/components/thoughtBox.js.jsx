var ThoughtBox = React.createClass({
  propTypes: {
    name: React.PropTypes.string
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
        <ThoughtList thoughts={this.props.name}></ThoughtList>
        {/*<ThoughtList thoughts={[JSON.parse(this.props.name)]}></ThoughtList>*/}
      </div>
    );
  }
});
