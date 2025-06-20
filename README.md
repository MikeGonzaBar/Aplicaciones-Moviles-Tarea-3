# Libreria Free to Play 📚

A Flutter mobile application that allows users to search for books using the Google Books API. Built with modern Flutter architecture using BLoC pattern for state management.

## Features ✨

- **Book Search**: Search for books by title using the Google Books API
- **Grid Layout**: Display search results in an attractive grid format
- **Book Details**: View detailed information about selected books including:
  - Book cover image
  - Title and publication date
  - Page count
  - Description (expandable)
- **Sharing**: Share book information with other apps
- **Loading States**: Smooth loading animations with shimmer effects
- **Error Handling**: Graceful error handling for failed searches
- **Responsive Design**: Works on both Android and iOS devices

## Architecture 🏗️

This project follows clean architecture principles and uses the BLoC (Business Logic Component) pattern:

- **BLoC Pattern**: For state management and business logic
- **Repository Pattern**: For data access and API communication
- **Separation of Concerns**: Clear separation between UI, business logic, and data layers

### Project Structure

```
lib/
├── bloc/           # BLoC pattern implementation
│   ├── book_bloc.dart
│   ├── book_event.dart
│   └── book_state.dart
├── items/          # Reusable UI components
│   └── book_item.dart
├── Pages/          # Application screens
│   ├── home_page.dart
│   └── selected_book.dart
├── repositories/   # Data access layer
│   └── book_repository.dart
└── main.dart       # Application entry point
```

## Technologies Used 🛠️

- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language
- **flutter_bloc**: State management library
- **http**: HTTP client for API requests
- **flutter_shimmer**: Loading animation library
- **flutter_share**: Content sharing functionality
- **equatable**: Value equality for Dart objects

## Getting Started 🚀

### Prerequisites

- Flutter SDK (>=2.18.2)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or iOS Simulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Aplicaciones-Moviles-Tarea-3
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## Usage 📱

1. **Search for Books**: Enter a book title in the search field and tap the search icon
2. **Browse Results**: View search results in a grid layout with book covers
3. **View Details**: Tap on any book to see detailed information
4. **Share Books**: Use the share button to share book information with other apps
5. **Expand Content**: Tap on title or description to expand/collapse text

## API Integration 🔌

The app integrates with the Google Books API to fetch book information:
- **Endpoint**: `https://www.googleapis.com/books/v1/volumes`
- **Search Parameter**: Book title query
- **Response**: JSON containing book metadata, covers, and descriptions

## Dependencies 📦

### Core Dependencies
- `flutter_bloc: ^8.1.1` - State management
- `http: ^0.13.5` - HTTP client
- `flutter_shimmer: ^2.1.2` - Loading animations
- `flutter_share: ^2.0.0` - Content sharing
- `equatable: ^2.0.5` - Value equality

### Development Dependencies
- `flutter_lints: ^2.0.0` - Code linting

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
