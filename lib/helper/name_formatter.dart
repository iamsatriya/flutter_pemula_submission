String getShortName(String name) {
  List<String> words = name.split(' ');
  String initials = '';

  for (var word in words) {
    if (word.isNotEmpty) {
      initials += word[0].toUpperCase();
    }
  }

  if (initials.length == 1) {
    return initials + initials;
  } else if (initials.length > 2) {
    return initials.substring(0, 2);
  } else {
    return initials;
  }
}
