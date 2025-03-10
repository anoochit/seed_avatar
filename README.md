# Seed Avatar

A Flutter package to easily generate and display unique avatars based on a seed string using the DiceBear API.

[![pub package](https://img.shields.io/pub/v/seed_avatar.svg)](https://pub.dev/packages/seed_avatar)

## Features

*   **Effortless Avatar Generation:** Create unique avatars from any string (e.g., username, email).
*   **Multiple Avatar Styles:** Supports various DiceBear avatar styles, including `adventurer`, `adventurerNeutral`, `avataaars`, `avataaarsNeutral`, `bigEars`, `bigEarsNeutral`, `bigSmile`, `bottts`, `croodles`, `croodlesNeutral`, `identicon`, `initials`, `micah`, `miniavs`, `notionists`, `openPeeps`, and `personas`.
*   **Customizable Size:**  Control the size of the generated avatar.
*   **Simple Integration:** Easy to use with minimal code required.
* **Cached Image:** The generated avatar is cached for better performance.

## Installation

Add `seed_avatar` to your `pubspec.yaml` file:

```yaml
dependencies:
  seed_avatar: ^latest_version
```

## Usage

```dart
import 'package:seed_avatar/seed_avatar.dart';
```

## Example

```dart

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SeedAvatar(
          seed: 'demo@example.com',
          style: AvatarStyle.notionists,
          size: 256.0,
        ),
      ),
    );
  }
}
```
