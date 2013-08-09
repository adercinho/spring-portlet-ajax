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


<style type="text/css" >
.portletSpringAjax-p
{
	margin:0px;
}

.portletSpringAjax-label 
{
	display:block;
	font:12px verdana; 
	color:#666;	
	margin:2px;	
	margin-top:10px;
	cursor:pointer;
}

.portletSpringAjax-fieldset
{
	width:250px;
	padding:15px;
}

.portletSpringAjax-legend
{
   	width:70%;
	background-color:#dde;
	border:0px solid #dcdcdc;
	padding:5px;
	margin:0px;
	font:14px 'Trebuchet MS'; 
	color:#666;		
	text-align:center;
}

.portletSpringAjax-out
{
	border:1px solid #dcdcdc;
	padding:2px;
	font:12px verdana; 
	color:#666;	
}

.portletSpringAjax-btnsub
{
	border:2px solid #dcdcdc;
	padding:0px;
	width:80px;
	height: 30px;
	font:12px verdana; 
	color:#333;	
}
</style>
<script type="text/javascript" src="${baseURL}/resources/js/ajaxAlunoForm.js"></script>


<input type="hidden" id="portletContext" value="${portletNamespace}" />
<input type="hidden" id="idURLAluno" value="${enviaDadosAlunoAjaxURL}" />

<!-- Formul�rio do Ajax -->

<form:form commandName="aluno" id="alunoForm" modelAttribute="aluno" method="post" onsubmit="enviarDadosAluno(); return false;">
	<fieldset class="portletSpringAjax-fieldset">
		<legend class="portletSpringAjax-legend">Cadastro do Aluno</legend>
				
				<label class="portletSpringAjax-label" for="nome">Aluno:</label>
				<form:input class="portletSpringAjax-out" id="idAluno" path="nome" placeholder="Aluno" type="text" required="true" maxlength="50" /> 
				
				<label class="portletSpringAjax-label" for="idade">Idade:</label>
				<form:input class="portletSpringAjax-out" id="idIdade" path="idade" placeholder="idade" size="5" type="text" required="true" maxlength="2" />
				<p class="portletSpringAjax-p">&nbsp;</p>
			<form:button type="submit" class="portletSpringAjax-btnsub" id="idSubmit" name="submitAluno">Ajax</form:button>
	</fieldset>
</form:form>

<!-- Resultado do Ajax -->

	<fieldset class="portletSpringAjax-fieldset" style="width: 320px;">
		<legend class="-legend">Dados do Aluno</legend>
			<label class="portletSpringAjax-label">Aluno: <strong id="nomeAluno"></strong> </label>
			<label class="portletSpringAjax-label">Idade: <strong id="idadeAluno"></strong> </label>
	</fieldset>
