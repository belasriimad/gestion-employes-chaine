<?php 

class EmployesController{

	public function getAllEmployes(){
		$employes = Employe::getAll();
		return $employes;
	}

	public function getOneEmploye(){
		if(isset($_POST['id'])){
			$data = array(
				'id' => $_POST['id']
			);
			$employe = Employe::getEmploye($data);
			return $employe;
		}
	}
	public function findEmployes(){
		if(isset($_POST['search'])){
			$data = array('search' => $_POST['search']);
		}
		$employes = Employe::searchEmploye($data);
		return $employes;
	} 

	public function addEmploye(){
		if(isset($_POST['submit'])){
			$data = array(
				'nom' => $_POST['nom'],
				'prenom' => $_POST['prenom'],
				'matricule' => $_POST['mat'],
				'depart' => $_POST['depart'],
				'poste' => $_POST['poste'],
				'date_emb' => $_POST['date_emb'],
				'statut' => $_POST['statut'],
			);
			$result = Employe::add($data);
			if($result === 'ok'){
				Session::set('success','Employé Ajouté');
				Redirect::to('home');
			}else{
				echo $result;
			}
		}
	}

	public function updateEmploye(){
		if(isset($_POST['submit'])){
			$data = array(
				'id' => $_POST['id'],
				'nom' => $_POST['nom'],
				'prenom' => $_POST['prenom'],
				'matricule' => $_POST['mat'],
				'depart' => $_POST['depart'],
				'poste' => $_POST['poste'],
				'date_emb' => $_POST['date_emb'],
				'statut' => $_POST['statut'],
			);
			$result = Employe::update($data);
			if($result === 'ok'){
				Session::set('success','Employé Modifié');
				Redirect::to('home');
			}else{
				echo $result;
			}
		}
	}
	public function deleteEmploye(){
		if(isset($_POST['id'])){
			$data['id'] = $_POST['id'];
			$result = Employe::delete($data);
			if($result === 'ok'){
				Session::set('success','Employé Supprimé');
				Redirect::to('home');
			}else{
				echo $result;
			}
		}
	}

}



?>