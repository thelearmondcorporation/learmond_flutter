# Learmond Flutter (meta package)

A convenience meta-package from The Learmond Corporation that aggregates and
re-exports the company's Flutter SDK modules for easy consumption. Use this
package to quickly add Learmond payment widgets and helpers to your Flutter
app.

## Features

- Single import surface that re-exports all core Learmond Flutter APIs
- Includes Apple Pay, Google Pay, card, and bank button integrations
- Links to generated API docs for detailed usage examples

## Installation

Add the package to your `pubspec.yaml` and run `flutter pub get`:

```yaml
dependencies:
  learmond_flutter: ^0.0.1
```

## Quick start

Import the package and use the exported SDK classes in your app:

```dart
import 'package:learmond_flutter/learmond_flutter.dart';

// Create and use the SDK as appropriate for your integration.
final sdk = Learmond();
// Example: await sdk.presentCardButton(...);
```

See the API reference in the `doc/api` folder for class and method details.

## Documentation

- API docs: `doc/api` (generated documentation included in this repository)
- Example usage may be added to an `/example` directory

## Contributing

Contributions and issues are welcome. Please open issues or pull requests
against this repository and follow the existing code/style patterns.

## License

This project is licensed under the MIT License — see the `LICENSE` file for
details.

## Author

The Learmond Corporation
