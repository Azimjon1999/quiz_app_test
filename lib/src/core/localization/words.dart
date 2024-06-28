import 'package:flutter/material.dart';

import 'app_localizations.dart';

extension MyWords on Words {
  String tr(BuildContext context, [int? key]) =>
      AppLocalizations.of(context).tr("$name${key ?? ""}");
}

enum Words {
  welcome,
  quiz,
  first,
  uzbekLanguage,
  russianLanguage,
  englishLanguage,
  emailAdress,
  password,
  forgotPassword,
  login,
  donthaveanaccount,
  confirmPassword,
  register,
  alreadyhaveaccount,
  verifiCode,
  quizFirstCheckEmailAdress,
  language,
  changeInfo,
  logOut,
  player,
  multiplayer,
  Continue,
  confirm,
  userName,
  wins,
  lost,
  histories,
  leaderboard,
  update,
  chooseQuiz,
  quations,
  gREAT,
  sTATISTICS,
  yourscore,
  correctAnswer,
  incorrectAnswer,
  yourID,
  playNow,
  searchingforcounter,
  waitforhimtoaccept,
  getReady,
  gameWillstartafter3seconds,
  youwin,
  youlose,
}
