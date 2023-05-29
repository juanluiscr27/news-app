abstract class Service<Type, Params> {
  Future<Type> call({Params params});
}
