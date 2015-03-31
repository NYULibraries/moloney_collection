//= require jquery
//= require bootstrap-sprockets
//= require ckeditor/init


if ($(window).height() + 100 < $(document).height()) {
  $('#top-link-block').removeClass('hidden').affix({
    offset: {
      top: 100
    }
  });
}



