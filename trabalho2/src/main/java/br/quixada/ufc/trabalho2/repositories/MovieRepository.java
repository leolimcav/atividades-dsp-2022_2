package br.quixada.ufc.trabalho2.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.quixada.ufc.trabalho2.entities.Movie;

@Repository
public interface MovieRepository extends CrudRepository<Movie, Integer> {
  // c) Listar os nomes de todos os atores de um determinado filme.
  @Query(value = "SELECT a.name FROM actors a, movies m, movie_actor ma WHERE ma.movie_id = m.id AND ma.actor_id = a.id AND m.id = :id", nativeQuery = true)
  List<String> findAllActorNamesWhereMovieIdIsEqualTo(Integer id);

  // d) Listar os títulos de filmes lançados em determinado ano.
  List<Movie> findByReleaseYear(Integer year);

  // e) Listar os títulos de filmes cujo título contém determinada string.
  List<Movie> findAllByTitleContains(String title);
}
