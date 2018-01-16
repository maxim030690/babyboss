<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<li>
<div class="row">
  <div class="col-sm-10 col-sm-offset-1">
      <div class="rev_list_top">
          <div class="rev_date"><?php echo $review['date_added']; ?></div>
          <div class="rev_star">
              <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($review['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack"></i><i class="fa fa-star-o fa-stack"></i></span>
                <?php } ?>
                <?php } ?>
          </div>
      </div>
      <div class="rev_list_name"><?php echo $review['author']; ?></div>
      <div class="rev_list_text"><?php echo $review['text']; ?></div>
  </div>
</div>
</li>
<?php } ?>
<div class="text-right"><ul class="pagin"><?php echo $pagination; ?></ul></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>