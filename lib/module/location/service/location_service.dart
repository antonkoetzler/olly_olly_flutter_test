import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

/// Location service for reverse geocoding.
@injectable
final class LocationService {
  /// Default constructor.
  LocationService();

  /// Gets the location name (city and country) from coordinates.
  ///
  /// Returns null if geocoding fails or no location name is found.
  Future<String?> getLocationName(double latitude, double longitude) async {
    try {
      final url = Uri.parse(
        'https://nominatim.openstreetmap.org/reverse?'
        'lat=$latitude&lon=$longitude&'
        'format=json&addressdetails=1',
      );

      final response = await http
          .get(
            url,
            headers: {
              'User-Agent': 'olly_olly_flutter_test', // Required by Nominatim usage policy
            },
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final address = json['address'] as Map<String, dynamic>?;

        if (address != null) {
          final parts = <String>[];

          // Try different address fields in order of preference
          final city =
              address['city'] as String? ??
              address['town'] as String? ??
              address['village'] as String? ??
              address['municipality'] as String?;

          if (city != null && city.isNotEmpty) {
            parts.add(city);
          }

          final country = address['country'] as String?;
          if (country != null && country.isNotEmpty) {
            parts.add(country);
          }

          return parts.isEmpty ? null : parts.join(', ');
        }
      }
      return null;
    } catch (_) {
      // Silently fail - location name is not critical for app functionality
      return null;
    }
  }
}
