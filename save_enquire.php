
<?php
date_default_timezone_set('Asia/Kolkata');
$current_date = date('Y-m-d');

include('connect.php');

extract($_POST);
   $sql = "INSERT INTO `tbl_enquiry`(`checkin`, `checkout`, `adults`, `childrens`,`telNo`) VALUES ('$checkin', '$checkout', '$adults', '$childrens', '$telNo')";

 if ($conn->query($sql) === TRUE) {
      $_SESSION['success']=' Record Successfully Added';
     ?>
<script type="text/javascript">
window.location="Success_msg.html";
</script>
<?php
} else {
      $_SESSION['error']='Something Went Wrong';
?>
<script type="text/javascript">
window.location="Success_msg.html";
</script>
<?php } ?>