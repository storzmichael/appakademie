class Member {
  List<dynamic> memberList, emailList, roleList;

  Member({required this.memberList, required this.emailList, required this.roleList});

  void memberInfo() {
    print('Name: $memberList\nEmail: $emailList\nRolle: $roleList\n');
  }
}

class StudentMember extends Member {
  List appList;

  StudentMember({
    required super.memberList,
    required super.emailList,
    required super.roleList,
    required this.appList,
  });
  @override
  void memberInfo() {
    print('Name: $memberList\nEmail: $emailList\nRolle: $roleList\nApp Idee: $appList\n');
  }
}
