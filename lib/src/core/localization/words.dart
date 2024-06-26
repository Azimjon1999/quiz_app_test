import 'package:flutter/material.dart';

import 'app_localizations.dart';

extension MyWords on Words {
  String tr(BuildContext context, [int? key]) => AppLocalizations.of(context).tr("$name${key ?? ""}");
}

enum Words {
 Quiz,
  First,
  Uzbek,
  English,
  Russian,
  EmailAdress,
  Password,
  ForgotPassword,
  Login,
  Donthaveanaccount,
  ConfirmPassword,
  Register,
  Alreadyhaveaccount,
  VerifiCode,
  QuizFirstCheckEmailAdress,
  Lanuage,
  ChangeInfo,
  LogOut,
  Player,
  Multiplayer,
  Wins,
  Lost,
  Histories,
  Leaderboard,
  UserName,
  Update,
  ChooseQuiz,
  Quations,
  GREAT,
  STATISTICS,
  Yourscore,
  CorrectAnswer,
  IncorrectAnswer,
  YourID,
  PlayNow,
  Searchingforcounter,
 Waitforhimtoaccept,
 GetReady,
 GameWillstartafter3seconds,
 Youwin,
 Youlose,








}
