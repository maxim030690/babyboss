<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/sonmax/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/sonmax/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/sonmax/stylesheet/animate.css" rel="stylesheet">
<link href="catalog/view/theme/sonmax/stylesheet/font-awesome.min.css" rel="stylesheet">
<link href="catalog/view/theme/sonmax/stylesheet/jquery.bxslider.css" rel="stylesheet">
<link href="catalog/view/theme/sonmax/stylesheet/jquery.fancybox.min.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link href="catalog/view/theme/sonmax/stylesheet/style-sonmax.css" rel="stylesheet">
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">


<div class="main_wr">

<!-- header -->
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="table">
                        <div class="table_cell">
                            <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt=""></a>    
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="table">
                        <div class="table_cell">
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

                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="tar">
                        <div class="table">
                            <div class="table_cell">
                                <!-- <div class="dib cart"> -->
                                     <?php echo $cart; ?>
                                <!-- </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- end header -->
