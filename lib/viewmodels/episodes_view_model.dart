import 'package:flutter/material.dart';
import 'package:web_flutter/datamodels/episode_item_model.dart';
import 'package:web_flutter/locator.dart';
import 'package:web_flutter/services/api.dart';


class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodeResults = await _api.getEpisodes();

    if (episodeResults is String) {
      // show error
    } else {
      _episodes = episodeResults;
    }

    notifyListeners();
  }
}
