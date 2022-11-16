package br.quixada.ufc.trabalho2.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.quixada.ufc.trabalho2.entities.Movie;

// Criteria Query
@Repository
public class MovieDao {
  @Autowired
  EntityManager em;

  // f) Listar os nomes de atores nascidos em determinado ano. -- CRITERIA QUERY
  public List<Movie> findAllByYear(Integer year) {
    var cb = em.getCriteriaBuilder();
    var cq = cb.createQuery(Movie.class);

    var movies = cq.from(Movie.class);
    var yearPredicate = cb.equal(movies.get("releaseYear"), year);

    cq.where(yearPredicate);

    var query = em.createQuery(cq);
    return query.getResultList();
  }

  // Named Query
  public List<Movie> findAllByReleaseYearBetween(Integer startYear, Integer endYear) {
    return em.createNamedQuery("findAllByReleaseYearBetween", Movie.class).setParameter("startYear", startYear).setParameter("endYear", endYear).getResultList();
  }
}
