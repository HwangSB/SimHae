// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Simhae(心海)`
  String get appTitle {
    return Intl.message(
      'Simhae(心海)',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Deep sea of mind.`
  String get appSubTitle {
    return Intl.message(
      'Deep sea of mind.',
      name: 'appSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `What is Survivors Meeting?`
  String get whatIsSurvivorsMeeting {
    return Intl.message(
      'What is Survivors Meeting?',
      name: 'whatIsSurvivorsMeeting',
      desc: '',
      args: [],
    );
  }

  /// `Its a group meeting. The bereaved families of the same pain gather together.\nWe can relate to each others pain, and we can take care of the healing process.`
  String get survivorsMeetingIntroduction {
    return Intl.message(
      'Its a group meeting. The bereaved families of the same pain gather together.\nWe can relate to each others pain, and we can take care of the healing process.',
      name: 'survivorsMeetingIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `Does attending the meeting help you in our condolences?`
  String get survivorsMeetingQuestion1 {
    return Intl.message(
      'Does attending the meeting help you in our condolences?',
      name: 'survivorsMeetingQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `“I was able to take out what was inside me enough. \nThe house that has gone up till now disappears, I try hard to make my sons death a good memory.”`
  String get survivorsMeetingAnswer1_1 {
    return Intl.message(
      '“I was able to take out what was inside me enough. \nThe house that has gone up till now disappears, I try hard to make my sons death a good memory.”',
      name: 'survivorsMeetingAnswer1_1',
      desc: '',
      args: [],
    );
  }

  /// `“In addition to self-help, I have lost a lot of feelings of loss and depression. I was depressed a lot … I live one day nowIt’s very fun. Would like to have more positive thoughts With you I am very grateful for the success of this.”`
  String get survivorsMeetingAnswer1_2 {
    return Intl.message(
      '“In addition to self-help, I have lost a lot of feelings of loss and depression. I was depressed a lot … I live one day nowIt’s very fun. Would like to have more positive thoughts With you I am very grateful for the success of this.”',
      name: 'survivorsMeetingAnswer1_2',
      desc: '',
      args: [],
    );
  }

  /// `A Study on the experience of participating in self-help meetings of families of suicide victims - Park Hye-sun and Lee Jong-ik (2016.06)`
  String get survivorsMeetingAnswer1_3 {
    return Intl.message(
      'A Study on the experience of participating in self-help meetings of families of suicide victims - Park Hye-sun and Lee Jong-ik (2016.06)',
      name: 'survivorsMeetingAnswer1_3',
      desc: '',
      args: [],
    );
  }

  /// `How do I participate in self-help meetings?`
  String get survivorsMeetingQuestion2 {
    return Intl.message(
      'How do I participate in self-help meetings?',
      name: 'survivorsMeetingQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `Please contact 1577-0199 or the relevant agency`
  String get survivorsMeetingAnswer2_1 {
    return Intl.message(
      'Please contact 1577-0199 or the relevant agency',
      name: 'survivorsMeetingAnswer2_1',
      desc: '',
      args: [],
    );
  }

  /// `Survivors meeting help`
  String get survivorsMeetingHelp {
    return Intl.message(
      'Survivors meeting help',
      name: 'survivorsMeetingHelp',
      desc: '',
      args: [],
    );
  }

  /// `Online Cafe`
  String get onlineCafe {
    return Intl.message(
      'Online Cafe',
      name: 'onlineCafe',
      desc: '',
      args: [],
    );
  }

  /// `Loading community post...`
  String get communityLoading {
    return Intl.message(
      'Loading community post...',
      name: 'communityLoading',
      desc: '',
      args: [],
    );
  }

  /// `Community`
  String get community {
    return Intl.message(
      'Community',
      name: 'community',
      desc: '',
      args: [],
    );
  }

  /// `Click a position and confirm the information.`
  String get informationMapDefaultName {
    return Intl.message(
      'Click a position and confirm the information.',
      name: 'informationMapDefaultName',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultRegionCity {
    return Intl.message(
      '',
      name: 'informationMapDefaultRegionCity',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultAddress {
    return Intl.message(
      '',
      name: 'informationMapDefaultAddress',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultTime {
    return Intl.message(
      '',
      name: 'informationMapDefaultTime',
      desc: '',
      args: [],
    );
  }

  /// `Time for suicide survivors to escape from psychological-social difficulties and sufferings and regain hopeful lives through meetings`
  String get informationMapDefaultActivity {
    return Intl.message(
      'Time for suicide survivors to escape from psychological-social difficulties and sufferings and regain hopeful lives through meetings',
      name: 'informationMapDefaultActivity',
      desc: '',
      args: [],
    );
  }

  /// `Check the website`
  String get informationMapDefaultCurrentActivity {
    return Intl.message(
      'Check the website',
      name: 'informationMapDefaultCurrentActivity',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultHomepage {
    return Intl.message(
      '',
      name: 'informationMapDefaultHomepage',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultTelephone {
    return Intl.message(
      '',
      name: 'informationMapDefaultTelephone',
      desc: '',
      args: [],
    );
  }

  /// `Loading image...`
  String get informationMapImageLoading {
    return Intl.message(
      'Loading image...',
      name: 'informationMapImageLoading',
      desc: '',
      args: [],
    );
  }

  /// `Your story floated`
  String get storyFloated {
    return Intl.message(
      'Your story floated',
      name: 'storyFloated',
      desc: '',
      args: [],
    );
  }

  /// `To others\nplease refrain from expressions\nthat make you feel uncomfortable,\nthe contents may be declared and deleted.`
  String get storyWriteWarning {
    return Intl.message(
      'To others\nplease refrain from expressions\nthat make you feel uncomfortable,\nthe contents may be declared and deleted.',
      name: 'storyWriteWarning',
      desc: '',
      args: [],
    );
  }

  /// `My Stories`
  String get myStories {
    return Intl.message(
      'My Stories',
      name: 'myStories',
      desc: '',
      args: [],
    );
  }

  /// `Oops! We lost the story`
  String get storyLoadError {
    return Intl.message(
      'Oops! We lost the story',
      name: 'storyLoadError',
      desc: '',
      args: [],
    );
  }

  /// `No stories here`
  String get storyEmpty {
    return Intl.message(
      'No stories here',
      name: 'storyEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Rowing for stories...`
  String get storyLoading {
    return Intl.message(
      'Rowing for stories...',
      name: 'storyLoading',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Edit story`
  String get storyEdit {
    return Intl.message(
      'Edit story',
      name: 'storyEdit',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to edit a story?`
  String get editCheck {
    return Intl.message(
      'Would you like to edit a story?',
      name: 'editCheck',
      desc: '',
      args: [],
    );
  }

  /// `Delete story`
  String get storyDelete {
    return Intl.message(
      'Delete story',
      name: 'storyDelete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this story?`
  String get deleteCheck {
    return Intl.message(
      'Are you sure you want to delete this story?',
      name: 'deleteCheck',
      desc: '',
      args: [],
    );
  }

  /// `Memorial Space`
  String get memorialSpace {
    return Intl.message(
      'Memorial Space',
      name: 'memorialSpace',
      desc: '',
      args: [],
    );
  }

  /// `It’s a space to remember the deceased\nPlease share memories and happy moments\nyou had together`
  String get memorialSpaceDescription {
    return Intl.message(
      'It’s a space to remember the deceased\nPlease share memories and happy moments\nyou had together',
      name: 'memorialSpaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Share your story`
  String get memorialSpaceWriteDescription {
    return Intl.message(
      'Share your story',
      name: 'memorialSpaceWriteDescription',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact {
    return Intl.message(
      'Contact us',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Please contact us with your inquiries freesequence@gmail.com`
  String get contactDescription {
    return Intl.message(
      'Please contact us with your inquiries freesequence@gmail.com',
      name: 'contactDescription',
      desc: '',
      args: [],
    );
  }

  /// `What kind of service is 'Simhae'`
  String get helpQuestion1 {
    return Intl.message(
      'What kind of service is \'Simhae\'',
      name: 'helpQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `'Simhae : The Sea of Mind' is a mobile communication app service for suicide survivors.\nThe main functions are\n① a communication function that enables writing and sharing of story with suicide survivors,\n②  a regional center for survivors and provision of self-help information,\nand  ③  a memorial space for the deceased.`
  String get helpAnswer1 {
    return Intl.message(
      '\'Simhae : The Sea of Mind\' is a mobile communication app service for suicide survivors.\nThe main functions are\n① a communication function that enables writing and sharing of story with suicide survivors,\n②  a regional center for survivors and provision of self-help information,\nand  ③  a memorial space for the deceased.',
      name: 'helpAnswer1',
      desc: '',
      args: [],
    );
  }

  /// `Why no membership in 'Simhae'?`
  String get helpQuestion2 {
    return Intl.message(
      'Why no membership in \'Simhae\'?',
      name: 'helpQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `'Simhae' offers anonymous services. We are trying to lower the psychological barriers of service by making it possible for survivors to log in to the social site without being separately notified of information such as 'relationship with the deceased' and 'bereaved period'`
  String get helpAnswer2 {
    return Intl.message(
      '\'Simhae\' offers anonymous services. We are trying to lower the psychological barriers of service by making it possible for survivors to log in to the social site without being separately notified of information such as \'relationship with the deceased\' and \'bereaved period\'',
      name: 'helpAnswer2',
      desc: '',
      args: [],
    );
  }

  /// `How long will my writing be floating?`
  String get helpQuestion3 {
    return Intl.message(
      'How long will my writing be floating?',
      name: 'helpQuestion3',
      desc: '',
      args: [],
    );
  }

  /// `-On the main page of 'Simhae', press “Send Text button” and the story it was created will be randomly floated on the surface. You can check it in (My Page> Crossed Mail) and upload again (when deleting it before).\n\n -In the case of story written in the category of Memorial space, it will be volatilized after a certain period.`
  String get helpAnswer3 {
    return Intl.message(
      '-On the main page of \'Simhae\', press “Send Text button” and the story it was created will be randomly floated on the surface. You can check it in (My Page> Crossed Mail) and upload again (when deleting it before).\n\n -In the case of story written in the category of Memorial space, it will be volatilized after a certain period.',
      name: 'helpAnswer3',
      desc: '',
      args: [],
    );
  }

  /// `I want to erase the story I wrote.`
  String get helpQuestion4 {
    return Intl.message(
      'I want to erase the story I wrote.',
      name: 'helpQuestion4',
      desc: '',
      args: [],
    );
  }

  /// `In case of story, go ( My Page> Mail ), please delete.`
  String get helpAnswer4 {
    return Intl.message(
      'In case of story, go ( My Page> Mail ), please delete.',
      name: 'helpAnswer4',
      desc: '',
      args: [],
    );
  }

  /// `I saw advertisement or slander story.`
  String get helpQuestion5 {
    return Intl.message(
      'I saw advertisement or slander story.',
      name: 'helpQuestion5',
      desc: '',
      args: [],
    );
  }

  /// `We try to go to (My Page> Contact us) for the sentences that cause unpleasant feelings and process them through the individual filer. Due to the nature of the service, we are constantly monitoring it, but you should not hesitate to contact us if you feel that the emotions you feel are different.`
  String get helpAnswer5 {
    return Intl.message(
      'We try to go to (My Page> Contact us) for the sentences that cause unpleasant feelings and process them through the individual filer. Due to the nature of the service, we are constantly monitoring it, but you should not hesitate to contact us if you feel that the emotions you feel are different.',
      name: 'helpAnswer5',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `A letter is coming to you.`
  String get storyIncomming {
    return Intl.message(
      'A letter is coming to you.',
      name: 'storyIncomming',
      desc: '',
      args: [],
    );
  }

  /// `Oops! we lost the letter`
  String get letterLoadError {
    return Intl.message(
      'Oops! we lost the letter',
      name: 'letterLoadError',
      desc: '',
      args: [],
    );
  }

  /// `Rowing for letters...`
  String get letterLoading {
    return Intl.message(
      'Rowing for letters...',
      name: 'letterLoading',
      desc: '',
      args: [],
    );
  }

  /// `There are not floated letters`
  String get letterEmpty {
    return Intl.message(
      'There are not floated letters',
      name: 'letterEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Edit letter`
  String get letterEdit {
    return Intl.message(
      'Edit letter',
      name: 'letterEdit',
      desc: '',
      args: [],
    );
  }

  /// `Delete letter`
  String get letterDelete {
    return Intl.message(
      'Delete letter',
      name: 'letterDelete',
      desc: '',
      args: [],
    );
  }

  /// `Floated letters`
  String get sentLetters {
    return Intl.message(
      'Floated letters',
      name: 'sentLetters',
      desc: '',
      args: [],
    );
  }

  /// `My Sea`
  String get mySea {
    return Intl.message(
      'My Sea',
      name: 'mySea',
      desc: '',
      args: [],
    );
  }

  /// `We go through sadness at each speed. \n(Brook Noel, L Morla D. Blair)`
  String get inducedPhrase1 {
    return Intl.message(
      'We go through sadness at each speed. \n(Brook Noel, L Morla D. Blair)',
      name: 'inducedPhrase1',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for sharing your precious memories.`
  String get inducedPhrase2 {
    return Intl.message(
      'Thank you for sharing your precious memories.',
      name: 'inducedPhrase2',
      desc: '',
      args: [],
    );
  }

  /// `It's okay to talk and remember together.`
  String get inducedPhrase3 {
    return Intl.message(
      'It\'s okay to talk and remember together.',
      name: 'inducedPhrase3',
      desc: '',
      args: [],
    );
  }

  /// `How about opening your heart to the deep sea?`
  String get inducedPhrase4 {
    return Intl.message(
      'How about opening your heart to the deep sea?',
      name: 'inducedPhrase4',
      desc: '',
      args: [],
    );
  }

  /// `Please check the internet connected`
  String get checkInternet {
    return Intl.message(
      'Please check the internet connected',
      name: 'checkInternet',
      desc: '',
      args: [],
    );
  }

  /// `The letter could not be loaded because it is not connected to the Internet.`
  String get checkInternetDescription {
    return Intl.message(
      'The letter could not be loaded because it is not connected to the Internet.',
      name: 'checkInternetDescription',
      desc: '',
      args: [],
    );
  }

  /// `What color is your sea today?`
  String get paletteColorTitle {
    return Intl.message(
      'What color is your sea today?',
      name: 'paletteColorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Feelings, Emotions, Weathers, anything is fine`
  String get paletteColorDescription1 {
    return Intl.message(
      'Feelings, Emotions, Weathers, anything is fine',
      name: 'paletteColorDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Decide your sea color today :)`
  String get paletteColorDescription2 {
    return Intl.message(
      'Decide your sea color today :)',
      name: 'paletteColorDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Write letter`
  String get letterWrite {
    return Intl.message(
      'Write letter',
      name: 'letterWrite',
      desc: '',
      args: [],
    );
  }

  /// `Would you like to send a letter?`
  String get letterWriteApply {
    return Intl.message(
      'Would you like to send a letter?',
      name: 'letterWriteApply',
      desc: '',
      args: [],
    );
  }

  /// `I Swear`
  String get tosApply {
    return Intl.message(
      'I Swear',
      name: 'tosApply',
      desc: '',
      args: [],
    );
  }

  /// `Full Text`
  String get tosSeeMore {
    return Intl.message(
      'Full Text',
      name: 'tosSeeMore',
      desc: '',
      args: [],
    );
  }

  /// `Terms of service`
  String get tos {
    return Intl.message(
      'Terms of service',
      name: 'tos',
      desc: '',
      args: [],
    );
  }

  /// `Internet defamation`
  String get tosName1 {
    return Intl.message(
      'Internet defamation',
      name: 'tosName1',
      desc: '',
      args: [],
    );
  }

  /// `Laws for promoting the use of information and communication networks and protecting information`
  String get tosSummary1 {
    return Intl.message(
      'Laws for promoting the use of information and communication networks and protecting information',
      name: 'tosSummary1',
      desc: '',
      args: [],
    );
  }

  /// `Users should not distribute information that infringes the interests of others, such as name loss, to the information and communication network (Regulation “Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 1, Paragraph 1).\n\n* “User” refers to a person who uses the information and communication service provided by the information and communication service provider (“Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 2, Paragraph 1, Paragraph 4) .\n\n* "Information communication network" refers to an information communication system that uses telecommunications equipment or collects, processes, saves, and transmits or receives information using telecommunications equipment, computers, and computer utilization technology ( "Act on Promotion of Utilization of Information and Communication Networks and Protection of Information, etc." "Telecommunications equipment" means coded audio or video by wired and wireless rays and other electronic methods.\n\n-A person who publicly exposes things through the information and communication network for the purpose of slandering others and damages the name of another person is punished by imprisonment for not more than 3 years or a fine of not more than 30 million won ('' Information Act on Promotion of Communication Network Use and Information Protection, "Article 70, Paragraph 1).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).\n\nPersons who openly expose people through the information and communication network for the purpose of slandering others and lose the name of other people are imprisoned for not more than 7 years, suspended for 10 years or less or 50 million won or less. You will be fined (Article 70, Paragraph 2 of the Act on Promotion of Information and Communication Network Use and Information Protection).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).`
  String get tosDetail1 {
    return Intl.message(
      'Users should not distribute information that infringes the interests of others, such as name loss, to the information and communication network (Regulation “Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 1, Paragraph 1).\n\n* “User” refers to a person who uses the information and communication service provided by the information and communication service provider (“Act on Promotion of Information and Communication Network Use and Information Protection”, Paragraph 2, Paragraph 1, Paragraph 4) .\n\n* "Information communication network" refers to an information communication system that uses telecommunications equipment or collects, processes, saves, and transmits or receives information using telecommunications equipment, computers, and computer utilization technology ( "Act on Promotion of Utilization of Information and Communication Networks and Protection of Information, etc." "Telecommunications equipment" means coded audio or video by wired and wireless rays and other electronic methods.\n\n-A person who publicly exposes things through the information and communication network for the purpose of slandering others and damages the name of another person is punished by imprisonment for not more than 3 years or a fine of not more than 30 million won (`` Information Act on Promotion of Communication Network Use and Information Protection, "Article 70, Paragraph 1).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).\n\nPersons who openly expose people through the information and communication network for the purpose of slandering others and lose the name of other people are imprisoned for not more than 7 years, suspended for 10 years or less or 50 million won or less. You will be fined (Article 70, Paragraph 2 of the Act on Promotion of Information and Communication Network Use and Information Protection).\nYes> * You cannot file a lawsuit against the above-mentioned intention of the victim of the crime (“Law for Promoting Use of Information and Communication Networks and Information Protection”, Paragraph 3, Article 70).',
      name: 'tosDetail1',
      desc: '',
      args: [],
    );
  }

  /// `crime of cyber insult`
  String get tosName2 {
    return Intl.message(
      'crime of cyber insult',
      name: 'tosName2',
      desc: '',
      args: [],
    );
  }

  /// `Apart from the contempt of Article 311 of the Criminal Act, the cyber insult clause in the Information and Communication Network Act.`
  String get tosSummary2 {
    return Intl.message(
      'Apart from the contempt of Article 311 of the Criminal Act, the cyber insult clause in the Information and Communication Network Act.',
      name: 'tosSummary2',
      desc: '',
      args: [],
    );
  }

  /// `In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)\n''In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)`
  String get tosDetail2 {
    return Intl.message(
      'In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)\n\'\'In October 2008, the Korean government will make full-scale efforts to establish a new offense against cyber crimes in the Information and Communication Network Law, in addition to the offense under Criminal Code No. 311 as an offense against cyber crimes. Describing the internet with derogatory feelings for some people, as most people know it, not just for the sake of discouragement, to undermine corporate reputation for that person Sometimes recognized sin\n\n\nSame as punishment under Criminal Code No. 311 (Insult) (Penal Code No. 311 (Insult) A person who insults an open person shall be punished with imprisonment or imprisonment for not more than one year or a fine of not more than 2 million won.)',
      name: 'tosDetail2',
      desc: '',
      args: [],
    );
  }

  /// `Computer crime`
  String get tosName3 {
    return Intl.message(
      'Computer crime',
      name: 'tosName3',
      desc: '',
      args: [],
    );
  }

  /// `Article 314 of the Criminal Act (obstruction of business), Article 347-2 of the Criminal Act (fraud of using computers, etc.)`
  String get tosSummary3 {
    return Intl.message(
      'Article 314 of the Criminal Act (obstruction of business), Article 347-2 of the Criminal Act (fraud of using computers, etc.)',
      name: 'tosSummary3',
      desc: '',
      args: [],
    );
  }

  /// `-No. 314 (Business interruption)\n1-1. Definition: Item (1): Method 313 or power that interferes with the work of a person\n1-2. Penalty: Imprisonment of up to 5 years or fine of up to 15 million won. <Revised December 29, 1995>\n\n2-1. Definition: (2): Damage to information storage such as computers and special media such as electronic storage, inputting information to the information storage or illegal commands, or obstructing the processing of other information. Those who interfere with the work of other people\n2-2. Penalty: The same as the type in paragraph 1. (Prison for 5 years or less or fine of 15 million won or less.) <New establishment December 29, 1995>\n\n -No. 347-2 (Scam that uses computer etc.)\n1. Definition: Entering information or illegal commands in a computer or other information device, or inputting unlimited information and updating it to obtain a profit on property, Person who decides to acquire a third party\n2. Penalty: imprisonment of 10 years or less or fine of 20 million won or less. [Full text revision December 29, 2001]`
  String get tosDetail3 {
    return Intl.message(
      '-No. 314 (Business interruption)\n1-1. Definition: Item (1): Method 313 or power that interferes with the work of a person\n1-2. Penalty: Imprisonment of up to 5 years or fine of up to 15 million won. <Revised December 29, 1995>\n\n2-1. Definition: (2): Damage to information storage such as computers and special media such as electronic storage, inputting information to the information storage or illegal commands, or obstructing the processing of other information. Those who interfere with the work of other people\n2-2. Penalty: The same as the type in paragraph 1. (Prison for 5 years or less or fine of 15 million won or less.) <New establishment December 29, 1995>\n\n -No. 347-2 (Scam that uses computer etc.)\n1. Definition: Entering information or illegal commands in a computer or other information device, or inputting unlimited information and updating it to obtain a profit on property, Person who decides to acquire a third party\n2. Penalty: imprisonment of 10 years or less or fine of 20 million won or less. [Full text revision December 29, 2001]',
      name: 'tosDetail3',
      desc: '',
      args: [],
    );
  }

  /// `This service provides communication functions and information for families of suicide victims. Please refrain from expressing excessive inconvenience to others, and the contents may be reported and deleted. Prior to use, please review the full text of service-related laws.`
  String get tosPrecautions {
    return Intl.message(
      'This service provides communication functions and information for families of suicide victims. Please refrain from expressing excessive inconvenience to others, and the contents may be reported and deleted. Prior to use, please review the full text of service-related laws.',
      name: 'tosPrecautions',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko', countryCode: 'KR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}