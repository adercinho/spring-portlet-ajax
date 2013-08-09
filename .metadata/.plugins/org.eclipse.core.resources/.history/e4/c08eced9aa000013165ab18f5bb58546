
function enviarDadosAluno() {
	var jNoConflict = jQuery.noConflict(); 
	
	var alunoAjaxURL = document.getElementById("idURLAluno").value;
	var values = jNoConflict("#alunoForm").serialize();	
	
	jNoConflict.ajax({
		type : 'GET',
		url : alunoAjaxURL,
		data : values,
		success: function(data){
			document.getElementById("nomeAluno").innerHTML = data;
			document.getElementById("idadeAluno").innerHTML = data;
		},
		errors: function(erro){
			alert(erro);
		},
		dataType : "text"
	});
}