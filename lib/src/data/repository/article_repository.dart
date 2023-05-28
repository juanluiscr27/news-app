import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/domain/repository/article_repository.dart';
import 'package:news_app/src/data/models/article.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
