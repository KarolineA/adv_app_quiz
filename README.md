

# Flutter Learning Advance Quiz App

## Overview

I developed a Flutter Learning Quiz App. This app allows users to answer Flutter-related questions and view their results. The result screen displays which questions were answered correctly and the correct answers for those that were missed. Users can restart the quiz to try again and improve their scores.

## Key Learnings

### Advanced Widget Usage
- **Passing Functions as Arguments**: Functions can be accepted as input values and used within widgets, such as binding them to buttons.
- **Conditional Content**: 
  - **If Statements**: Used to set variable values based on different states, which affects the UI.
  - **Ternary Expressions**: A concise way to set content conditionally.
  - **Managing Widgets as State Values**: Although possible, it has disadvantages when the widgets need data like function pointers.

### Dart Control Structures
- **If Statements and Ternary Expressions**: For conditional rendering.
- **For Loops**: To execute code repeatedly until a condition is met, useful for iterating through user answers to create summary data.
- **Maps**: Key-value pairs for combining different pieces of data into one object, though they require type casting for type safety.

### Widgets and UI Elements
- **SingleChildScrollView**: Allows a child widget, often a column, to be scrollable while restricting its height.
- **Styling Options**: Example, using the `shape` option for `ElevatedButton` to add rounded borders.
- **Custom Classes**: Used for non-widget objects, such as a question object containing text and possible answers with a utility method for shuffling answers.

### List Manipulation
- **List Methods**:
  - `shuffle()`: Randomizes the order of list items.
  - `add()`: Adds new entries to a list.
  - `where()`: Filters a list based on a condition.
  - `map()`: Transforms a list into a new list of different type items.
- **Spread Operator (`...`)**: Expands list elements and adds them as standalone comma-separated items to another list.



## Upgrades and Fixes 

- **Home Button**: Added a button to navigate back to the home screen.
- **Button Margin Adjustment**: Resolved issues with grouped buttons by applying a margin using `EdgeInsets.all(5)` in the `answer_button.dart` file.
