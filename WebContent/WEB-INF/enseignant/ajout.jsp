<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-12">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Formulaire d'enregistrement des enseignants</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Enseignant" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Nom</label>
	                         		<input class="form-control" type="text" name="nom" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Prénom</label>
	                         		<input class="form-control" type="text" name="prenom" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Email</label>
	                         		<input class="form-control" type="email" name="email" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Matricule</label>
	                         		<input class="form-control" type="text" name="matricule" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Ville</label>
	                         		<input class="form-control" type="text" name="ville" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Adresse</label>
	                         		<input class="form-control" type="text" name="adresse" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Téléphone</label>
	                         		<input class="form-control" type="text" name="telephone" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<input class="btn btn-success" type="submit" name="page" value="Ajouter"/>
	                         		<input class="btn btn-danger" type="reset" name="annuler" value="Annuler"/>
	                         	</div>
	                         </form>
                         </div>
                     </div>
                 </div>
                </div>
             </div>
    </div>
<jsp:include page="../../footer.jsp"></jsp:include>