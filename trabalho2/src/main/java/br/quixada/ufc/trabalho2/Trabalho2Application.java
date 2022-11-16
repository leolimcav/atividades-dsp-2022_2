package br.quixada.ufc.trabalho2;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

import br.quixada.ufc.trabalho2.dao.MovieDao;
import br.quixada.ufc.trabalho2.entities.Actor;
import br.quixada.ufc.trabalho2.entities.Movie;
import br.quixada.ufc.trabalho2.repositories.ActorRepository;
import br.quixada.ufc.trabalho2.repositories.MovieRepository;

@SpringBootApplication
public class Trabalho2Application implements CommandLineRunner {

	@Autowired
	private MovieRepository movieRepository;

	@Autowired
	private ActorRepository actorRepository;

	@Autowired
	private MovieDao movieDao;

	public static void main(String[] args) {
		var builder = new SpringApplicationBuilder(Trabalho2Application.class);
		builder.headless(false).run(args);
	}

	@Override
	public void run(String... args) throws Exception {
		handleMenu();
	}

	public void handleMenu() {
		var opt = 0;
		var scn = new Scanner(System.in);
		try {
			do {
				System.out.println("---------- Menu ----------");
				System.out.println("1- Obter filme por id");
				System.out.println("2- Obter ator por id");
				System.out.println("3- Listar todos os filmes de um ator");
				System.out.println("4- Listar os nomes dos atores de um filme");
				System.out.println("5- Listar titulos de filmes de um ano");
				System.out.println("6- Listar titulos de filme por nome");
				System.out.println("7- Listar nome dos atores de um ano");
				System.out.println("8- Total de filmes cadastrados");
				System.out.println("9- Listar filmes em uma faixa de anos");
				System.out.println("10- Listar atores por nome");
				System.out.println("11- Sair");
				System.out.print("> ");
				opt = scn.nextInt();

				var actorId = 0;
				var movieId = 0;
				var actorName = "";
				var movieName = "";

				switch (opt) {
					case 1:
						System.out.println("ID");
						movieId = scn.nextInt();
						var movie = this.movieRepository.findById(movieId);
						System.out.println(movie.isPresent() ? movie.get() : "Movie not found!");
						break;

					case 2:
						System.out.println("ID");
						actorId = scn.nextInt();
						var actor = this.actorRepository.findById(actorId);
						System.out.println(actor.isPresent() ? actor.get() : "Actor not found!");
						break;

					case 3:
						System.out.println("ID");
						actorId = scn.nextInt();
						var movieTitles = this.actorRepository.findAllMovieTitleWhereActorIdIsEqualTo(actorId);
						System.out.println(movieTitles);
						break;

					case 4:
						System.out.println("ID");
						movieId = scn.nextInt();
						var actorNames = this.movieRepository.findAllActorNamesWhereMovieIdIsEqualTo(movieId);
						System.out.println(actorNames);
						break;

					case 5:
						System.out.println("Year");
						var movieYear = scn.nextInt();
						var movies = this.movieDao.findAllByYear(movieYear);
						for (Movie m : movies) {
							System.out.println(m.getTitle());
						}
						break;

					case 6:
						System.out.println("Title");
						movieName = scn.next();
						movies = this.movieRepository.findAllByTitleContains(movieName);
						for (Movie m : movies) {
							System.out.println(m.getTitle());
						}
						break;

					case 7:
						System.out.println("Year");
						var year = scn.nextInt();
						var actors = this.actorRepository.findAllByBirthDateYearEqualTo(year);
						System.out.println(actors);
						break;

					case 8:
						System.out.println(this.movieRepository.count());
						break;

					case 9:
						System.out.println("Start Year");
						var startYear = scn.nextInt();
						System.out.println("End Year");
						var endYear = scn.nextInt();

						var moviesInYears = this.movieDao.findAllByReleaseYearBetween(startYear, endYear);

						for (Movie m : moviesInYears) {
							System.out.println(m.getTitle());
						}
						break;

					case 10:
						System.out.println("Name");
						actorName = scn.next();
						var actorsByName = this.actorRepository.findAllByNameContains(actorName);
						for (Actor a : actorsByName) {
							System.out.println(a.getName());
						}
						break;

					case 11:
						break;

					default:
						System.out.println("Opção inválida");
						break;
				}
			} while (opt != 11);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			scn.close();
		}
	}
}
