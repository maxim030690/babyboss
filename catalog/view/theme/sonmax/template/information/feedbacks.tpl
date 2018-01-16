<div class="rev1">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="s_title">Отзывы о товарах Baby Boss</div>
                    <div class="s_subtext">Все покупатели могут выразить свое мнение о продукте, оставить комментарии. Компания Baby Boss не подтверждает и не гарантирует точность оставленных здесь отзывов или претензий к продукции, а также не подтверждает сведения, оставленных в данном разделе</div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="rate_box_wr">
                      <!-- Nav tabs -->
                      <ul class="top_tab_rate" role="tablist">
                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">Все</a></li>
                        <li role="presentation"><a href="#pamp" aria-controls="pamp" role="tab" data-toggle="tab">Подгузники</a></li>
                        <li role="presentation"><a href="#tish" aria-controls="tish" role="tab" data-toggle="tab">Влажные салфетки</a></li>
                        <li role="presentation"><a href="#pelen" aria-controls="pelen" role="tab" data-toggle="tab">Пеленки</a></li>
                      </ul>
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="all">
                            <div class="row rate_row">
                                <div class="col-sm-5">Удобно сидят</div>
                                <div class="col-sm-7">
                                    <div class="rate_line"><div class="rate_points" style="width: 100%;"><div class="rate_circ">5</div></div></div>
                                </div>
                            </div>
                            <div class="row rate_row">
                                <div class="col-sm-5">Отлично впитывают</div>
                                <div class="col-sm-7">
                                    <div class="rate_line"><div class="rate_points" style="width: 75%;"><div class="rate_circ">4</div></div></div>
                                </div>
                            </div>
                            <div class="row rate_row">
                                <div class="col-sm-5">Защищают кожу малыша</div>
                                <div class="col-sm-7">
                                    <div class="rate_line"><div class="rate_points" style="width: 50%;"><div class="rate_circ">3</div></div></div>
                                </div>
                            </div>
                            <div class="row rate_row">
                                <div class="col-sm-5">Мягкие</div>
                                <div class="col-sm-7">
                                    <div class="rate_line"><div class="rate_points" style="width: 25%;"><div class="rate_circ">2</div></div></div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane" id="pamp">...</div>
                        <div role="tabpanel" class="tab-pane" id="tish">...</div>
                        <div role="tabpanel" class="tab-pane" id="pelen">...</div>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="rev2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="tac">
                        <div class="rev2_img">
                            <img src="/catalog/view/theme/sonmax/image/rev_zebra.png" alt="">
                            <img class="rev2_star" src="/catalog/view/theme/sonmax/image/rev_star.png" alt="">
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
                    <div class="rev_list_wr">
                        <ul class="rev_list">
                            <div id="review_feedback"></div>
                        </ul>
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
</script>