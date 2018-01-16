<!-- footer -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <a href="#"><img src="/catalog/view/theme/sonmax/image/logo.png" alt=""></a>
                </div>
                <div class="col-sm-8">
                    <div class="menu">
                        <?php if ($informations) { ?>
                              
                                <ul class="list-unstyled">
                                  <?php foreach ($categories as $category) { ?>
                                  <?php if ($category['children']) { ?>
                                  <li class="dropdown"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                  </li>
                                  <?php } else { ?>
                                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                  <?php } ?>
                                  <?php } ?>
                                  <?php foreach ($informations as $information) { ?>
                                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                                  <?php } ?>
                                </ul>
                              
                              <?php } ?>
                    </div>
                    <div class="soc_foot">
                        Мы в соцсетях 
                        <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                    </div>
                    <div class="foot_bot">
                        <p><a href="#">Конфиденциальность</a></p>
                        <p>© 2018 Baby Boss. All Rights Reserved.  Designed by Sonmax</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- end footer -->
<script src="catalog/view/javascript/jquery.ba-throttle-debounce.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.bxslider-rahisified.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.fancybox.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/custom.js" type="text/javascript"></script>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>