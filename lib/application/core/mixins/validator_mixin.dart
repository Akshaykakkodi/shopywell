mixin ValidationMixin {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }

  String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }

    return null;
  }

  String? validateConfirmPassword(String? value, String password) {
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
