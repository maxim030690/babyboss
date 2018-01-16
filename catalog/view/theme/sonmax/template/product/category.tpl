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
  <div class="container">
  <div class="row">
    <div id="content">
          <div class="rev1">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="s_title">Товары Baby Boss</div>
                    <div class="s_subtext">Выбирайте, что вам больше подходит, ориентируясь на ваши предпочтения и вес ребенка, ведь все продукты Baby Boss гарантируют высокое качество и заботу о коже вашего малыша. От первых объятий к первым шагам и дальше – вместе с Baby Boss!</div>
                </div>
            </div>
        </div>
        <?php echo $content_top; ?>
    </div>
      <?php if ($products) { ?>
      <div class="row">
            <div class="goods">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="row">
                      <?php foreach ($products as $product) { ?>
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
                        <?php } ?>
                    </div>  
                </div>
            </div>
        </div>
    </div>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
