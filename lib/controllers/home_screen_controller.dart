import 'package:flutter/material.dart';

class HomeScreenController extends ChangeNotifier {
  int selectedDegreeIndex = 0;
  int selectedStage = 0;
  int selectedPPT = 0;
  int selectedVideo = 0;
  int selectedNote = 0;
  int selectedBottomNavigationBarItem = 0;

  void changeSelectedDegree(int index) {
    selectedDegreeIndex = index;
    selectedStage = 0;
    selectedPPT = 0;
    notifyListeners();
  }

  void changeSelectedStage(int index) {
    selectedStage = index;
    notifyListeners();
  }

  void changeSelectedPPT(int index) {
    selectedPPT = index;
    notifyListeners();
  }

  void changeSelectedVideo(int index) {
    selectedVideo = index;
    notifyListeners();
  }

  void changeSelectedNote(int index) {
    selectedNote = index;
    notifyListeners();
  }

  void changeSelectedBottomNavigationBarItem(int index) {
    selectedBottomNavigationBarItem = index;
    notifyListeners();
  }
}
