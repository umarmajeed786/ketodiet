<section class="card">
    <header class="card-header">
        <div class="card-actions" style="top: 5px;"> </div>
        <header class="panel-heading" style="font-weight: bold;font-size:16px;">
            Hello <?= ucfirst(user_name()); ?>, Welcome to the user section of <?= SITE_NAME; ?>.
        </header>
    </header>
    <div class="card-body " style="background: #F6F6F6;">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-primary">
                        <div class="card-body">
                            <div class="text-value">Rs.<?= $totalEarning; ?></div>
                            <div>Total Earning</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="card text-white bg-info">
                        <div class="card-body">
                            <button class="btn btn-transparent p-0 float-right" type="button">
                            <i class="icon-location-pin"></i>
                            </button>
                            <div class="text-value"><?= $totalMember; ?></div>
                            <div>Total Member</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>