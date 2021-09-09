<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../../header.jsp"></jsp:include>
	<section id="main-content">
      <section class="wrapper">
        <div class="row mt">
          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Formulaire de saisi des informations de l'eleve</h4>
            <div id="message"></div>
            <form action="Eleve" method ="post">
	                         	<div class="form-group">
	                         		<label class="control-label">Nom</label>
	                         		<input class="form-control" type="text" name="nom" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Prenom</label>
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
	                         		<label class="control-label">Date de naissance</label>
	                         		<input class="form-control" type="date" name="date_naiss" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Adresse</label>
	                         		<input class="form-control" type="text" name="adresse" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Telephone</label>
	                         		<input class="form-control" type="tel" name="telephone" required="required"/>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Etablissement d'origine</label>
	                         		<select class="form-control" name="categorie">
	                         			<option value="0"> Faites votre choix</option>
	                         			<c:forEach items="${liste_etab}" var="c">
	                         				<option value="${c.nomEtab}"></option>
	                         			</c:forEach>
	                         		</select>
	                         	</div>
	                         	<div class="form-group">
	                         		<label class="control-label">Examen</label>
	                         		<select class="form-control" name="categorie">
	                         			<option value="0"> Faites votre choix</option>
	                         			<c:forEach items="${liste_exam}" var="c">
	                         				<option value="${c.intitule}"> </option>
	                         			</c:forEach>
	                         		</select>
	                         	</div>
	                         	<div class="form-group">
	                         		<input class="btn btn-success" type="submit" name="page" value="ajouter"/>
	                         		<input class="btn btn-danger" type="reset" name="annuler" value="Annuler"/>
	                         	</div>
	                         </form>
          </div>

          <div class="col-lg-6 col-md-6 col-sm-6">
            <h4 class="title">Details examen</h4>
            <p>Les eleves doivent obligatoirement remplir un dossier d'inscription numerote avant le
				31 decembre de l'annee scolaire en cours. Ce dossier comprend le nom, la date de naissance,
				l’etablissement de l’eleve et le nom de l'examen. Un etablissement est defini par son code, son
				nom, son adresse et la ville.</p>
            <ul class="contact_details">
              <li><i class="fa fa-envelope-o"></i> infoia@gmail.com</li>
              <li><i class="fa fa-phone-square"></i> +221 77 656 35 55</li>
              <li><i class="fa fa-home"></i> Some Fine Address, 887, Dakar, Senegal.</li>
            </ul>
            <!-- contact_details -->
          </div>
        </div>
        <!-- /row -->


        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
<jsp:include page="../../footer.jsp"></jsp:include>