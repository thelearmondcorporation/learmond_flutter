library learmond_flutter;

// Local utilities
export 'src/learmond_flutter.dart';

// Re-export all dependent packages while hiding known conflicting symbols
// so the public API doesn't produce ambiguous_export errors.
export 'package:paysheet/paysheet.dart';
export 'package:lpe_sdk/lpe_sdk.dart';
export 'package:lpe/lpe.dart' hide LearmondNativePay;
export 'package:source_sdk/source_sdk.dart';
export 'package:lpe_with_source/lpe_with_source.dart' hide Source;
