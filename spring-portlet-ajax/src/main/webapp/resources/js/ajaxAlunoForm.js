
function enviarDadosAluno() {
	var jNoConflict = jQuery.noConflict(); 
	var alunoAjaxURL = document.getElementById("idEnviaDadosAlunoAjaxURL").value;
	var values = jNoConflict("#alunoForm").serialize();
	
	jNoConflict.ajax({
		type : 'GET',
		url : alunoAjaxURL,
		data : values,
		success: function(data){
			var dados = data.split('-');
			// atribui os valores vindos do server para o html
			document.getElementById("nomeAluno").innerHTML = jNoConflict.trim(dados[0]);
			document.getElementById("idadeAluno").innerHTML = jNoConflict.trim(dados[1]);
		},
		errors: function(erro){
			alert(erro);
		},
		dataType : "text"
	});
}