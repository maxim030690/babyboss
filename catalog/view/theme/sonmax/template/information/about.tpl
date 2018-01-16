    <div class="rev2_2 about_box">
        <div class="container">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="s_title">Почему Baby Boss?</div>
                <div class="s_subtitle">Все покупатели могут выразить свое мнение о продукте, оставить комментарии. Компания Baby Boss не подтверждает и не гарантирует точность оставленных здесь отзывов или претензий к продукции, а также не подтверждает сведения, оставленных в данном разделе</div>
                <div class="row good_prim_inside">
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Высокое качество - низкая цена</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Экологический материалпо европейским стандартам</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Все товары протестированы и сертифицированы</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="posa">
                            <div class="table">
                                <div class="table_cell">
                                    <p>Не имеют аналогов</p>
                                </div>
                            </div>
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
                <div class="s_title">О нас</div>
                <div class="rev2_2text">
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1">
<p>Компания Baby Boss одyf из крупнейших мировых производителей средств личной гигиены, существует более 10 лет. С самого начала компания сделала ставку на разработку инновационных продуктов, отвечающих самым смелым ожиданиям потребителей. Компания Baby Boss одyf из крупнейших мировых производителей средств личной гигиены, существует более 10 лет.</p>
<p>С самого начала компания сделала ставку на разработку инновационных продуктов, отвечающих самым смелым ожиданиям потребителей.  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>