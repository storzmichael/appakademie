import 'models/class_members.dart';

import 'models_list/list_app.dart';
import 'models_list/list_email.dart';
import 'models_list/list_member.dart';
import 'models_list/list_role.dart';

void main() {
  StudentMember adrian = StudentMember(
      memberList: [memberList[0]], emailList: [emailList[0]], roleList: [roleList[0]], appList: [appList[5]]);
  StudentMember alex = StudentMember(
      memberList: [memberList[1]], emailList: [emailList[1]], roleList: [roleList[0]], appList: [appList[15]]);
  Member angi = Member(memberList: [memberList[2]], emailList: [emailList[2]], roleList: [roleList[1]]);
  StudentMember antonio = StudentMember(
      memberList: [memberList[3]], emailList: [emailList[3]], roleList: [roleList[0]], appList: [appList[14]]);
  StudentMember arif = StudentMember(
      memberList: [memberList[4]], emailList: [emailList[4]], roleList: [roleList[0]], appList: [appList[2]]);
  StudentMember ben = StudentMember(
      memberList: [memberList[5]], emailList: [emailList[5]], roleList: [roleList[0]], appList: [appList[1]]);
  StudentMember bjoern = StudentMember(
      memberList: [memberList[6]], emailList: [emailList[6]], roleList: [roleList[0]], appList: [appList[8]]);
  Member emily = Member(memberList: [memberList[7]], emailList: [emailList[7]], roleList: [roleList[2]]);
  Member fabian = Member(memberList: [memberList[8]], emailList: [emailList[8]], roleList: [roleList[3]]);
  StudentMember ferhat = StudentMember(
      memberList: [memberList[9]], emailList: [emailList[9]], roleList: [roleList[0]], appList: [appList[4]]);
  Member florian = Member(memberList: [memberList[10]], emailList: [emailList[10]], roleList: [roleList[4]]);

  adrian.memberInfo();
  alex.memberInfo();
  angi.memberInfo();
  antonio.memberInfo();
}
