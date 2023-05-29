import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news_app/src/core/constants/constants.dart';
import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/data/sources/remote/news_api_service.dart';
import 'package:news_app/src/data/models/article.dart';
import 'package:news_app/src/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsApiKey,
        country: countryQuery,
        category: categoryQuery,
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioError(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              type: DioErrorType.badResponse,
              requestOptions: httpResponse.response.requestOptions),
        );
      }
    } on DioError catch (error) {
      return DataFailed(error);
    }
  }
}
