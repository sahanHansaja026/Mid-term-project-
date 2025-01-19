# CCS3351 Mobile Application Development - Mid Term Project

## Full Name: Madawala Maddumage Sahan Hansaja  

## Student Index: 22ug2-0035

## Date of Submission: 30-01-2025

## Figma Link : https://www.figma.com/design/uDa45jRVAt9ea1xoJJJJi0/Untitled

---

## Project Overview

In this project, I created a Flutter-based mobile application that simulates a book store layout. The application showcases a list of books, displaying their title, author, price, and image. Users can view the book list and tap on a book to see more detailed information on a unique book page. The layout is composed using several Flutter widgets such as `Column`, `Row`, `Text`, `Card`, and more. The goal was to understand Flutter's layout system and create reusable components.

---

## 1. Widget Hierarchy Diagram

Here is the widget hierarchy of the layout used in the app:

```plaintext
- MaterialApp
  - Scaffold
    - AppBar
    - Body (ListView)
      - Column
        - Text (Title)
        - Text (Author)
        - Text (Price)
        - Image (Book Image)
        - Row
          - IconButton (for "add to cart" action)
```

(Include a visual diagram if possible.)

---

## 2. UI Implementation

### Books Layout:

The layout consists of four main elements arranged inside a `Column` widget. These elements are:

1. Title of the book (`Text` widget)
2. Author of the book (`Text` widget)
3. Price of the book (`Text` widget)
4. Book Image (`Image` widget)
5. One `IconButton` widget placed inside a `Row` to perform the "add to cart" action.

I used a `Card` widget to encapsulate the entire layout, providing a clean visual appearance.

---

## 3. Folder Structure

Here is the folder structure for the Flutter project:

```plaintext
- lib/
  - main.dart           # Entry point for the app, auto-navigates to test.dart
  - test.dart           # Displays a list of books with their name, image, author, and price
  - bookdetails.dart    # Displays unique book details with image, name, author, price, and description
- assets/
  - images/             # Folder containing book images
    - book1.jpg
    - book2.jpg
    - book3.jpg
    - book4.jpg
    - book5.jpg
    - book6.jpg
- pubspec.yaml          # Flutter project dependencies and asset references
```

---

## 4. Three Child Elements

I created three books as child elements using the `Book` class. These are:

1. **Flutter for Beginners** – by John Doe – \$29.99
2. **Mastering Flutter** – by Jane Smith – \$39.99
3. **Dart in Action** – by Bob White – \$19.99

Each book is an object of the `Book` class, which is passed to the `BookWidget` for display.

---

## 5. UI Screenshots

### a. Figma Prototype

https://www.figma.com/design/uDa45jRVAt9ea1xoJJJJi0/Untitled

### b. Final Flutter UI

### Home Page: 
![Light Mode](https://github.com/sahan026/images/blob/main/allbooks.png)

### Book Details Page: 
![Light Mode](https://github.com/sahan026/images/blob/main/bookdetail.png)

---

## 6. Lessons Learned

In this project, I learned the following:

- **Understanding Flutter Layouts**: I gained deeper insights into how Flutter arranges widgets on the screen using `Column`, `Row`, and `ListView` for scrolling lists.
- **Reusable Widgets**: I created reusable custom widgets (like the `BookWidget`) to build individual book items, making the code modular and easy to maintain.
- **Flutter's Flexibility**: Flutter’s flexible widget system allows developers to compose complex layouts efficiently by nesting widgets like `Column` and `Row`.
- **UI Design**: While designing the UI, I understood the importance of making layouts responsive and visually appealing by using components like `Card` and `IconButton`.

In terms of the rationale for selecting components:

- **Column & Row**: Used for vertical and horizontal alignment respectively.
- **Card**: Provides a visually distinct area for each book, giving a clean and organized appearance.
- **IconButton**: Used for the interactive "add to cart" action.

---
