package br.quixada.ufc.trabalho2.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Getter
@Setter
@Entity
@Table(name = "movies")
// Named Query
@NamedQuery(name = "findAllByTitle", query = "SELECT * FROM movies m WHERE m.title LIKE '%?title%'")
public class Movie {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;
  private String title;
  private Integer releaseYear;

  @ManyToMany(mappedBy = "movies", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
  private List<Actor> actors;
}
