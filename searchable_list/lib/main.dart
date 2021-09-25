import 'package:flutter/material.dart';
import 'package:searchable_list/screens/search_screen.dart';

void main() => runApp(
      const MaterialApp(
        title: 'Searchable list',
        debugShowCheckedModeBanner: false,
        home: SearchableList(),
      ),
    );
