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

  /// `심해(心海)`
  String get appTitle {
    return Intl.message(
      '심해(心海)',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `우리의 마음이 머무는 바다.`
  String get appSubTitle {
    return Intl.message(
      '우리의 마음이 머무는 바다.',
      name: 'appSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `시작하기`
  String get start {
    return Intl.message(
      '시작하기',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `자조모임이 무엇인가요?`
  String get whatIsSurvivorsMeeting {
    return Intl.message(
      '자조모임이 무엇인가요?',
      name: 'whatIsSurvivorsMeeting',
      desc: '',
      args: [],
    );
  }

  /// `자조모임은 같은 아픔을 지닌 유족들이 모여 서로의 아픔을 공감하고 치유의 과정을 함께하는 모임입니다.`
  String get survivorsMeetingIntroduction {
    return Intl.message(
      '자조모임은 같은 아픔을 지닌 유족들이 모여 서로의 아픔을 공감하고 치유의 과정을 함께하는 모임입니다.',
      name: 'survivorsMeetingIntroduction',
      desc: '',
      args: [],
    );
  }

  /// `자조모임 참여가 애도에 도움이 되나요?`
  String get survivorsMeetingQuestion1 {
    return Intl.message(
      '자조모임 참여가 애도에 도움이 되나요?',
      name: 'survivorsMeetingQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `“충분히 내 속에 있는 것을 꺼낼 수 있었어요.\n그동안 치밀어 올라왔던 화가 사라지고, 아들의 죽음을 좋은 기억으로 남기려고 노력하려구요.”`
  String get survivorsMeetingAnswer1_1 {
    return Intl.message(
      '“충분히 내 속에 있는 것을 꺼낼 수 있었어요.\n그동안 치밀어 올라왔던 화가 사라지고, 아들의 죽음을 좋은 기억으로 남기려고 노력하려구요.”',
      name: 'survivorsMeetingAnswer1_1',
      desc: '',
      args: [],
    );
  }

  /// `“자조모임에 참여하고 상실감과 우울감이 많이 줄었어요. 많이 우울했는데…지금은 하루하루 산다는 것이 굉장히 유쾌해요. 같이 모임한 분들이 긍정적인 생각을 가지고 계신 분들이라 이렇게 좋게 바뀐 것 같아 너무 감사해요.”`
  String get survivorsMeetingAnswer1_2 {
    return Intl.message(
      '“자조모임에 참여하고 상실감과 우울감이 많이 줄었어요. 많이 우울했는데…지금은 하루하루 산다는 것이 굉장히 유쾌해요. 같이 모임한 분들이 긍정적인 생각을 가지고 계신 분들이라 이렇게 좋게 바뀐 것 같아 너무 감사해요.”',
      name: 'survivorsMeetingAnswer1_2',
      desc: '',
      args: [],
    );
  }

  /// `참고문헌 : 자살자 유가족의 자조모임 참여경험에 관한 연구\n- 박혜선, 이종익(2016.06.)`
  String get survivorsMeetingAnswer1_3 {
    return Intl.message(
      '참고문헌 : 자살자 유가족의 자조모임 참여경험에 관한 연구\n- 박혜선, 이종익(2016.06.)',
      name: 'survivorsMeetingAnswer1_3',
      desc: '',
      args: [],
    );
  }

  /// `자조모임에 어떻게 참여하나요?`
  String get survivorsMeetingQuestion2 {
    return Intl.message(
      '자조모임에 어떻게 참여하나요?',
      name: 'survivorsMeetingQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `1577-0199 또는 해당 기관에 문의해주세요.`
  String get survivorsMeetingAnswer2_1 {
    return Intl.message(
      '1577-0199 또는 해당 기관에 문의해주세요.',
      name: 'survivorsMeetingAnswer2_1',
      desc: '',
      args: [],
    );
  }

  /// `자조모임 도움말`
  String get survivorsMeetingHelp {
    return Intl.message(
      '자조모임 도움말',
      name: 'survivorsMeetingHelp',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get informationMapDefaultName {
    return Intl.message(
      '',
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

  /// `모임을 통해 자살유가족들이 심리적·사회적 어려움과 고통속에서 벗어나 희망적인 삶을 되찾는 시간`
  String get informationMapDefaultActivity {
    return Intl.message(
      '모임을 통해 자살유가족들이 심리적·사회적 어려움과 고통속에서 벗어나 희망적인 삶을 되찾는 시간',
      name: 'informationMapDefaultActivity',
      desc: '',
      args: [],
    );
  }

  /// `홈페이지를 참고하세요`
  String get informationMapDefaultCurrentActivity {
    return Intl.message(
      '홈페이지를 참고하세요',
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

  /// `이미지를 가져오는중...`
  String get informationMapImageLoading {
    return Intl.message(
      '이미지를 가져오는중...',
      name: 'informationMapImageLoading',
      desc: '',
      args: [],
    );
  }

  /// `당신의 이야기가 띄워졌습니다`
  String get storyFloated {
    return Intl.message(
      '당신의 이야기가 띄워졌습니다',
      name: 'storyFloated',
      desc: '',
      args: [],
    );
  }

  /// `다른 사람들에게\n과도한 불편함을 느끼게 하는 표현은 삼가 바라며,\n해당 내용은 신고 및 삭제될 수 있습니다`
  String get storyWriteWarning {
    return Intl.message(
      '다른 사람들에게\n과도한 불편함을 느끼게 하는 표현은 삼가 바라며,\n해당 내용은 신고 및 삭제될 수 있습니다',
      name: 'storyWriteWarning',
      desc: '',
      args: [],
    );
  }

  /// `내가 쓴 추모글`
  String get myStories {
    return Intl.message(
      '내가 쓴 추모글',
      name: 'myStories',
      desc: '',
      args: [],
    );
  }

  /// `추모글을 가져오는중 오류가 발생했습니다`
  String get storyLoadError {
    return Intl.message(
      '추모글을 가져오는중 오류가 발생했습니다',
      name: 'storyLoadError',
      desc: '',
      args: [],
    );
  }

  /// `작성된 추모글이 없습니다`
  String get storyEmpty {
    return Intl.message(
      '작성된 추모글이 없습니다',
      name: 'storyEmpty',
      desc: '',
      args: [],
    );
  }

  /// `추모글을 가져오는 중...`
  String get storyLoading {
    return Intl.message(
      '추모글을 가져오는 중...',
      name: 'storyLoading',
      desc: '',
      args: [],
    );
  }

  /// `수정`
  String get edit {
    return Intl.message(
      '수정',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `삭제`
  String get delete {
    return Intl.message(
      '삭제',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `취소`
  String get cancel {
    return Intl.message(
      '취소',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `추모글 수정`
  String get storyEdit {
    return Intl.message(
      '추모글 수정',
      name: 'storyEdit',
      desc: '',
      args: [],
    );
  }

  /// `글을 수정하시겠습니까?`
  String get editCheck {
    return Intl.message(
      '글을 수정하시겠습니까?',
      name: 'editCheck',
      desc: '',
      args: [],
    );
  }

  /// `추모글 삭제`
  String get storyDelete {
    return Intl.message(
      '추모글 삭제',
      name: 'storyDelete',
      desc: '',
      args: [],
    );
  }

  /// `정말 삭제하시겠습니까?`
  String get deleteCheck {
    return Intl.message(
      '정말 삭제하시겠습니까?',
      name: 'deleteCheck',
      desc: '',
      args: [],
    );
  }

  /// `추모공간`
  String get memorialSpace {
    return Intl.message(
      '추모공간',
      name: 'memorialSpace',
      desc: '',
      args: [],
    );
  }

  /// `고인을 추모하는 공간입니다\n함께했던 추억이나 기억, 즐거웠던 순간들을\n나눠주세요`
  String get memorialSpaceDescription {
    return Intl.message(
      '고인을 추모하는 공간입니다\n함께했던 추억이나 기억, 즐거웠던 순간들을\n나눠주세요',
      name: 'memorialSpaceDescription',
      desc: '',
      args: [],
    );
  }

  /// `당신의 이야기를 나눠주세요`
  String get memorialSpaceWriteDescription {
    return Intl.message(
      '당신의 이야기를 나눠주세요',
      name: 'memorialSpaceWriteDescription',
      desc: '',
      args: [],
    );
  }

  /// `등록`
  String get register {
    return Intl.message(
      '등록',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `문의하기`
  String get contact {
    return Intl.message(
      '문의하기',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `궁금한 점이 있다면 언제든지 문의하세요.\n freesequence@gmail.com으로 문의 사항을 연락해주세요.`
  String get contactDescription {
    return Intl.message(
      '궁금한 점이 있다면 언제든지 문의하세요.\n freesequence@gmail.com으로 문의 사항을 연락해주세요.',
      name: 'contactDescription',
      desc: '',
      args: [],
    );
  }

  /// `'심해'는 어떤 서비스인가요?`
  String get helpQuestion1 {
    return Intl.message(
      '\'심해\'는 어떤 서비스인가요?',
      name: 'helpQuestion1',
      desc: '',
      args: [],
    );
  }

  /// `'심해(心海): 마음을 담은 바다' 는 자살 유족분들을 위한 모바일 소통 앱 서비스입니다. 주요 기능으로는 ① 자살 유족간의 사연작성 및 공유가 가능한 소통기능, ② 유족들을 위한 지역센터 및 자조모임 정보 제공 ③ 고인을 기리는 추모공간이 있습니다.`
  String get helpAnswer1 {
    return Intl.message(
      '\'심해(心海): 마음을 담은 바다\' 는 자살 유족분들을 위한 모바일 소통 앱 서비스입니다. 주요 기능으로는 ① 자살 유족간의 사연작성 및 공유가 가능한 소통기능, ② 유족들을 위한 지역센터 및 자조모임 정보 제공 ③ 고인을 기리는 추모공간이 있습니다.',
      name: 'helpAnswer1',
      desc: '',
      args: [],
    );
  }

  /// `'심해'는 왜 회원가입이 없나요?`
  String get helpQuestion2 {
    return Intl.message(
      '\'심해\'는 왜 회원가입이 없나요?',
      name: 'helpQuestion2',
      desc: '',
      args: [],
    );
  }

  /// `'심해'는 익명의 서비스를 제공하고 있으며, 유족분들에게 '고인과의 관계', '사별기간' 등의 정보를 따로 받지 않고 소셜사이트 로그인으로 사용을 가능하게 하여 서비스에 대한 심리적 장벽을 낮추려 하고 있습니다.`
  String get helpAnswer2 {
    return Intl.message(
      '\'심해\'는 익명의 서비스를 제공하고 있으며, 유족분들에게 \'고인과의 관계\', \'사별기간\' 등의 정보를 따로 받지 않고 소셜사이트 로그인으로 사용을 가능하게 하여 서비스에 대한 심리적 장벽을 낮추려 하고 있습니다.',
      name: 'helpAnswer2',
      desc: '',
      args: [],
    );
  }

  /// `제가 쓴 글은 언제까지 뜨나요?`
  String get helpQuestion3 {
    return Intl.message(
      '제가 쓴 글은 언제까지 뜨나요?',
      name: 'helpQuestion3',
      desc: '',
      args: [],
    );
  }

  /// `-'심해' 메인 페이지에서 > 글 쓰기 버튼을 눌러 작성하신 사연은 계속해서 랜덤으로 화면에 띄워집니다.\n( 마이페이지 > 건너 간 편지 ) 에서 확인 및 재업로드 (이전 삭제 시) 가 가능합니다. \n\n-추모공간 카테고리에 쓰신 글의 경우에는 일정 기간 이후 휘발됩니다.`
  String get helpAnswer3 {
    return Intl.message(
      '-\'심해\' 메인 페이지에서 > 글 쓰기 버튼을 눌러 작성하신 사연은 계속해서 랜덤으로 화면에 띄워집니다.\n( 마이페이지 > 건너 간 편지 ) 에서 확인 및 재업로드 (이전 삭제 시) 가 가능합니다. \n\n-추모공간 카테고리에 쓰신 글의 경우에는 일정 기간 이후 휘발됩니다.',
      name: 'helpAnswer3',
      desc: '',
      args: [],
    );
  }

  /// `제가 쓴 글을 지우고 싶어요.`
  String get helpQuestion4 {
    return Intl.message(
      '제가 쓴 글을 지우고 싶어요.',
      name: 'helpQuestion4',
      desc: '',
      args: [],
    );
  }

  /// `사연의 경우 ( 마이페이지 > 건너 간 편지 ) 에서 삭제해 주시면 됩니다.`
  String get helpAnswer4 {
    return Intl.message(
      '사연의 경우 ( 마이페이지 > 건너 간 편지 ) 에서 삭제해 주시면 됩니다.',
      name: 'helpAnswer4',
      desc: '',
      args: [],
    );
  }

  /// `광고나 비방성 글을 보았어요.`
  String get helpQuestion5 {
    return Intl.message(
      '광고나 비방성 글을 보았어요.',
      name: 'helpQuestion5',
      desc: '',
      args: [],
    );
  }

  /// `불편한 감정을 일으키는 글은 (마이페이지 > 문의하기) 로 가셔서 개별 신고 절차를 통해 처리하도록 하고 있습니다. 서비스 특성상 상시 모니터링을 하고 있지만 개인별로 느끼는 감정은 다르기에 주저 없이 문의해주시면 되겠습니다.`
  String get helpAnswer5 {
    return Intl.message(
      '불편한 감정을 일으키는 글은 (마이페이지 > 문의하기) 로 가셔서 개별 신고 절차를 통해 처리하도록 하고 있습니다. 서비스 특성상 상시 모니터링을 하고 있지만 개인별로 느끼는 감정은 다르기에 주저 없이 문의해주시면 되겠습니다.',
      name: 'helpAnswer5',
      desc: '',
      args: [],
    );
  }

  /// `도움말`
  String get help {
    return Intl.message(
      '도움말',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `설정`
  String get settings {
    return Intl.message(
      '설정',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `편지가 당신에게 오고 있습니다`
  String get storyIncomming {
    return Intl.message(
      '편지가 당신에게 오고 있습니다',
      name: 'storyIncomming',
      desc: '',
      args: [],
    );
  }

  /// `편지를 가져오는중 오류가 발생했습니다`
  String get letterLoadError {
    return Intl.message(
      '편지를 가져오는중 오류가 발생했습니다',
      name: 'letterLoadError',
      desc: '',
      args: [],
    );
  }

  /// `편지를 가져오는 중...`
  String get letterLoading {
    return Intl.message(
      '편지를 가져오는 중...',
      name: 'letterLoading',
      desc: '',
      args: [],
    );
  }

  /// `건너간 편지가 없습니다`
  String get letterEmpty {
    return Intl.message(
      '건너간 편지가 없습니다',
      name: 'letterEmpty',
      desc: '',
      args: [],
    );
  }

  /// `편지 수정`
  String get letterEdit {
    return Intl.message(
      '편지 수정',
      name: 'letterEdit',
      desc: '',
      args: [],
    );
  }

  /// `편지 삭제`
  String get letterDelete {
    return Intl.message(
      '편지 삭제',
      name: 'letterDelete',
      desc: '',
      args: [],
    );
  }

  /// `건너간 편지`
  String get sentLetters {
    return Intl.message(
      '건너간 편지',
      name: 'sentLetters',
      desc: '',
      args: [],
    );
  }

  /// `나의 바다`
  String get mySea {
    return Intl.message(
      '나의 바다',
      name: 'mySea',
      desc: '',
      args: [],
    );
  }

  /// `우리는 저마다의 속도로 슬픔을 통과합니다.\n(브룩 노엘, 패멀라 D. 블레어)`
  String get inducedPhrase1 {
    return Intl.message(
      '우리는 저마다의 속도로 슬픔을 통과합니다.\n(브룩 노엘, 패멀라 D. 블레어)',
      name: 'inducedPhrase1',
      desc: '',
      args: [],
    );
  }

  /// `소중한 누군가를 기억하고 얘기하는 당신이어서, 정말 고맙습니다.`
  String get inducedPhrase2 {
    return Intl.message(
      '소중한 누군가를 기억하고 얘기하는 당신이어서, 정말 고맙습니다.',
      name: 'inducedPhrase2',
      desc: '',
      args: [],
    );
  }

  /// `함께 이야기하고, 기억해도 괜찮습니다.`
  String get inducedPhrase3 {
    return Intl.message(
      '함께 이야기하고, 기억해도 괜찮습니다.',
      name: 'inducedPhrase3',
      desc: '',
      args: [],
    );
  }

  /// `저 깊은 심해에 마음을 털어놓는 건 어떨까요?`
  String get inducedPhrase4 {
    return Intl.message(
      '저 깊은 심해에 마음을 털어놓는 건 어떨까요?',
      name: 'inducedPhrase4',
      desc: '',
      args: [],
    );
  }

  /// `인터넷 연결을 확인해주세요`
  String get checkInternet {
    return Intl.message(
      '인터넷 연결을 확인해주세요',
      name: 'checkInternet',
      desc: '',
      args: [],
    );
  }

  /// `인터넷에 연결되어있지 않아 편지를 불러올 수 없습니다.`
  String get checkInternetDescription {
    return Intl.message(
      '인터넷에 연결되어있지 않아 편지를 불러올 수 없습니다.',
      name: 'checkInternetDescription',
      desc: '',
      args: [],
    );
  }

  /// `오늘 '당신의 바다'는 무슨 색 인가요?`
  String get paletteColorTitle {
    return Intl.message(
      '오늘 \'당신의 바다\'는 무슨 색 인가요?',
      name: 'paletteColorTitle',
      desc: '',
      args: [],
    );
  }

  /// `기분, 감정, 날씨 어느 것이어도 좋아요`
  String get paletteColorDescription1 {
    return Intl.message(
      '기분, 감정, 날씨 어느 것이어도 좋아요',
      name: 'paletteColorDescription1',
      desc: '',
      args: [],
    );
  }

  /// `오늘 당신의 바다 색을 정해보세요 :)`
  String get paletteColorDescription2 {
    return Intl.message(
      '오늘 당신의 바다 색을 정해보세요 :)',
      name: 'paletteColorDescription2',
      desc: '',
      args: [],
    );
  }

  /// `확인`
  String get apply {
    return Intl.message(
      '확인',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `편지 작성`
  String get letterWrite {
    return Intl.message(
      '편지 작성',
      name: 'letterWrite',
      desc: '',
      args: [],
    );
  }

  /// `편지를 띄우시겠습니까?`
  String get letterWriteApply {
    return Intl.message(
      '편지를 띄우시겠습니까?',
      name: 'letterWriteApply',
      desc: '',
      args: [],
    );
  }

  /// `인지하고 있습니다.`
  String get tosApply {
    return Intl.message(
      '인지하고 있습니다.',
      name: 'tosApply',
      desc: '',
      args: [],
    );
  }

  /// `전문보기`
  String get tosSeeMore {
    return Intl.message(
      '전문보기',
      name: 'tosSeeMore',
      desc: '',
      args: [],
    );
  }

  /// `이용약관`
  String get tos {
    return Intl.message(
      '이용약관',
      name: 'tos',
      desc: '',
      args: [],
    );
  }

  /// `인터넷 명예훼손`
  String get tosName1 {
    return Intl.message(
      '인터넷 명예훼손',
      name: 'tosName1',
      desc: '',
      args: [],
    );
  }

  /// `정보통신망 이용촉진 및 정보보호 등에 관한 법률`
  String get tosSummary1 {
    return Intl.message(
      '정보통신망 이용촉진 및 정보보호 등에 관한 법률',
      name: 'tosSummary1',
      desc: '',
      args: [],
    );
  }

  /// `1. 정의\n이용자는 명예훼손 등 타인의 권리를 침해하는 정보를 정보통신망에 유통시켜서는 안 됩니다(규제「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제44조제1항).\n\n※ “이용자”란 정보통신서비스 제공자가 제공하는 정보통신서비스를 이용하는 사람을 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제4호).\n\n※ “정보통신망”이란 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집·가공·저장·검색·송신 또는 수신하는 정보통신체제를 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호). ‘전기통신설비’란 유선·무선·광선 및 기타의 전자적 방식에 의하여 부호·문언·음향 또는 영상\n\n2. 처벌\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 사실을 드러내어 다른 사람의 명예를 훼손한 자는 3년 이하의 징역 또는 3천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제1항).\nㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반해 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).\n\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 거짓의 사실을 드러내어 다른 사람의 명예를 훼손한 자는 7년 이하의 징역, 10년 이하의 자격정지 또는 5천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제2항).\nㄴ> 위의 죄는 피해자가 구체적으로 밝힌 의사에 반하여 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).`
  String get tosDetail1 {
    return Intl.message(
      '1. 정의\n이용자는 명예훼손 등 타인의 권리를 침해하는 정보를 정보통신망에 유통시켜서는 안 됩니다(규제「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제44조제1항).\n\n※ “이용자”란 정보통신서비스 제공자가 제공하는 정보통신서비스를 이용하는 사람을 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제4호).\n\n※ “정보통신망”이란 전기통신설비를 이용하거나 전기통신설비와 컴퓨터 및 컴퓨터의 이용기술을 활용하여 정보를 수집·가공·저장·검색·송신 또는 수신하는 정보통신체제를 말합니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제2조제1항제1호). ‘전기통신설비’란 유선·무선·광선 및 기타의 전자적 방식에 의하여 부호·문언·음향 또는 영상\n\n2. 처벌\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 사실을 드러내어 다른 사람의 명예를 훼손한 자는 3년 이하의 징역 또는 3천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제1항).\nㄴ> ※ 위의 죄는 피해자가 구체적으로 밝힌 의사에 반해 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).\n\n- 사람을 비방할 목적으로 정보통신망을 통해 공공연하게 거짓의 사실을 드러내어 다른 사람의 명예를 훼손한 자는 7년 이하의 징역, 10년 이하의 자격정지 또는 5천만원 이하의 벌금에 처해집니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제2항).\nㄴ> 위의 죄는 피해자가 구체적으로 밝힌 의사에 반하여 공소를 제기할 수 없습니다(「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제70조제3항).',
      name: 'tosDetail1',
      desc: '',
      args: [],
    );
  }

  /// `사이버 모욕`
  String get tosName2 {
    return Intl.message(
      '사이버 모욕',
      name: 'tosName2',
      desc: '',
      args: [],
    );
  }

  /// `형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항`
  String get tosSummary2 {
    return Intl.message(
      '형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항',
      name: 'tosSummary2',
      desc: '',
      args: [],
    );
  }

  /// `1. 정의\n2008년 10월, 대한민국 정부는 사이버상 모욕 행위에 대해 형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항을 신설하는 것을 본격적으로 추진. 어떤 사람에 대한 사실이 아닌 내용을 많은 사람이 알 수 있도록 인터넷에 경멸적 감정을 담아 기재해 그 사람에 대한 사회적 평가를 훼손시킬 때 인정되는 죄\n\n2. 처벌\n형법 제311조(모욕)의 처벌과 동일(형법 제311조(모욕) 공연히 사람을 모욕한 자는 1년 이하의 징역이나 금고 또는 200만원 이하의 벌금에 처한다.)`
  String get tosDetail2 {
    return Intl.message(
      '1. 정의\n2008년 10월, 대한민국 정부는 사이버상 모욕 행위에 대해 형법 제311조의 모욕죄와 별도로 정보통신망법에 사이버 모욕죄 조항을 신설하는 것을 본격적으로 추진. 어떤 사람에 대한 사실이 아닌 내용을 많은 사람이 알 수 있도록 인터넷에 경멸적 감정을 담아 기재해 그 사람에 대한 사회적 평가를 훼손시킬 때 인정되는 죄\n\n2. 처벌\n형법 제311조(모욕)의 처벌과 동일(형법 제311조(모욕) 공연히 사람을 모욕한 자는 1년 이하의 징역이나 금고 또는 200만원 이하의 벌금에 처한다.)',
      name: 'tosDetail2',
      desc: '',
      args: [],
    );
  }

  /// `사이버 폭력`
  String get tosName3 {
    return Intl.message(
      '사이버 폭력',
      name: 'tosName3',
      desc: '',
      args: [],
    );
  }

  /// `사이버 폭력(악성 댓글)에 의한 피해자의 심리적 피해`
  String get tosSummary3 {
    return Intl.message(
      '사이버 폭력(악성 댓글)에 의한 피해자의 심리적 피해',
      name: 'tosSummary3',
      desc: '',
      args: [],
    );
  }

  /// `- 사이버폭력의 피해자들은 사건 이후, 극심한 우울증을 보이고 극단적으로는 자살을 하는 등 심각한 결과를 초래한다.\n사이버폭력으로 인한 학생 피해자의 심리적인 영향은 학교를 결석하거나, 낮은 성적을 받고, 낮은 집중력을 보이는 것과 유의미한 상관이 나타났고 또한 사회 불안을 유의미하게 증가시킨다는 결과를 나타냈다. \n사이버폭력의 가해자를 아는 경우와 모르는 경우로 구분하여 심리사회적인 문제를 측정하였다. 그 결과 가해자를 아는 경우에는 공격적인 행동이나 사회적 문제에서 유의미한 결과가 나타났고, 가해자를 모르는 경우에는 사회적 문제와 우울에서 유의미한 결과를 나타냈다. 결국 가해자가 아는 사람이든 모르는 사람이든 피해자의 심리에 상당한 부정적 영향을 미치는 것으로 나타났다.`
  String get tosDetail3 {
    return Intl.message(
      '- 사이버폭력의 피해자들은 사건 이후, 극심한 우울증을 보이고 극단적으로는 자살을 하는 등 심각한 결과를 초래한다.\n사이버폭력으로 인한 학생 피해자의 심리적인 영향은 학교를 결석하거나, 낮은 성적을 받고, 낮은 집중력을 보이는 것과 유의미한 상관이 나타났고 또한 사회 불안을 유의미하게 증가시킨다는 결과를 나타냈다. \n사이버폭력의 가해자를 아는 경우와 모르는 경우로 구분하여 심리사회적인 문제를 측정하였다. 그 결과 가해자를 아는 경우에는 공격적인 행동이나 사회적 문제에서 유의미한 결과가 나타났고, 가해자를 모르는 경우에는 사회적 문제와 우울에서 유의미한 결과를 나타냈다. 결국 가해자가 아는 사람이든 모르는 사람이든 피해자의 심리에 상당한 부정적 영향을 미치는 것으로 나타났다.',
      name: 'tosDetail3',
      desc: '',
      args: [],
    );
  }

  /// `컴퓨터 범죄`
  String get tosName4 {
    return Intl.message(
      '컴퓨터 범죄',
      name: 'tosName4',
      desc: '',
      args: [],
    );
  }

  /// `형법 제314조(업무방해), 형법 제347조의2(컴퓨터 등 사용사기)`
  String get tosSummary4 {
    return Intl.message(
      '형법 제314조(업무방해), 형법 제347조의2(컴퓨터 등 사용사기)',
      name: 'tosSummary4',
      desc: '',
      args: [],
    );
  }

  /// `-  제314조(업무방해) \n1-1. 정의 : ①항 : 제313조의 방법 또는 위력으로써 사람의 업무를 방해한 자\n1-2. 처벌 : 5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.  <개정 1995. 12. 29.>\n\n2-1. 정의 : ②항 : 컴퓨터등 정보처리장치 또는 전자기록등 특수매체기록을 손괴하거나 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 기타 방법으로 정보처리에 장애를 발생하게 하여 사람의 업무를 방해한 자\n2-2. 처벌 : 제1항의 형과 같다.(5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.)                                                                <신설 1995. 12. 29.>\n\n- 제347조의2(컴퓨터등 사용사기)  \n1. 정의  : 컴퓨터등 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 권한 없이 정보를 입력ㆍ변경하여 정보처리를 하게 함으로써 재산상의 이익을 취득하거나 제3자로 하여금 취득하게 한 자\n2. 처벌 : 10년 이하의 징역 또는 2천만원 이하의 벌금에 처한다. [전문개정 2001. 12. 29.]`
  String get tosDetail4 {
    return Intl.message(
      '-  제314조(업무방해) \n1-1. 정의 : ①항 : 제313조의 방법 또는 위력으로써 사람의 업무를 방해한 자\n1-2. 처벌 : 5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.  <개정 1995. 12. 29.>\n\n2-1. 정의 : ②항 : 컴퓨터등 정보처리장치 또는 전자기록등 특수매체기록을 손괴하거나 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 기타 방법으로 정보처리에 장애를 발생하게 하여 사람의 업무를 방해한 자\n2-2. 처벌 : 제1항의 형과 같다.(5년 이하의 징역 또는 1천500만원 이하의 벌금에 처한다.)                                                                <신설 1995. 12. 29.>\n\n- 제347조의2(컴퓨터등 사용사기)  \n1. 정의  : 컴퓨터등 정보처리장치에 허위의 정보 또는 부정한 명령을 입력하거나 권한 없이 정보를 입력ㆍ변경하여 정보처리를 하게 함으로써 재산상의 이익을 취득하거나 제3자로 하여금 취득하게 한 자\n2. 처벌 : 10년 이하의 징역 또는 2천만원 이하의 벌금에 처한다. [전문개정 2001. 12. 29.]',
      name: 'tosDetail4',
      desc: '',
      args: [],
    );
  }

  /// `본 서비스는 자살 유족들을 위한 소통 기능 및 정보를 제공합니다. 타인에게 과도한 불편함을 주는 표현은 삼가 주시길 바라며, 해당 내용은 신고 및 삭제 될 수 있습니다. 이용에 앞서, 서비스 관련 법률의 전문을 살펴보시기 바랍니다.`
  String get tosPrecautions {
    return Intl.message(
      '본 서비스는 자살 유족들을 위한 소통 기능 및 정보를 제공합니다. 타인에게 과도한 불편함을 주는 표현은 삼가 주시길 바라며, 해당 내용은 신고 및 삭제 될 수 있습니다. 이용에 앞서, 서비스 관련 법률의 전문을 살펴보시기 바랍니다.',
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