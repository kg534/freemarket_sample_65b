//トップページ
var navi_category = ".header-inner__navi__lists-left__category";
$(document).on('turbolinks:load', (function(){
//カテゴリ表示
  $(navi_category).hover(function(){
    $(navi_category + '__tree').show(),
    $(navi_category + '>a').css('color','#ffb340');
  },function(){
    $(navi_category + '__tree').hide(),
    $(navi_category + '>a').css('color','#333');
    $(navi_category + '__tree__child__item__select').remove();
    $(navi_category + '__tree__grandchild__item__select').remove();
  });
//子カテゴリーを追加
  function buildChildHTML(child){
    var html =`<a class="header-inner__navi__lists-left__category__tree__child__item__select" id="${child.id}"
                href="/categories/${child.id}">${child.name}</a>`;
    return html;
  }
  $(navi_category + "__tree__parent__item__select").hover(function(){
    var id = this.id
    $(this).css('color','#ffb340');
    $(navi_category + '__tree__child__item__select').remove();
    $(navi_category + '__tree__grandchild__item__select').remove();
    $.ajax({
      type: 'GET',
      url: '/categories/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children){
      children.forEach(function(child){
        var html = buildChildHTML(child);
        $(navi_category + "__tree__child__item").append(html);
      })
    });
  },function(){
    $(this).css('color','#333');
  });

//孫カテゴリーを追加
  function buildGrandChildHTML(child){
    var html = `<a class="header-inner__navi__lists-left__category__tree__grandchild__item__select" id="${child.id}"
                href="/categories/${child.id}">${child.name}</a>`;
    return html;
  }

$(document).on({
  "mouseenter": function(){
    var id = this.id
    $(navi_category + '__tree__grandchild__item__select').remove();
    $(this).css('color','#ffb340');
    $.ajax({
      type: 'GET',
      url: '/categories/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children){
      children.forEach(function(child){
        var html = buildGrandChildHTML(child);
        $(navi_category + "__tree__grandchild__item").append(html);
      })
    });
  },"mouseleave": function(){
    $(this).css('color','#333');
    }
  },navi_category + "__tree__child__item__select");

  //孫カテゴリーカラー
  $(document).on({
  "mouseenter": function(){
    var id = this.id
    $(this).css('color','#ffb340');
  },"mouseleave": function(){
    $(this).css('color','#333');
    }
  },navi_category + "__tree__grandchild__item__select");
}));

//商品出品ページ
$(document).on('turbolinks:load', (function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(category){
    var html = `<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
    return html
  }
  //子カテゴリの表示作成
  function appendChildBox(insertHTML){
    var childSelectHtml = '';
    childSelectHtml = `<select class='product--main__container__details__category__child__select' id="product_child_category_id" name="">
                          <option value="---" data-category="---">---</option>
                          ${insertHTML}
                      </select>`;
    $('.product--main__container__details__category__child').append(childSelectHtml);
  }
  // 孫カテゴリーの表示作成
  function appendGrandChildBox(insertHTML){
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `<select class='product--main__container__details__category__grandchild__select' id="product_grandchild_category_id" name="product[category_id]">
                              <option value="---" data-category="---">---</option>
                              ${insertHTML}
                            </select>`;
$   ('.product--main__container__details__category__grandchild').append(grandchildSelectHtml);
  }
  //親カテゴリー選択後のイベント
  $('#product_parent_category_id').on('change', function(){
    var parentCategory = document.getElementById('product_parent_category_id').value;
    if(parentCategory != "---"){
      $.ajax({
        url: 'get_category_child',
        type: 'GET',
        data: { parent_name: parentCategory },
        dataType: 'json'
      })
      .done(function(children){
        $('#product_child_category_id').remove();
        $('#product_grandchild_category_id').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChildBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#product_child_category_id').remove();
      $('#product_grandchild_category_id').remove();
    }
  });
// 子カテゴリー選択後のイベント
  $(document).on('change', '#product_child_category_id',function(){
    var childId = $('#product_child_category_id option:selected').data('category');
    console.log(childId)
    if(childId != "---"){
      $.ajax({
        url: 'get_category_grandchild',
        type: 'GET',
        data: { child_id: childId },
        dataType: 'json'
      })
      .done(function(grandchild){
        if (grandchild.length != 0) {
        $('#product_grandchild_category_id').remove();
        var insertHTML = '';
        grandchild.forEach(function(grandchild){
          insertHTML += appendOption(grandchild);
        });
        appendGrandChildBox(insertHTML);
       }
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#product_child_category_id').remove();
      $('#product_grandchild_category_id').remove();
    }
  });
}));