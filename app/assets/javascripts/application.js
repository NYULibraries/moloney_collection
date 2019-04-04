//= require jquery
//= require bootstrap-sprockets
//= require turbolinks


if ($(window).height() + 100 < $(document).height()) {
  $('#top-link-block').removeClass('hidden').affix({
    offset: {
      top: 100
    }
  });
}



