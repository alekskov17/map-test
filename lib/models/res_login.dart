class ResLogin {
  final int? ok;
  final String? error;

  const ResLogin({required this.ok, required this.error});

  factory ResLogin.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'ok': int? ok,
        'error': String? error,
      } =>
        ResLogin(
          ok: ok,
          error: error,
        ),
      _ => throw const FormatException('Failed to load ResLogin.'),
    };
  }
}
