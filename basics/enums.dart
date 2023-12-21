enum AVformat {
  mp4(suffix: '.mp4'),
  mp3(suffix: '.mp3'),
  wav(suffix: '.wav'),
  aac(suffix: '.aac'),
  ;

  const AVformat({required this.suffix});

  final String suffix;

  bool get isAudio => suffix == '.mp4';
}

enum Color {red, green, blue}

void main() {
  print('enums...');
  for (var fmt in AVformat.values) {
    print('$fmt, ${fmt.index}, ${fmt.name}, ${fmt.runtimeType}, ${fmt.hashCode}, ${fmt.isAudio}');
  }
  for (var color in Color.values) {
    print(color);
  }
}
