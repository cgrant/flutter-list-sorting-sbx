# Flutter List Sorting

This example demonstrates how to sort a List of items. 

Given a list of users and a sort order (isDecending)

```dart
bool isDecending = false;

List<String> users = [
    'Bret',
    'Antonette',
    'Samantha',
    'Karianne',
    'Kamren',
    'Leopoldo',
    'Elwyn',
    'Maxime',
    'Delphine',
    'Kattie',
    'Moriah',
    'Clementina',
    'Kurtis',
    'Aaron'
  ];
```

You can sort the list with the compareTo() function as follows.

```dart
final sortedUsers = users..sort(
    (userA, userB) =>
        isDecending ? 
            userB.compareTo(userA) : //desc 
            userA.compareTo(userB)); //asc
          
```
