class SignupUseCase implements UseCase<void, CreateUserReq> {
  final AuthRepository _authRepository;

  SignupUseCase(this._authRepository);

  @override
  Future<void> call(CreateUserReq createUserReq) {
    return _authRepository.signup(createUserReq);
  }
}