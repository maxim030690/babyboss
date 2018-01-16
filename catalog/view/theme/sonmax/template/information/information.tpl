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
<?php

switch ($inf_id) {
case 3:
    include('where_to_buy.tpl');
    break;
case 4:
	include('feedbacks.tpl');
    break;
case 5:
    include('sale.tpl');
    break;
case 6:
    include('about.tpl');
    break;
}

echo $footer; ?>