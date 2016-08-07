var ThoughtBox = React.createClass({
  propTypes: {
    name: React.PropTypes.string
  },
  render : function () {
    return (
      <div>
        <h1 className='display-1'>ThoughtBox</h1>
        <Filter></Filter>
        <p>Probando {this.props.name}</p>
      </div>
    );
  }
});
