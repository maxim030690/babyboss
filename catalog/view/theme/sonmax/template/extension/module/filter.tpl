<div class="row">
<div class="rate_box_wr col-sm-10 col-sm-offset-1">
<?php
  $link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
  if($_SERVER['REQUEST_URI'] == '/index.php?route=product/category&path=27'){
    echo '<style>.filters-none{display:none;}</style>';
  }
?>

<div class="top_check">
      <?php if ($categories) { ?>
          <label><input type="radio" name="checkrad"><a href="/index.php?route=product/category&path=20"><span>Все</span></a></label>
        <?php foreach ($categories as $category) {?>
          <label><input type="radio" name="checkrad"><a href="<?php echo $category['href']; ?>"><span><?php echo $category["name"]; ?></span></a></label>
        <?php } ?>
      <?php } ?>
</div>
<div class="list-group filters-none">
    
    <?php $count = 1;
          $type_radio = 'radio';
          $type_checkbox = 'checkbox';
    ?>


    <?php foreach ($filter_groups as $filter_group) { ?>


      <div class="col-sm-6">
      <div class="filter_title"><?php echo $filter_group['name']; ?></div>
      <div class="filter_check filter-down">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">

        <?php foreach ($filter_group['filter'] as $filter) { ?>

        <div class="checkbox" style="display: inline-block;">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <span>
            <?php echo $filter['name']; ?>
            </span>
            <?php } else { ?>
                <input type="<?php echo $type_checkbox; ?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <span>
            <?php echo $filter['name']; ?>
            </span>
            <?php } ?>
          </label>
        </div>

        <?php } ?>
      </div>
    </div>
    </div>
    <?php } ?>
    
    <div class="clarify-search">
      <button type="button" id="button-filter" class=""><?php echo $button_filter; ?></button>
    </div>

    
  </div>

</div>
</div>
<script type="text/javascript">

  $('.top_check a').each(function(){
      if($(this).attr('href') == '<?php echo $link;?>'){
      $(this).parents('label').addClass('active');
    }
  });
  

$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
</script>
