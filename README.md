# Unhandled JSON Response in Dart

This repository demonstrates a common error in Dart when handling JSON responses from APIs. The code fails to properly handle cases where the JSON response is malformed or doesn't contain expected keys, leading to runtime errors. The solution showcases best practices to prevent such issues.

## Bug
The `bug.dart` file contains code that attempts to parse a JSON response and access specific keys without checking for their existence, resulting in potential errors.

## Solution
The `bugSolution.dart` file presents a corrected version that robustly handles JSON parsing and avoids runtime exceptions. It uses appropriate error handling and checks for the existence of keys before accessing them.