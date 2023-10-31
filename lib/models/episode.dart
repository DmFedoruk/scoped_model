import 'package:scoped_model_project/models/podcast.dart';

class Episode {
  Podcast podcast;
  String title;
  bool isPlaying;

  Episode(this.podcast, this.title, {this.isPlaying = false});
}
