<?php echo $header; ?>
<div class="bread">
  <div class="container">
    <ul>
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
</div>
    <div class="inside1">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="good_img" style="background-image: url('<?php echo $thumb; ?>');"></div>
                            <div id="menudescr" class="good_inside_links">
                                <a href="#descr">Описание</a>
                                <a href="#benefits">Преимущества</a>
                                <a href="#video">Видео</a>
                                <a href="#feedbacks">Отзывы</a>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="good_name"><?php echo $heading_title; ?></div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="rev_star">
                                        <div class="rating">
                                        <p>
                                          <?php for ($i = 1; $i <= 5; $i++) { ?>
                                          <?php if ($rating < $i) { ?>
                                          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack"></i></span>
                                          <?php } else { ?>
                                          <span class="fa fa-stack"><i class="fa fa-star fa-stack"></i><i class="fa fa-star-o fa-stack"></i></span>
                                          <?php } ?>
                                          <?php } ?>
                                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                                        <!-- AddThis Button END -->
                                      </div>
                                    </div>
                                </div>
                            </div>
                            <div class="good_text_opis">
                                <?php echo $description; ?>
                            </div>
                            <div class="good_item_price_wr">
                                <div class="row">
                                    <div class="col-sm-3"><div class="good_price"><?php echo $price; ?></div></div>
                                    <div class="col-sm-6">
                                        <a href="#" class="butt">Купить сейчас</a>
                                        <div class="add_cart_a">
                                            <div id="product">
            <?php if ($options) { ?>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring; ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id']; ?>"><?php echo $recurring['name']; ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>
    <div class="rev2 rev_inside1" style="background-image: url('/catalog/view/theme/sonmax/image/rev_img_2.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="rev2_text">
                        <p>Понравился товар? </p>
                        <p class="rev2_subtext">Понравился товар? </p>
                        <div class="rev2_share">
                            <a href="#"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="tac">
                        <div class="rev2_img">
                            <img src="catalog/view/theme/sonmax/image/good_deer.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div  id="descr" class="rev2_2">
        <div class="container">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="rev2_2text">
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1">
                            <p>Здоровый и крепкий с Baby Boss

                            Здоровый и крепкий сон малютке дарит продукция знаменитого бренда Baby Boss. В его ассортименте - подгузники для малышей всех возрастов и размеров.

                            Для деток весом 9-16 кг прекрасно подойдет серия Active Baby Maxi Plus 4+. Экономные мамы выбираются увеличенную «джамбо» упаковку на 62 подгузника. Каждый обеспечит кроху сухостью и неповторимым комфортом до 12 часов. Один подгузник убережет малыша от досадных неприятностей на протяжении всей ночи.</p>
                        </div>
                    </div>
                </div>
                <div id="benefits" class="s_title">Преимущества товара</div>
                <div class="s_subtitle">Доступная цена и высокое качество, которое может конкурировать с известными брендами</div>
                <div class="row good_prim_inside">
                    <div class="col-sm-6">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Высокая поглощающая способность абсорбента внутреннего слоя обеспечивает быстрое поглощение влаги, сохраняет сухость и здоровья кожи младенца</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Универсальны. Подходят как для мальчиков, так и для девоче</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Защита от раздражения. Мягкий внутренний слой из нетканого материала по европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="video" class="s_title">Видеоролик</div>
                <div class="s_subtitle">Нежные, мягкие и очень тонкие, удобные и комфортные, не вызывают аллергии и опрелости, быстро и надежно впитывают жидкость и эстетически привлекательные </div>
                <div class="good_vid_inside"></div>
            </div>
        </div>
    </div>
    <div class="rev2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="tac">
                        <div class="rev2_img">
                            <img src="catalog/view/theme/sonmax/image/rev_zebra.png" alt="">
                            <img class="rev2_star" src="catalog/view/theme/sonmax/image/rev_star.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="rev2_text">
                        <p>2000 человек поставили <br> оценку 5/5</p>
                        <div class="row">
                            <div class="col-sm-6 col-sm-offset-3">
                                <a href="#" class="butt">Оставить отзыв</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="feedbacks" class="rev3">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="s_title">Отзывы о товарах Baby Boss</div>
                    <div class="rev_list_wr">
                        <ul class="rev_list">
                            <div id="review"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);
    
    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
    grecaptcha.reset();
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
$(document).ready(function(){
  $("#menudescr").on("click","a", function (event) {
    //отменяем стандартную обработку нажатия по ссылке
    event.preventDefault();

    //забираем идентификатор бока с атрибута href
    var id  = $(this).attr('href'),

    //узнаем высоту от начала страницы до блока на который ссылается якорь
      top = $(id).offset().top;
    
    //анимируем переход на расстояние - top за 1500 мс
    $('body,html').animate({scrollTop: top}, 1500);
  });
});
//--></script>
<?php echo $footer; ?>
