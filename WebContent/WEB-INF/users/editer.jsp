<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-4">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Formulaire de mis-à-jour d'un utilisateur</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Utilisateur" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Id</label>
	                         		<input class="form-control" type="text" name="id" value="${users.id}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Nom</label>
	                         		<input class="form-control" type="text" name="nom" value="${users.nom}"required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Prénom</label>
	                         		<input class="form-control" type="text" name="prenom" value="${users.prenom}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Email</label>
	                         		<input class="form-control" type="email" name="email" value="${users.email}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Password</label>
	                         		<input class="form-control" type="password" name="password" value="${users.password}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Telephone</label>
	                         		<input class="form-control" type="text" name="telephone" value="${users.telephone}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Profil</label>
	                         		<input class="form-control" type="text" name="profil" value="${users.profil}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<input class="btn btn-success" type="submit" name="page" value="modifier"/>
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