package br.quixada.ufc.trabalho2.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.quixada.ufc.trabalho2.repositories.ActorRepository;
import br.quixada.ufc.trabalho2.repositories.MovieRepository;

@Controller
@RequestMapping("/")
public class IndexController {

  @Autowired
  private MovieRepository moviesRepo;
  
  @Autowired
  private ActorRepository actorsRepo;
  
  @GetMapping("/")
  public ModelAndView index() {
    var mv = new ModelAndView("index");
    mv.setStatus(HttpStatus.OK);
    mv.addObject("actors", actorsRepo.findByName("Bradley Cooper").get());
    return mv;
  }
}
