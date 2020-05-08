$(document).on('turbolinks:load', function(){
  $('.product_search__list--item').on('click', '.favorite_box_registration_btn', function(e){
    e.preventDefault();
    let registration = $(this).data('registration-id');
    let add_tag = $(this);
    let heart_add_tag = $(this).children('.registration_count');
    $.ajax({
      url: `/products/${registration}/favorites`,
      type: 'POST',
      dataType: 'json'
    })
    .done(function(){
      add_tag.css('color', 'red');
      add_count = parseInt( heart_add_tag.text() );
      add_count += 1;
      $(heart_add_tag).text(add_count);
      $(add_tag).removeClass('favorite_box_registration_btn');
      $(heart_add_tag).removeClass('registration_count');
      $(add_tag).addClass('favorite_box_release_btn');
      $(heart_add_tag).addClass('release_count');
      $(add_tag).removeAttr("data-registration-id");
      $(add_tag).attr("data-release-id", registration);
    })
    .fail(function(){
      alert('エラーが発生しました');
    })
  })
});