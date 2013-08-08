<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="portlet" uri="http://java.sun.com/portlet_2_0"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<portlet:defineObjects />

<!-- Armazeno o namespace string em uma p�gina JSP com vari�vel chamada "portletNamespace" -->
<c:set var="portletNamespace">
	<portlet:namespace />
</c:set>


<portlet:resourceURL var="enviaDadosAlunoAjaxURL" id="enviaDadosAlunoAjaxURL" escapeXml="false" />

<%
	String baseURL = renderResponse.encodeURL(renderRequest.getContextPath());
	renderRequest.setAttribute("baseURL", baseURL);
%>

<script type="text/css" src="${baseURL}/resources/css/style.css"></script>
<script type="text/javascript" src="${baseURL}/resources/js/ajaxAlunoForm.js"></script>


<input type="hidden" id="portletContext" value="${portletNamespace}" />
<input type="hidden" id="idURLAluno" value="${enviaDadosAlunoAjaxURL}" />

<!-- Formul�rio do Ajax -->
<div style="float:left; width:25%;">
<form:form commandName="aluno" id="alunoForm" modelAttribute="aluno" method="post" onsubmit="enviarDadosAluno(); return false;">
	<fieldset class="portletSpringMVC-fieldset">
		<legend class="portletSpringMVC-legend">Cadastro do Aluno</legend>
				
				<label class="portletSpringMVC-label" for="nome">Aluno:</label>
				<form:input class="portletSpringMVC-out" id="idAluno" path="nome" placeholder="Aluno" type="text" required="true" maxlength="50" /> 
				
				<p class="portletSpringMVC-p">Jo�o Carlos;</p>
				<label class="portletSpringMVC-label" for="idade">Idade:</label>
				<form:input class="portletSpringMVC-out" id="idIdade" path="idade" placeholder="idade" size="5" type="text" required="true" maxlength="2" />
				<p class="portletSpringMVC-p">&nbsp;</p>
			<form:button class="portletSpringMVC-btnsub" type="submit" id="idSubmit" name="submitAluno">CADASTRAR</form:button>
	</fieldset>
</form:form>		
</div>	

<!-- Resultado do Ajax -->
<div style="float:rigth; width: 75%;">	
	<fieldset class="portletSpringMVC-fieldset" style="width: 320px;">
		<legend class="-legend">Dados do Aluno</legend>
			<label class="portletSpringMVC-label">Aluno: <strong id="nomeAluno"></strong> </label>
			<label class="portletSpringMVC-label">Idade: <strong id="idadeAluno"></strong> </label>
	</fieldset>
<div>