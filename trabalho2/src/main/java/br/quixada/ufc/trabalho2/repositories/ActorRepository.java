package br.quixada.ufc.trabalho2.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.quixada.ufc.trabalho2.entities.Actor;

@Repository
public interface ActorRepository extends CrudRepository<Actor, Integer> {
  // JPQL Query
  @Query("SELECT a FROM Actor a")
  List<Actor> findAll();

  Optional<Actor> findByName(String name);

  List<Actor> findAllByNameLike(String name);

  // b) Listar todos os títulos de filmes de um determinado ator.
  @Query(value = "SELECT m.title FROM actors a, movies m, movie_actor ma WHERE ma.movie_id = m.id AND ma.actor_id = a.id AND a.id = :id", nativeQuery = true)
  List<String> findAllMovieTitleWhereActorIdIsEqualTo(Integer id);

  // f) Listar os nomes de atores nascidos em determinado ano.
  @Query(value = "SELECT a.name FROM actors a WHERE EXTRACT(YEAR FROM a.birth_date) = :year", nativeQuery = true)
  List<String> findAllByBirthDateYearEqualTo(Integer year);
}
