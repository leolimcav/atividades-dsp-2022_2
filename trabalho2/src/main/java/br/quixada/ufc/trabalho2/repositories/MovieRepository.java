package br.quixada.ufc.trabalho2.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.quixada.ufc.trabalho2.entities.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer> {
  List<Movie> findAllByTitle(String title);
}
