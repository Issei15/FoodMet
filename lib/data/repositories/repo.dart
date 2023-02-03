import '../../core/entities/datos.dart';

class TournamentRepository {
  static List<Tournament> getTournaments() => List.generate(
        6,
        (index) => Tournament(
            id: index + 1,
            name: "Filete mignom",
            urlProfile:
                "https://hips.hearstapps.com/hmg-prod/images/delish-filet-mignon-horizontal-1541189043.jpeg?crop=0.8888888888888888xw:1xh;center,top&resize=1200:*"),
      );
}
