<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-12">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Ajout d'un etablissement</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Etablissement" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Code</label>
	                         		<input class="form-control" type="text" name="code" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Nom de l'etablissement</label>
	                         		<input class="form-control" type="text" name="nomEtab" required="required"/>
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
             
	   <div class="col-md-12">
		  <div class="card">
			<div class="card-header">
				<h3>Liste des etablissements</h3>
			</div>
			<div class="card-body ">
            <table class = "table table-striped table-bordered">
                <tr>
                   <th>ID</th>
                   <th>Code</th>
                   <th>Nom de l'etablissement</th>
                   <th>Ville</th>
                   <th>Adresse</th>
                   <th>Action</th>
                   <th>Action</th>
                   <th>Action</th>
                </tr>
                <c:forEach items="${liste_etab}" var="c">
                <tr>
                   <td>${c.id}</td>
                   <td>${c.code}</td>
                   <td>${c.nomEtab}</td>
                   <td>${c.ville}</td>
                   <td>${c.adresse}</td>
                   <td><a href="Etalissement?page=editer&id=${c.id}">Editer</a></td>
                   <td><a href="Etalissement?page=supprimer&id=${c.id}">Supprimer</a></td>
                   <td>Visualiser</td>
                </tr>
                </c:forEach>
             </table>
            </div>
			<div class="card-footer">
				
			</div>
		</div>
		
	</div>
<jsp:include page="../../footer.jsp"></jsp:include>