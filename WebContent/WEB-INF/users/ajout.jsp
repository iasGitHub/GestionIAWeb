<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-4">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Formulaire d'inscription</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Utilisateur" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Nom</label>
	                         		<input class="form-control" type="text" name="nom" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Pr�nom</label>
	                         		<input class="form-control" type="text" name="prenom" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Email</label>
	                         		<input class="form-control" type="email" name="email" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Password</label>
	                         		<input class="form-control" type="password" name="password" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Telephone</label>
	                         		<input class="form-control" type="tel" name="telephone" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Profil</label>
	                         		<input class="form-control" type="text" name="profil" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<input class="btn btn-success" type="submit" name="envoyer" value="Envoyer"/>
	                         		<input class="btn btn-danger" type="reset" name="annuler" value="Annuler"/>
	                         	</div>
	                         </form>
                         </div>
                     </div>
                 </div>
                 <div class="col-md-8">
                   <div class="card ">
                      <div class="card-header ">
                          <h4 class="card-title">Liste des utilisateurs</h4>
                      </div>
                      <div class="card-body ">
                          <table class = "table table-striped table-bordered">
                          	<tr>
                          		<th>Nom</th>
                          		<th>Prenom</th>
                          		<th>Email</th>
                          		<th>Password</th>
                          		<th>Telephone</th>
                          		<th>Profil</th>
                          		<th>Action</th>
                          		<th>Action</th>
                          		<th>Action</th>
                          	</tr>
                          	<c:forEach items="${list_users}" var="c">
                          		<tr>
                          			<td>${c.nom}</td>
                          			<td>${c.prenom}</td>
                          			<td>${c.email}</td>
                          			<td>${c.password}</td>
                          			<td>${c.telephone}</td>
                          			<td>${c.profil}</td>
                          			<td>Editer</td>
                          			<td>Supprimer</td>
                          			<td>Visualiser</td>
                          		</tr>
                          	</c:forEach>
                          </table>
                      </div>
                      <div class="card-footer ">
                           <div class="stats">
                               <i class="fa fa-history"></i>Liste des utilisateurs
                           </div>
                       </div>
                    </div>
                   </div>
             </div>
		</div>
    </div>
<jsp:include page="../../footer.jsp"></jsp:include>