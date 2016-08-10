var Filter = React.createClass({
  propTypes: {
    filterText: React.PropTypes.string.isRequired,
    onUserInput: React.PropTypes.func.isRequired
  },
  handleChange: function () {
    var newFilterText = this.filterInput.value;
    this.props.onUserInput(newFilterText);
  },
  render: function () {
    return (
      <input id="filterInput" type="text_field" name="filterInput" ref={(ref) => this.filterInput = ref}
        className="form-control" placeholder="Enter filter term..."
        value={this.props.filterText} onChange={this.handleChange}>
      </input>
    );
  }
});
