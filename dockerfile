# # Use the Dart official image
# FROM dart:latest

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the pubspec files and resolve dependencies
# COPY pubspec.* ./
# RUN dart pub get

# # Copy the rest of the application files
# COPY . .

# # Compile the application to native executable (optional, but improves performance)
# RUN dart compile exe bin/main.dart -o app

# # Expose the port your Dart app runs on (default: 8080)
# EXPOSE 8080

# # Run the compiled application
# CMD ["./app"]

FROM dart:latest

WORKDIR /app

COPY . .

# Install dependencies
RUN dart pub get

# Expose the port
EXPOSE 8080

# Run the app directly (without compilation)
CMD ["dart", "lib/main.dart"]
