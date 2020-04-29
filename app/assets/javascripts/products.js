$(document).on('turbolinks:load', function() {
  const buildFileField = (num)=> {
    const html = `<label data-index="${num}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="product[images_attributes][${num}][src]"
                    id="product_images_attributes_${num}_src"><br>
                    <div class="js post" data-index="${num}">投稿</div>
                    <div class="js remove" data-index="${num}">削除</div>
                  </label>`;
    return html;
  }

  const buildImg = (index, url)=> {
    const html = `<img data-index="${index}" src="${url}" width="96px" height="100px" class="js-file_image">`;
    return html;
  }
  
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  lastIndex = $('.js-file_group:last').data('index');
  fileIndex.splice(0, lastIndex);
  
  $('.hidden-destroy').hide();

  $(document)
    .on('mouseover', '.js.remove', function(){
      $('.js-file').prop('disabled', true);
    })
    .on('mouseout', '.js.remove', function(){
    $('.js-file').prop('disabled', false); 
  });

  $('#image-box').on('change', '.js-file', function(e) {
    const targetIndex = $(this).parent().data('index');
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);

    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('src', blobUrl);
    } else {
      $('#previews').append(buildImg(targetIndex, blobUrl));
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }

    $('#previews').css({
      'display':'flex'
    });
    $('img.js-file_image').css({
      'margin':'12px'
    })
  });

  $('#image-box').on('click', '.js.remove', function() {
    const targetIndex = $(this).parent().data('index');
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    if (hiddenCheck) hiddenCheck.prop('checked', true);

    $(this).parent().remove();
    $(`img[data-index="${targetIndex}"]`).remove();

    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
});