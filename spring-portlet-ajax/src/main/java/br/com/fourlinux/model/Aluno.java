package br.com.fourlinux.model;

public class Aluno {

	private String nome;
	private Integer idade;
	
	public Aluno() {
		super();
	}

	public Aluno(String nome, Integer idade) {
		super();
		this.nome = nome;
		this.idade = idade;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getIdade() {
		return idade;
	}

	public void setIdade(Integer idade) {
		this.idade = idade;
	}
	@Override
	public String toString() {
		return nome+" - "+idade;
	}
}
