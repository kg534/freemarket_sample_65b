$(document).on('turbolinks:load', function(){
  $('.product_search__list--item').on('click', '.favorite_box_release_btn', function(e){
    e.preventDefault();
    let release = $(this).data('release-id');
    let substract_tag = $(this);
    let heart_substract_tag = $(this).children('.release_count');
    $.ajax({
      url: `/products/${release}/favorites`,
      type: 'DELETE',
      dataType: 'json'
    })
    .done(function(){
      substract_tag.css('color', '#999999');
      substract_count = parseInt( heart_substract_tag.text() );
      substract_count -= 1;
      $(heart_substract_tag).text(substract_count);
      $(substract_tag).removeClass('favorite_box_release_btn');
      $(heart_substract_tag).removeClass('release_count');
      $(substract_tag).addClass('favorite_box_registration_btn');
      $(heart_substract_tag).addClass('registration_count');
      $(substract_tag).removeAttr("data-release-id");
      $(substract_tag).attr("data-registration-id", release);
    })
    .fail(function(){
      alert('エラーが発生しました');
    })
  })
});

