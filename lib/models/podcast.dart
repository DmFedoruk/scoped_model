import 'episode.dart';

class Podcast {
  String name;
  List<Episode> episodes = [];

  Podcast(this.name);

  static List<Podcast> fetchAll() {
    var p1 = Podcast("Podcast 1 / One Piece");
    p1.episodes = [
      Episode(p1, "Luffy is the king of pirats"),
      Episode(p1, "Zoro is the most strogest sworder in the world"),
      Episode(p1, "Sanji is the good сook")
    ];
    var p2 = Podcast("Podcast 2 / Bleach");
    p2.episodes = [
      Episode(p2, "Ichigo is the main characted"),
      Episode(p2, "Orihime is his gilfriend"),
      Episode(p2, "Chad is the cool and strong boy")
    ];
    var p3 = Podcast("Podcast 3 / Magician battle");
    p3.episodes = [
      Episode(p3, "Gojo is the most strongest magician"),
      Episode(p3, "Yudji is the current vessel of the two-faced"),
      Episode(p3, "Magumi is the magician with abilities to control shinigami")
    ];
    return [p1, p2, p3];
  }
}
