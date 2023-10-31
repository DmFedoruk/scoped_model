import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_project/scoped_models/scoped_playlist.dart';

import '../../models/episode.dart';
import 'widget/episode_list.dart';
import 'widget/player.dart';

class PlayList extends StatelessWidget {
  final playlistManager;
  const PlayList(this.playlistManager, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Playlist')),
        body: ScopedModel<ScopedPlaylist>(
            model: playlistManager,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EpisodeList(_handleEpisodeListViewItemTap),
                const Player()
              ],
            )));
  }

  _handleEpisodeListViewItemTap(Episode e) {
    playlistManager.setSelectedEpisode(e);
  }
}
