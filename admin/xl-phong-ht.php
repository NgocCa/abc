
include ("../connect.php");
include ("./controllers/Phong.php");

$phong = new Phong($conn);

$phong->getAllPhong();
$result = $phong->getResults();

mysqli_close($conn);


