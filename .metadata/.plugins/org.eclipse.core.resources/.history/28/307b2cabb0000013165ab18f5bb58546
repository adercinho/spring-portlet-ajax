package br.com.fourlinux.portlet;

import java.io.IOException;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import br.com.fourlinux.model.Aluno;

@Controller
@RequestMapping("VIEW")
public class AlunoPortlet {
	
	@RenderMapping
	public ModelAndView showFormNewsletter(RenderResponse response) {
		ModelAndView modelAndView  = new ModelAndView();
	    modelAndView.setViewName("alunoForm");
		return modelAndView;
	}

	@ResourceMapping("enviaDadosAlunoAjaxURL")
	public void enviaDadosAluno(@ModelAttribute("aluno") Aluno aluno, ResourceResponse response) throws IOException {
			System.out.println("Aluno: "+aluno.getNome()+" Idade: "+aluno.getIdade());
			response.getWriter().write(aluno.toString());	
	}
	
	@ModelAttribute("aluno")
	public Aluno getCommandObjectAluno() {
		return new Aluno();
	}
}