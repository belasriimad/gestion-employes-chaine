<?php 
	if(isset($_POST['id'])){
		$exitEmploye = new EmployesController();
		$exitEmploye->deleteEmploye();
	}
?>