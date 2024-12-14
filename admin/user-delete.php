<?php require_once('header.php'); ?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check if the user exists
	$statement = $pdo->prepare("SELECT * FROM tbl_user WHERE id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	if($total == 0) {
		header('location: logout.php');
		exit;
	}
}

// Delete user from the database
$statement = $pdo->prepare("DELETE FROM tbl_user WHERE id=?");
$statement->execute(array($_REQUEST['id']));

header('location: user.php');
?>
