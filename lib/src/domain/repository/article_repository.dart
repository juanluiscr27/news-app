import 'package:news_app/src/domain/entities/article.dart';

import 'package:news_app/src/core/resources/data_state.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
