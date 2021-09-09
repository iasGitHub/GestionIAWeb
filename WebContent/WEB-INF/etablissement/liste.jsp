<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-4">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Formulaire de mis-à-jour d'un etablisement</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Etablissement" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Id</label>
	                         		<input class="form-control" type="text" name="id" value="${etabli.id}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Code</label>
	                         		<input class="form-control" type="text" name="code" value="${etabli.code}"required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Nom de l'étalissement</label>
	                         		<input class="form-control" type="text" name="nomEtab" value="${etabli.nomEtab}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Ville</label>
	                         		<input class="form-control" type="text" name="ville" value="${etabli.ville}" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Adresse</label>
	                         		<input class="form-control" type="text" name="adresse" value="${etabli.adresse}" required="required"/>
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