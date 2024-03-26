<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php require('inc/links.php') ?>
    <title><?php echo $settings_r['site_title'] ?> - BOOKING STATUS</title>
</head>

<body class="bg-light">
  
  <!-- header -->
  <?php require('inc/header.php') ?>

  <!-- top name -->
  
  <div class="container">
    <div class="row">

      <div class=" col-12 my-5 mb-3 px-4">
        <h2 class="fw-bold">PAYMENT STATUS</h2>
      </div>

      <div class="col-12 px-4">
        <p class="fw-bold alert alert-success">
        <i class="bi bi-check-circle-fill"></i>
        Booking Successful!!
        <br><br>
        <a href='bookings.php'>Go To Bookings</a>
        </p>
      </div>
  </div>
  <!-- footer -->
  <?php require('inc/footer.php') ?>

</body>
</html>