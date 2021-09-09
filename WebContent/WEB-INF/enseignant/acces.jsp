<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
                <div class="col-md-12">
                    <div class="card ">
                        <div class="card-header ">
                             <h4 class="card-title">Connexion</h4>
                        </div>
                        <div class="card-body ">
	                         <form action="Enseignant" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Matricule</label>
	                         		<input class="form-control" type="text" name="matricule" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Email</label>
	                         		<input class="form-control" type="email" name="email" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<input class="btn btn-success" type="submit" name="page" value="connexion"/>
	                         		<input class="btn btn-danger" type="reset" name="annuler" value="Annuler"/>
	                         	</div>
	                         	<div>
	                         		Si vous n' etes pas encore inscrits, clique sur <a href="Inscription">S'incrire</a>
	                         	</div>
	                         </form>
                         </div>
                     </div>
                 </div>
                </div>
             </div>
    </div>
<jsp:include page="../../footer.jsp"></jsp:include>