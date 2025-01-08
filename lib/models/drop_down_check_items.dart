class DropDownCheckItemList {
  DropDownCheckItemList({this.listItems});

  List<DropDownCheckOptionItem>? listItems = [];
  final int _listLenght = 0;

  void addItem(DropDownCheckOptionItem? item) {
    listItems?.add(item!);
  }

  int? get getListLenght => _listLenght;

  void removeAllItems() {
    listItems = [];
  }

  void removeOptionItem(int index) {
    if (listItems != null) {
      listItems?.removeAt(index);
    }
  }
}

class DropDownCheckOptionItem {
  DropDownCheckOptionItem({this.title, this.checked});

  String? title;
  bool? checked = false;

  String? get getTitle => title;
  set setTitle(String title) => title = title;
  bool? get getChecked => checked;
  set setChecked(checked) => checked = checked;
}
