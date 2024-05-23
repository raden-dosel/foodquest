class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      {this.message = "An unknown error occurred."});

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            message: 'The account already exists for that email.');
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
            message: 'The password provided is too weak.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            message: 'Email & Password accounts are not enabled.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
            message: 'The email provided is invalid.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            message:
                'The user corresponding to the given email has been disabled.');
      case 'too-many-requests':
        return const SignUpWithEmailAndPasswordFailure(
            message: 'Too many requests. Try again later.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
