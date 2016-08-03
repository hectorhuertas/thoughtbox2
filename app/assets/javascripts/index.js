$(document).ready(function () {
  $('#filter').on('change keyup paste', filter);
  // $('#filter').on('change keyup paste', function (e) {
  //   console.log(e.target.value);
  // });
});

function filter(e) {
  var term = e.target.value;
  $.each($('li'), function (_,elem) {
    var title = $(elem).find('.thought-title').text();
    var description = $(elem).find('.thought-description').text();
    var contents = title + ' ' + description;
    if (contents.includes(term)) {
      $(elem).show();
    } else {
      $(elem).hide();
    }
  });
}
