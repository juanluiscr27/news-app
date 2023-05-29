import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/domain/entities/article.dart';
import 'package:news_app/src/domain/repository/article_repository.dart';
import 'package:news_app/src/domain/service/service.dart';

class GetArticleService
    implements Service<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleService(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
