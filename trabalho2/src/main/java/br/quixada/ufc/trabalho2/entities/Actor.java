package br.quixada.ufc.trabalho2.entities;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "actors")
public class Actor {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;
  private String name;

  @DateTimeFormat(pattern = "dd/MM/yyyy")
  private LocalDate birthDate;

  @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
  @JoinTable(
    name = "movie_actor",
    joinColumns = @JoinColumn(
      referencedColumnName = "id",
      name = "actor_id",
      table = "actors"
    ),
    inverseJoinColumns = @JoinColumn(
      referencedColumnName = "id",
      name = "movie_id",
      table = "movies"
    )
  )
  private List<Movie> movies;

  @Override
  public String toString() {
    return "{" + "id:"+ this.id+ "name:"+ this.name+ "birthDate:"+ this.birthDate + "}";
  }
}
