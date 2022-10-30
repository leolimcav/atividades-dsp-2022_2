package br.quixada.ufc.trabalho2.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.quixada.ufc.trabalho2.entities.Actor;

@Repository
public interface ActorRepository extends JpaRepository<Actor, Integer> {
  // JPQL Query
  @Query("SELECT * FROM actors")
  public List<Actor> findAll();

  // Native Query
  @Query(value = "SELECT * FROM actors a WHERE a.name = :name", nativeQuery = true)
  public Optional<Actor> findByName(String name);

  public List<Actor> findAllByNameLike(String name);
}
