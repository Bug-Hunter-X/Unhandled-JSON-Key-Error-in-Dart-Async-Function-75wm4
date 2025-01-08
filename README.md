# Unhandled JSON Key Error in Dart Async Function

This repository demonstrates a common but easily missed error in Dart when handling asynchronous operations and JSON data. The code attempts to access a key in a JSON response that may not always exist. This can lead to runtime exceptions if not handled properly. 

The `bug.dart` file contains the buggy code, while `bugSolution.dart` provides a corrected version with robust error handling.

## How to reproduce

1. Clone this repository.
2. Run the `bug.dart` file. Observe the error when the JSON response doesn't contain 'nonExistentKey'.
3. Run the `bugSolution.dart` file. Notice how it gracefully handles the potential error.

## Solution

The solution involves checking if the key exists in the JSON before accessing it, or using a method that handles the case when the key doesn't exist. This prevents runtime exceptions and leads to more robust applications.