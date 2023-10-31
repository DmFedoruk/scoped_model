import 'package:flutter/material.dart';
import 'package:scoped_model_project/scoped_models/scoped_playlist.dart';

import 'models/episode.dart';
import 'models/podcast.dart';
import 'screens/playlist/playlist.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final playlistManager = ScopedPlaylist();

    final podcasts = Podcast.fetchAll();
    for (Podcast p in podcasts) {
      for (Episode e in p.episodes) {
        playlistManager.addEpisode(e);
      }
    }
    return MaterialApp(
      home: PlayList(playlistManager),
    );
  }
}
