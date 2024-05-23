class LoginWithEmailAndPasswordFailure implements Exception {
  final String message;

  const LoginWithEmailAndPasswordFailure(
      {this.message = "An unknown error occurred."});

  factory LoginWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case "invalid_credentials":
        return const LoginWithEmailAndPasswordFailure(
          message: "Invalid email or password.",
        );
      case "account_locked":
        return const LoginWithEmailAndPasswordFailure(
          message: "Your account has been locked.",
        );
      default:
        return const LoginWithEmailAndPasswordFailure();
    }
  }

  @override
  String toString() {
    return "LoginWithEmailAndPasswordFailure: $message";
  }
}
