class Task {
  String title;
  bool done;

  Task(this.title, this.done);

  void toggleDone(){
    done = !done;
  }
}
