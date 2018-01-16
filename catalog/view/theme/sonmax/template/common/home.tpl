<?php echo $header; ?>
<!-- section -->
<?php
    $home_url = $_SERVER['SERVER_NAME'];
?>
    <div class="index_slider">
        <ul class="index__slider" data-call="bxslider" data-options="slideMargin:0, auto: true, pager: false, nextText: '>', prevText: '<', controls: true, nextSelector: 'div.about_cat__slide_next1', prevSelector: 'div.about_cat__slide_prev1', infiniteLoop: true">
            <li>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-7">
                            <img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1.png" alt="">
                        </div>
                        <div class="col-sm-4 text_box">
                            <div class="index_slide_title"><b>Качество</b> выше цены</div>
                            <div class="index_slide_subtitle">Подгузники <b>Baby Boss</b></div>
                            <div class="about_cat__pager">
                                <div class="about_cat__slide_prev1"></div>
                                <div class="about_cat__slide_next1"></div>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="tac"><img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1_1.png" alt=""></div>  
            </li>
            <li>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-7">
                            <img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1.png" alt="">
                        </div>
                        <div class="col-sm-4 text_box">
                            <div class="index_slide_title"><b>Качество</b> выше цены</div>
                            <div class="index_slide_subtitle">Вл. салфетки <b>Baby Boss</b></div>
                            <div class="about_cat__pager">
                                <div class="about_cat__slide_prev1"></div>
                                <div class="about_cat__slide_next1"></div>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="tac"><img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1_1.png" alt=""></div>  
            </li>
            <li>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-7">
                            <img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1.png" alt="">
                        </div>
                        <div class="col-sm-4 text_box">
                            <div class="index_slide_title"><b>Качество</b> выше цены</div>
                            <div class="index_slide_subtitle">Пеленки <b>Baby Boss</b></div>
                            <div class="about_cat__pager">
                                <div class="about_cat__slide_prev1"></div>
                                <div class="about_cat__slide_next1"></div>
                            </div>
                        </div>
                    </div>
                </div> 
                <div class="tac"><img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/slide1_1.png" alt=""></div>  
            </li>
        </ul>
    </div>
    <div class="rev2_2 about_box index_cat">
        <div class="container">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="s_title">Почему Baby Boss?</div>
                <div class="s_subtitle">Все покупатели могут выразить свое мнение о продукте, оставить комментарии. Компания Baby Boss не подтверждает и не гарантирует точность оставленных здесь отзывов или претензий к продукции, а также не подтверждает сведения, оставленных в данном разделе</div>
                <div class="index_why_box">
                    <div class="row">
                        <div class="col-sm-7">
                            <div class="index_why_box_title"><b>Акция!</b> Получте подгузники <br> Baby Boss бесплатно!</div>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <a href="#" class="butt green">Получить подарок</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="tac"><img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/index_why_box_img.png" alt=""></div>
                            <p>Оформите заявку <br> Подпишитель на нашу станицу в Facebook <br> Получите 4 подгузника</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="about_cat">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="row">
                        <div class="col-sm-6">
                            <ul class="about_cat__slider" data-call="bxslider" data-options="slideMargin:0, auto: true, pager: false, nextText: '>', prevText: '<', controls: true, nextSelector: 'div.about_cat__slide_next', prevSelector: 'div.about_cat__slide_prev', infiniteLoop: true">
                            <?php $count = 1; ?>
                            <?php foreach ($products as $product) { ?>
                            <?php if($count <= 5){ ?>
                            <div class="product-layout product-list col-xs-6">
                                <div class="good_list_item">
                                    <div class="good_img" style="background-image: url('<?php echo $product['thumb']; ?>');"></div>
                                    <div class="good_name">
                                        <div class="row">
                                            <div class="col-sm-10 col-sm-offset-1">
                                              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>    
                                            </div>
                                        </div>
                                    </div>
                                    <div class="good_info">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="rev_star">
                                                  <div class="rating">
                                                    <p>
                                                      <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                      <?php if ($product["rating"] < $i) { ?>
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
                                            <div class="col-sm-6">
                                                <div class="good_price"><?php if ($product['price']) { ?>
                                                  <?php echo $product['price']; ?>
                                                <?php } ?></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a class="butt" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">В корзину</a>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="<?php echo $product['href']; ?>" class="butt">Подробнее</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <?php $count++; } ?>
                            <?php } ?>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <div class="about_cat__title">Каталог товаров</div>
                            <div class="about_cat__subtitle">Доступная цена и высокое качество</div>
                            <div class="about_cat__text">Нежные, мягкие и очень тонкие, удобные и комфортные, не вызывают аллергии и опрелости, быстро и надежно впитывают жидкость и эстетически привлекательные </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="about_cat__pager">
                                        <div class="about_cat__slide_prev"></div>
                                        <div class="about_cat__slide_next"></div>
                                    </div>
                                </div>
                                <div class="col-sm-7">
                                    <a href="/index.php?route=product/category&path=20" class="butt">все товары</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="container">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="s_title">Преимущества товара</div>
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
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Эстетически привлекательные </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s_title">Видеоролик</div>
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
                            <img src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/rev_zebra.png" alt="">
                            <img class="rev2_star" src="http://<?php echo $home_url; ?>/catalog/view/theme/sonmax/image/rev_star.png" alt="">
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
    <div class="rev3">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="s_title">Отзывы о товарах Baby Boss</div>
                    <div class="rev_list_wr">
                        <ul class="rev_list">
                            <div id="review_feedback" class="home-feedbacks"></div>
                        </ul>
                    </div>
                    <div class="row">
                        <div class="col-sm-4 col-sm-offset-4">
                            <a href="/index.php?route=information/information&information_id=4" class="butt green">Все отзывы</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
$('#review_feedback').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review_feedback').fadeOut('slow');

    $('#review_feedback').load(this.href);

    $('#review_feedback').fadeIn('slow');
});

$('#review_feedback').load('index.php?route=common/home/feedbacks');

$('#button-review').on('click', function() {
    $.ajax({
        url: 'index.php?route=product/product/write&product_id=42',
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
</script>
<!-- end section -->
<?php echo $footer; ?>