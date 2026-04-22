// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(versionNumber) => "Версия ${versionNumber}";

  static String m1(pctCarbs, pctFats, pctProteins) =>
      "${pctCarbs}% углеводов, ${pctFats}% жиров, ${pctProteins}% белков";

  static String m2(riskValue) => "Риск сопутствующих заболеваний: ${riskValue}";

  static String m3(age) => "${age} лет";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activityExample": MessageLookupByLibrary.simpleMessage(
            "например, бег, велосипед, йога ..."),
        "activityLabel": MessageLookupByLibrary.simpleMessage("Активность"),
        "addItemLabel":
            MessageLookupByLibrary.simpleMessage("Добавить новый элемент:"),
        "addLabel": MessageLookupByLibrary.simpleMessage("Добавить"),
        "additionalInfoLabelCompendium2011": MessageLookupByLibrary.simpleMessage(
            "Информация предоставлена\nиз «Справочника физических активностей, 2011»"),
        "additionalInfoLabelCustom": MessageLookupByLibrary.simpleMessage(
            "Пользовательский элемент питания"),
        "additionalInfoLabelFDC": MessageLookupByLibrary.simpleMessage(
            "Больше информации на\nFoodData Central"),
        "additionalInfoLabelOFF": MessageLookupByLibrary.simpleMessage(
            "Больше информации на\nOpenFoodFacts"),
        "additionalInfoLabelUnknown":
            MessageLookupByLibrary.simpleMessage("Неизвестное блюдо"),
        "ageLabel": MessageLookupByLibrary.simpleMessage("возраст"),
        "allItemsLabel": MessageLookupByLibrary.simpleMessage("Все"),
        "alphaVersionName": MessageLookupByLibrary.simpleMessage("[Альфа]"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "AIVIA — это бесплатный и открытый счётчик калорий и нутриентов, который сохраняет вашу конфиденциальность."),
        "appLicenseLabel":
            MessageLookupByLibrary.simpleMessage("Лицензия GPL-3.0"),
        "appTitle": MessageLookupByLibrary.simpleMessage("AIVIA"),
        "appVersionName": m0,
        "baseQuantityLabel":
            MessageLookupByLibrary.simpleMessage("Базовое количество (г/мл)"),
        "betaVersionName": MessageLookupByLibrary.simpleMessage("[Бета]"),
        "bmiInfo": MessageLookupByLibrary.simpleMessage(
            "Индекс массы тела (ИМТ) — это показатель для классификации избыточного веса и ожирения у взрослых. Он определяется как вес в килограммах, делённый на квадрат роста в метрах (кг/м²).\n\nИМТ не различает жировую и мышечную массу и может быть неточным для некоторых людей."),
        "bmiLabel": MessageLookupByLibrary.simpleMessage("ИМТ"),
        "breakfastExample": MessageLookupByLibrary.simpleMessage(
            "например, хлопья, молоко, кофе ..."),
        "breakfastLabel": MessageLookupByLibrary.simpleMessage("Завтрак"),
        "burnedLabel": MessageLookupByLibrary.simpleMessage(" Сожжено"),
        "buttonNextLabel": MessageLookupByLibrary.simpleMessage("Далее"),
        "buttonResetLabel": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "buttonSaveLabel": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "buttonStartLabel": MessageLookupByLibrary.simpleMessage("Старт"),
        "buttonYesLabel": MessageLookupByLibrary.simpleMessage("ДА"),
        "calculationsMacronutrientsDistributionLabel":
            MessageLookupByLibrary.simpleMessage(
                "Распределение макронутриентов"),
        "calculationsMacrosDistribution": m1,
        "calculationsRecommendedLabel":
            MessageLookupByLibrary.simpleMessage("(рекомендуется)"),
        "calculationsTDEEIOM2006Label":
            MessageLookupByLibrary.simpleMessage("Формула Института медицины"),
        "calculationsTDEELabel":
            MessageLookupByLibrary.simpleMessage("Формула TDEE"),
        "carbohydrateLabel": MessageLookupByLibrary.simpleMessage("углеводы"),
        "carbsLabel": MessageLookupByLibrary.simpleMessage("углеводы"),
        "chooseWeightGoalLabel":
            MessageLookupByLibrary.simpleMessage("Выберите цель по весу"),
        "cmLabel": MessageLookupByLibrary.simpleMessage("см"),
        "copyDialogTitle": MessageLookupByLibrary.simpleMessage(
            "В какой приём пищи вы хотите скопировать?"),
        "copyOrDeleteTimeDialogContent": MessageLookupByLibrary.simpleMessage(
            "С помощью «Скопировать на сегодня» вы можете скопировать блюдо на текущий день. С помощью «Удалить» вы можете удалить блюдо."),
        "copyOrDeleteTimeDialogTitle":
            MessageLookupByLibrary.simpleMessage("Что вы хотите сделать?"),
        "createCustomDialogContent": MessageLookupByLibrary.simpleMessage(
            " Вы хотите создать своё блюдо?"),
        "createCustomDialogTitle":
            MessageLookupByLibrary.simpleMessage(" Создать своё блюдо?"),
        "dailyKcalAdjustmentLabel": MessageLookupByLibrary.simpleMessage(
            "Ежедневная корректировка калорий:"),
        "dataCollectionLabel": MessageLookupByLibrary.simpleMessage(
            "Поддержите разработку, предоставив анонимные данные об использовании"),
        "deleteAllLabel": MessageLookupByLibrary.simpleMessage("Удалить всё"),
        "deleteTimeDialogContent": MessageLookupByLibrary.simpleMessage(
            "Вы хотите удалить выбранный элемент?"),
        "deleteTimeDialogPluralContent": MessageLookupByLibrary.simpleMessage(
            "Вы хотите удалить все элементы этого блюда?"),
        "deleteTimeDialogPluralTitle":
            MessageLookupByLibrary.simpleMessage("Удалить элементы?"),
        "deleteTimeDialogTitle":
            MessageLookupByLibrary.simpleMessage("Удалить элемент?"),
        "dialogCancelLabel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "dialogCopyLabel":
            MessageLookupByLibrary.simpleMessage("Скопировать на сегодня"),
        "dialogDeleteLabel": MessageLookupByLibrary.simpleMessage("УДАЛИТЬ"),
        "dialogOKLabel": MessageLookupByLibrary.simpleMessage("Ок"),
        "diaryLabel": MessageLookupByLibrary.simpleMessage("Дневник"),
        "dinnerExample": MessageLookupByLibrary.simpleMessage(
            "например, суп, курица, вино ..."),
        "dinnerLabel": MessageLookupByLibrary.simpleMessage("Ужин"),
        "disclaimerText": MessageLookupByLibrary.simpleMessage(
            "AIVIA не является медицинским приложением. Все предоставленные данные не проверены и должны использоваться с осторожностью. Поддерживайте здоровый образ жизни и консультируйтесь со специалистом при возникновении проблем. Использование во время болезни, беременности или лактации не рекомендуется."),
        "editItemDialogTitle":
            MessageLookupByLibrary.simpleMessage("Редактировать элемент"),
        "editMealLabel":
            MessageLookupByLibrary.simpleMessage("Редактировать блюдо"),
        "energyLabel": MessageLookupByLibrary.simpleMessage("энергия"),
        "errorFetchingProductData": MessageLookupByLibrary.simpleMessage(
            "Ошибка при получении данных о продукте"),
        "errorLoadingActivities": MessageLookupByLibrary.simpleMessage(
            "Ошибка при загрузке активности"),
        "errorMealSave": MessageLookupByLibrary.simpleMessage(
            "Что-то пошло не так при сохранении блюда. Убедитесь, что информация указана верно?"),
        "errorOpeningBrowser": MessageLookupByLibrary.simpleMessage(
            "Ошибка при открытии браузера"),
        "errorOpeningEmail": MessageLookupByLibrary.simpleMessage(
            "Ошибка при открытии почтового приложения"),
        "errorProductNotFound":
            MessageLookupByLibrary.simpleMessage("Продукт не найден"),
        "exportAction": MessageLookupByLibrary.simpleMessage("Экспорт"),
        "exportImportDescription": MessageLookupByLibrary.simpleMessage(
            "Вы можете экспортировать данные приложения в zip-файл и импортировать их позже. Это полезно, если вы хотите создать резервную копию данных или перенести их на другое устройство.\n\nПриложение не использует облачные сервисы для хранения ваших данных."),
        "exportImportErrorLabel":
            MessageLookupByLibrary.simpleMessage("Ошибка экспорта / импорта"),
        "exportImportLabel":
            MessageLookupByLibrary.simpleMessage("Экспорт / Импорт данных"),
        "exportImportSuccessLabel": MessageLookupByLibrary.simpleMessage(
            "Экспорт / Импорт выполнен успешно"),
        "fatLabel": MessageLookupByLibrary.simpleMessage("жиры"),
        "fiberLabel": MessageLookupByLibrary.simpleMessage("клетчатка"),
        "flOzUnit": MessageLookupByLibrary.simpleMessage("жидк. унция"),
        "ftLabel": MessageLookupByLibrary.simpleMessage("ft"),
        "genderFemaleLabel": MessageLookupByLibrary.simpleMessage("♀ Женский"),
        "genderLabel": MessageLookupByLibrary.simpleMessage("Пол"),
        "genderMaleLabel": MessageLookupByLibrary.simpleMessage("♂ Мужской"),
        "goalGainWeight": MessageLookupByLibrary.simpleMessage("Набрать вес"),
        "goalLabel": MessageLookupByLibrary.simpleMessage("Цель"),
        "goalLoseWeight": MessageLookupByLibrary.simpleMessage("Похудеть"),
        "goalMaintainWeight":
            MessageLookupByLibrary.simpleMessage("Поддерживать вес"),
        "gramMilliliterUnit": MessageLookupByLibrary.simpleMessage("г/мл"),
        "gramUnit": MessageLookupByLibrary.simpleMessage("г"),
        "heightLabel": MessageLookupByLibrary.simpleMessage("рост"),
        "homeLabel": MessageLookupByLibrary.simpleMessage("Главная"),
        "importAction": MessageLookupByLibrary.simpleMessage("Импорт"),
        "infoAddedActivityLabel":
            MessageLookupByLibrary.simpleMessage("Добавлена новая активность"),
        "infoAddedIntakeLabel":
            MessageLookupByLibrary.simpleMessage("Добавлен новый приём пищи"),
        "itemDeletedSnackbar":
            MessageLookupByLibrary.simpleMessage("Элемент удалён"),
        "itemUpdatedSnackbar":
            MessageLookupByLibrary.simpleMessage("Элемент обновлён"),
        "kcalLabel": MessageLookupByLibrary.simpleMessage("ккал"),
        "kcalLeftLabel": MessageLookupByLibrary.simpleMessage("Осталось ккал"),
        "kgLabel": MessageLookupByLibrary.simpleMessage("кг"),
        "lbsLabel": MessageLookupByLibrary.simpleMessage("lbs"),
        "lunchExample": MessageLookupByLibrary.simpleMessage(
            "например, пицца, салат, рис ..."),
        "lunchLabel": MessageLookupByLibrary.simpleMessage("Обед"),
        "macroDistributionLabel": MessageLookupByLibrary.simpleMessage(
            "Распределение макронутриентов:"),
        "mealBrandsLabel": MessageLookupByLibrary.simpleMessage("Бренды"),
        "mealCarbsLabel": MessageLookupByLibrary.simpleMessage("углеводов на"),
        "mealFatLabel": MessageLookupByLibrary.simpleMessage("жиров на"),
        "mealKcalLabel": MessageLookupByLibrary.simpleMessage("ккал на"),
        "mealNameLabel": MessageLookupByLibrary.simpleMessage("Название блюда"),
        "mealProteinLabel":
            MessageLookupByLibrary.simpleMessage("белков на 100 г/мл"),
        "mealSizeLabel":
            MessageLookupByLibrary.simpleMessage("Размер блюда (г/мл)"),
        "mealSizeLabelImperial": MessageLookupByLibrary.simpleMessage(
            "Размер блюда (унции/жидк. унции)"),
        "mealUnitLabel": MessageLookupByLibrary.simpleMessage("Единица блюда"),
        "milliliterUnit": MessageLookupByLibrary.simpleMessage("мл"),
        "missingProductInfo": MessageLookupByLibrary.simpleMessage(
            "У продукта отсутствует информация о калориях или макронутриентах"),
        "noActivityRecentlyAddedLabel":
            MessageLookupByLibrary.simpleMessage(" Недавних действий нет "),
        "noMealsRecentlyAddedLabel":
            MessageLookupByLibrary.simpleMessage("Недавних блюд не добавлено"),
        "noResultsFound":
            MessageLookupByLibrary.simpleMessage("Результатов не найдено"),
        "notAvailableLabel": MessageLookupByLibrary.simpleMessage("н/д"),
        "nothingAddedLabel":
            MessageLookupByLibrary.simpleMessage("Ничего не добавлено"),
        "nutritionInfoLabel":
            MessageLookupByLibrary.simpleMessage("Пищевая информация"),
        "nutritionalStatusNormalWeight":
            MessageLookupByLibrary.simpleMessage("Нормальный вес"),
        "nutritionalStatusObeseClassI":
            MessageLookupByLibrary.simpleMessage("Ожирение I степени"),
        "nutritionalStatusObeseClassII":
            MessageLookupByLibrary.simpleMessage("Ожирение II степени"),
        "nutritionalStatusObeseClassIII":
            MessageLookupByLibrary.simpleMessage("Ожирение III степени"),
        "nutritionalStatusPreObesity": MessageLookupByLibrary.simpleMessage(
            "Избыточный вес (предожирение)"),
        "nutritionalStatusRiskAverage":
            MessageLookupByLibrary.simpleMessage("Средний"),
        "nutritionalStatusRiskIncreased":
            MessageLookupByLibrary.simpleMessage("Повышенный"),
        "nutritionalStatusRiskLabel": m2,
        "nutritionalStatusRiskLow": MessageLookupByLibrary.simpleMessage(
            "Низкий \n(но повышен риск других \nклинических проблем)"),
        "nutritionalStatusRiskModerate":
            MessageLookupByLibrary.simpleMessage("Умеренный"),
        "nutritionalStatusRiskSevere":
            MessageLookupByLibrary.simpleMessage("Высокий"),
        "nutritionalStatusRiskVerySevere":
            MessageLookupByLibrary.simpleMessage("Очень высокий"),
        "nutritionalStatusUnderweight":
            MessageLookupByLibrary.simpleMessage("Недостаточный вес"),
        "offDisclaimer": MessageLookupByLibrary.simpleMessage(
            "Данные, предоставленные в этом приложении, получены из базы Open Food Facts. Не гарантируется точность, полнота или надёжность предоставленной информации. Данные предоставляются «как есть», и исходный источник (Open Food Facts) не несёт ответственности за возможные последствия их использования."),
        "onboardingActivityQuestionSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Насколько вы активны? (без тренировок)"),
        "onboardingBirthdayHint":
            MessageLookupByLibrary.simpleMessage("Введите дату"),
        "onboardingBirthdayQuestionSubtitle":
            MessageLookupByLibrary.simpleMessage("Когда у вас день рождения?"),
        "onboardingEnterBirthdayLabel":
            MessageLookupByLibrary.simpleMessage("День рождения"),
        "onboardingGenderQuestionSubtitle":
            MessageLookupByLibrary.simpleMessage("Ваш пол?"),
        "onboardingGoalQuestionSubtitle": MessageLookupByLibrary.simpleMessage(
            "Какова ваша текущая цель по весу?"),
        "onboardingHeightExampleHintCm":
            MessageLookupByLibrary.simpleMessage("например, 170"),
        "onboardingHeightExampleHintFt":
            MessageLookupByLibrary.simpleMessage("например, 5.8"),
        "onboardingHeightQuestionSubtitle":
            MessageLookupByLibrary.simpleMessage("Какой у вас текущий рост?"),
        "onboardingIntroDescription": MessageLookupByLibrary.simpleMessage(
            " Для начала работы приложению потребуется некоторая информация о вас, чтобы точнее рассчитать вашу дневную норму калорий. Вся информация о вас хранится в безопасности на вашем устройстве."),
        "onboardingKcalPerDayLabel":
            MessageLookupByLibrary.simpleMessage("ккал в день"),
        "onboardingOverviewLabel":
            MessageLookupByLibrary.simpleMessage("Обзор"),
        "onboardingSaveUserError": MessageLookupByLibrary.simpleMessage(
            "Неверный ввод, попробуйте ещё раз"),
        "onboardingWeightExampleHintKg":
            MessageLookupByLibrary.simpleMessage("например, 60"),
        "onboardingWeightExampleHintLbs":
            MessageLookupByLibrary.simpleMessage("например, 132"),
        "onboardingWeightQuestionSubtitle":
            MessageLookupByLibrary.simpleMessage("Какой у вас текущий вес?"),
        "onboardingWelcomeLabel":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать в"),
        "onboardingWrongHeightLabel":
            MessageLookupByLibrary.simpleMessage("Введите правильный рост"),
        "onboardingWrongWeightLabel":
            MessageLookupByLibrary.simpleMessage("Введите правильный вес"),
        "onboardingYourGoalLabel":
            MessageLookupByLibrary.simpleMessage("Ваша цель по калориям:"),
        "onboardingYourMacrosGoalLabel": MessageLookupByLibrary.simpleMessage(
            "Ваши цели по макронутриентам:"),
        "ozUnit": MessageLookupByLibrary.simpleMessage("унция"),
        "paAmericanFootballGeneral":
            MessageLookupByLibrary.simpleMessage("американский футбол"),
        "paAmericanFootballGeneralDesc":
            MessageLookupByLibrary.simpleMessage("тэг, флаг, общее"),
        "paArcheryGeneral":
            MessageLookupByLibrary.simpleMessage("стрельба из лука"),
        "paArcheryGeneralDesc":
            MessageLookupByLibrary.simpleMessage("не охотничья"),
        "paAutoRacing": MessageLookupByLibrary.simpleMessage("автогонки"),
        "paAutoRacingDesc":
            MessageLookupByLibrary.simpleMessage("формула, картинг"),
        "paBackpackingGeneral": MessageLookupByLibrary.simpleMessage("поход"),
        "paBackpackingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paBadmintonGeneral": MessageLookupByLibrary.simpleMessage("бадминтон"),
        "paBadmintonGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "любительские одиночные и парные игры, общее"),
        "paBasketballGeneral":
            MessageLookupByLibrary.simpleMessage("баскетбол"),
        "paBasketballGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paBicyclingGeneral":
            MessageLookupByLibrary.simpleMessage("езда на велосипеде"),
        "paBicyclingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paBicyclingMountainGeneral":
            MessageLookupByLibrary.simpleMessage("горный велосипед"),
        "paBicyclingMountainGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paBicyclingStationaryGeneral":
            MessageLookupByLibrary.simpleMessage("велотренажёр"),
        "paBicyclingStationaryGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paBilliardsGeneral": MessageLookupByLibrary.simpleMessage("бильярд"),
        "paBilliardsGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paBowlingGeneral": MessageLookupByLibrary.simpleMessage("боулинг"),
        "paBowlingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paBoxingBag": MessageLookupByLibrary.simpleMessage("бокс"),
        "paBoxingBagDesc":
            MessageLookupByLibrary.simpleMessage("бокс с грушей"),
        "paBoxingGeneral": MessageLookupByLibrary.simpleMessage("бокс"),
        "paBoxingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("на ринге, общее"),
        "paBroomball": MessageLookupByLibrary.simpleMessage("брумбол"),
        "paBroomballDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paCalisthenicsGeneral":
            MessageLookupByLibrary.simpleMessage("калистеника"),
        "paCalisthenicsGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "лёгкие или умеренные усилия, общее (например, упражнения для спины)"),
        "paCanoeingGeneral":
            MessageLookupByLibrary.simpleMessage("гребля на каноэ"),
        "paCanoeingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("для удовольствия, общее"),
        "paCatch": MessageLookupByLibrary.simpleMessage("футбол или бейсбол"),
        "paCatchDesc": MessageLookupByLibrary.simpleMessage("игра в мяч"),
        "paCheerleading": MessageLookupByLibrary.simpleMessage("черлидинг"),
        "paCheerleadingDesc": MessageLookupByLibrary.simpleMessage(
            "гимнастические элементы, соревнования"),
        "paChildrenGame": MessageLookupByLibrary.simpleMessage("детские игры"),
        "paChildrenGameDesc": MessageLookupByLibrary.simpleMessage(
            "(например: классики, вышибалы, скакалка, аркадные игры), умеренное усилие"),
        "paClimbingHillsNoLoadGeneral":
            MessageLookupByLibrary.simpleMessage("подъём в гору без груза"),
        "paClimbingHillsNoLoadGeneralDesc":
            MessageLookupByLibrary.simpleMessage("без груза"),
        "paCricket": MessageLookupByLibrary.simpleMessage("крикет"),
        "paCricketDesc": MessageLookupByLibrary.simpleMessage(
            "бэттинг, боулинг, полевая игра"),
        "paCroquet": MessageLookupByLibrary.simpleMessage("крокет"),
        "paCroquetDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paCurling": MessageLookupByLibrary.simpleMessage("кёрлинг"),
        "paCurlingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paDancingAerobicGeneral":
            MessageLookupByLibrary.simpleMessage("аэробные танцы"),
        "paDancingAerobicGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paDancingGeneral": MessageLookupByLibrary.simpleMessage("общие танцы"),
        "paDancingGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "например: диско, народные, ирландский степ, линейные танцы, полька, контра, кантри"),
        "paDartsWall": MessageLookupByLibrary.simpleMessage("дартс"),
        "paDartsWallDesc":
            MessageLookupByLibrary.simpleMessage("настенный или уличный"),
        "paDivingGeneral": MessageLookupByLibrary.simpleMessage("дайвинг"),
        "paDivingGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "подводное плавание, акваланг, общее"),
        "paDivingSpringboardPlatform":
            MessageLookupByLibrary.simpleMessage("прыжки в воду"),
        "paDivingSpringboardPlatformDesc":
            MessageLookupByLibrary.simpleMessage("с трамплина или платформы"),
        "paFencing": MessageLookupByLibrary.simpleMessage("фехтование"),
        "paFencingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paFrisbee": MessageLookupByLibrary.simpleMessage("фрисби"),
        "paFrisbeeDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paGolfGeneral": MessageLookupByLibrary.simpleMessage("гольф"),
        "paGolfGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paGymnasticsGeneral":
            MessageLookupByLibrary.simpleMessage("гимнастика"),
        "paGymnasticsGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paHackySack": MessageLookupByLibrary.simpleMessage("хэкки-сэк"),
        "paHackySackDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paHandballGeneral": MessageLookupByLibrary.simpleMessage("гандбол"),
        "paHandballGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paHangGliding":
            MessageLookupByLibrary.simpleMessage("дельтапланеризм"),
        "paHangGlidingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paHeadingBicycling":
            MessageLookupByLibrary.simpleMessage("езда на велосипеде"),
        "paHeadingConditionalExercise":
            MessageLookupByLibrary.simpleMessage("силовые упражнения"),
        "paHeadingDancing": MessageLookupByLibrary.simpleMessage("танцы"),
        "paHeadingRunning": MessageLookupByLibrary.simpleMessage("бег"),
        "paHeadingSports": MessageLookupByLibrary.simpleMessage("спорт"),
        "paHeadingWalking": MessageLookupByLibrary.simpleMessage("ходьба"),
        "paHeadingWaterActivities":
            MessageLookupByLibrary.simpleMessage("водные виды активности"),
        "paHeadingWinterActivities":
            MessageLookupByLibrary.simpleMessage("зимние виды активности"),
        "paHikingCrossCountry":
            MessageLookupByLibrary.simpleMessage("пеший туризм"),
        "paHikingCrossCountryDesc":
            MessageLookupByLibrary.simpleMessage("по пересечённой местности"),
        "paHockeyField":
            MessageLookupByLibrary.simpleMessage("хоккей на траве"),
        "paHockeyFieldDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paHorseRidingGeneral":
            MessageLookupByLibrary.simpleMessage("верховая езда"),
        "paHorseRidingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paIceHockeyGeneral":
            MessageLookupByLibrary.simpleMessage("хоккей на льду"),
        "paIceHockeyGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paIceSkatingGeneral":
            MessageLookupByLibrary.simpleMessage("катание на коньках"),
        "paIceSkatingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paJaiAlai": MessageLookupByLibrary.simpleMessage("хай-алай"),
        "paJaiAlaiDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paJoggingGeneral":
            MessageLookupByLibrary.simpleMessage("бег разминочным темпом"),
        "paJoggingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paJuggling": MessageLookupByLibrary.simpleMessage("жонглирование"),
        "paJugglingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paKayakingModerate": MessageLookupByLibrary.simpleMessage("каякинг"),
        "paKayakingModerateDesc":
            MessageLookupByLibrary.simpleMessage("умеренное усилие"),
        "paKickball": MessageLookupByLibrary.simpleMessage("кикбол"),
        "paKickballDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paLacrosse": MessageLookupByLibrary.simpleMessage("лакросс"),
        "paLacrosseDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paLawnBowling":
            MessageLookupByLibrary.simpleMessage("боулинг на траве"),
        "paLawnBowlingDesc":
            MessageLookupByLibrary.simpleMessage("игра на улице"),
        "paMartialArtsModerate":
            MessageLookupByLibrary.simpleMessage("боевые искусства"),
        "paMartialArtsModerateDesc": MessageLookupByLibrary.simpleMessage(
            "разные виды, умеренный темп (дзюдо, каратэ, кикбоксинг, муай-тай и др.)"),
        "paMartialArtsSlower":
            MessageLookupByLibrary.simpleMessage("боевые искусства"),
        "paMartialArtsSlowerDesc": MessageLookupByLibrary.simpleMessage(
            "разные виды, медленный темп, начинающие, тренировка"),
        "paMotoCross": MessageLookupByLibrary.simpleMessage("мотокросс"),
        "paMotoCrossDesc": MessageLookupByLibrary.simpleMessage(
            "внедорожные гонки, квадроциклы, общее"),
        "paMountainClimbing":
            MessageLookupByLibrary.simpleMessage("скалолазание"),
        "paMountainClimbingDesc":
            MessageLookupByLibrary.simpleMessage("скалы или горы"),
        "paOrienteering":
            MessageLookupByLibrary.simpleMessage("ориентирование"),
        "paOrienteeringDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paPaddleBoarding":
            MessageLookupByLibrary.simpleMessage("паддлбординг"),
        "paPaddleBoardingDesc": MessageLookupByLibrary.simpleMessage("стоя"),
        "paPaddleBoat": MessageLookupByLibrary.simpleMessage("катамаран"),
        "paPaddleBoatDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paPaddleball": MessageLookupByLibrary.simpleMessage("пэдлбол"),
        "paPaddleballDesc":
            MessageLookupByLibrary.simpleMessage("любительский, общее"),
        "paPoloHorse": MessageLookupByLibrary.simpleMessage("поло"),
        "paPoloHorseDesc": MessageLookupByLibrary.simpleMessage("верхом"),
        "paRacquetball": MessageLookupByLibrary.simpleMessage("ракетбол"),
        "paRacquetballDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paResistanceTraining":
            MessageLookupByLibrary.simpleMessage("силовые тренировки"),
        "paResistanceTrainingDesc": MessageLookupByLibrary.simpleMessage(
            "поднятие веса, свободные веса, тренажёры"),
        "paRodeoSportGeneralModerate":
            MessageLookupByLibrary.simpleMessage("родео"),
        "paRodeoSportGeneralModerateDesc":
            MessageLookupByLibrary.simpleMessage("общее, умеренное усилие"),
        "paRollerbladingLight":
            MessageLookupByLibrary.simpleMessage("роликовые коньки (in-line)"),
        "paRollerbladingLightDesc":
            MessageLookupByLibrary.simpleMessage("инлайн-скейтинг"),
        "paRopeJumpingGeneral":
            MessageLookupByLibrary.simpleMessage("скакалка"),
        "paRopeJumpingGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "средний темп, 100-120 прыжков/мин, общее"),
        "paRopeSkippingGeneral":
            MessageLookupByLibrary.simpleMessage("прыжки через скакалку"),
        "paRopeSkippingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paRugbyCompetitive": MessageLookupByLibrary.simpleMessage("регби"),
        "paRugbyCompetitiveDesc":
            MessageLookupByLibrary.simpleMessage("командное, соревновательное"),
        "paRugbyNonCompetitive": MessageLookupByLibrary.simpleMessage("регби"),
        "paRugbyNonCompetitiveDesc": MessageLookupByLibrary.simpleMessage(
            "тэг-регби, несоревновательное"),
        "paRunningGeneral": MessageLookupByLibrary.simpleMessage("бег"),
        "paRunningGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSailingGeneral":
            MessageLookupByLibrary.simpleMessage("парусный спорт"),
        "paSailingGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "яхты, виндсёрфинг, ледовый парус, общее"),
        "paShuffleboard": MessageLookupByLibrary.simpleMessage("шаффлборд"),
        "paShuffleboardDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSkateboardingGeneral":
            MessageLookupByLibrary.simpleMessage("скейтбординг"),
        "paSkateboardingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее, умеренное усилие"),
        "paSkatingRoller":
            MessageLookupByLibrary.simpleMessage("роликовые коньки"),
        "paSkatingRollerDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSkiingGeneral": MessageLookupByLibrary.simpleMessage("лыжи"),
        "paSkiingGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSkiingWaterWakeboarding":
            MessageLookupByLibrary.simpleMessage("водные лыжи"),
        "paSkiingWaterWakeboardingDesc":
            MessageLookupByLibrary.simpleMessage("водные лыжи или вейкбординг"),
        "paSkydiving":
            MessageLookupByLibrary.simpleMessage("прыжки с парашютом"),
        "paSkydivingDesc": MessageLookupByLibrary.simpleMessage(
            "парашют, бейсджампинг, банджи"),
        "paSnorkeling":
            MessageLookupByLibrary.simpleMessage("подводное плавание"),
        "paSnorkelingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSnowShovingModerate":
            MessageLookupByLibrary.simpleMessage("расчистка снега"),
        "paSnowShovingModerateDesc":
            MessageLookupByLibrary.simpleMessage("вручную, умеренное усилие"),
        "paSoccerGeneral": MessageLookupByLibrary.simpleMessage("футбол"),
        "paSoccerGeneralDesc":
            MessageLookupByLibrary.simpleMessage("любительский, общее"),
        "paSoftballBaseballGeneral":
            MessageLookupByLibrary.simpleMessage("софтбол / бейсбол"),
        "paSoftballBaseballGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "быстрый или медленный подача, общее"),
        "paSquashGeneral": MessageLookupByLibrary.simpleMessage("сквош"),
        "paSquashGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paSurfing": MessageLookupByLibrary.simpleMessage("сёрфинг"),
        "paSurfingDesc": MessageLookupByLibrary.simpleMessage(
            "на доске или бодиборд, общее"),
        "paSwimmingGeneral": MessageLookupByLibrary.simpleMessage("плавание"),
        "paSwimmingGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "нахождение на воде, умеренное усилие, общее"),
        "paTableTennisGeneral":
            MessageLookupByLibrary.simpleMessage("настольный теннис"),
        "paTableTennisGeneralDesc":
            MessageLookupByLibrary.simpleMessage("пинг-понг"),
        "paTaiChiQiGongGeneral":
            MessageLookupByLibrary.simpleMessage("тай-чи, цигун"),
        "paTaiChiQiGongGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paTennisGeneral": MessageLookupByLibrary.simpleMessage("теннис"),
        "paTennisGeneralDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paTrackField": MessageLookupByLibrary.simpleMessage("лёгкая атлетика"),
        "paTrackField1Desc": MessageLookupByLibrary.simpleMessage(
            "(например: толкание ядра, метание диска, молота)"),
        "paTrackField2Desc": MessageLookupByLibrary.simpleMessage(
            "(например: прыжки в высоту, длину, тройной, метание копья, шест)"),
        "paTrackField3Desc": MessageLookupByLibrary.simpleMessage(
            "(например: стипльчез, барьеры)"),
        "paTrampolineLight": MessageLookupByLibrary.simpleMessage("батут"),
        "paTrampolineLightDesc":
            MessageLookupByLibrary.simpleMessage("развлекательный"),
        "paUnicyclingGeneral":
            MessageLookupByLibrary.simpleMessage("езда на моноцикле"),
        "paUnicyclingGeneralDesc":
            MessageLookupByLibrary.simpleMessage("общее"),
        "paVolleyballGeneral": MessageLookupByLibrary.simpleMessage("волейбол"),
        "paVolleyballGeneralDesc": MessageLookupByLibrary.simpleMessage(
            "несоревновательный, 6-9 игроков, общее"),
        "paWalkingForPleasure":
            MessageLookupByLibrary.simpleMessage("прогулка"),
        "paWalkingForPleasureDesc":
            MessageLookupByLibrary.simpleMessage("для удовольствия"),
        "paWalkingTheDog": MessageLookupByLibrary.simpleMessage("выгул собаки"),
        "paWalkingTheDogDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paWallyball": MessageLookupByLibrary.simpleMessage("уоллибoл в зале"),
        "paWallyballDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paWaterAerobics":
            MessageLookupByLibrary.simpleMessage("водные упражнения"),
        "paWaterAerobicsDesc": MessageLookupByLibrary.simpleMessage(
            "водная аэробика, водная калистеника"),
        "paWaterPolo": MessageLookupByLibrary.simpleMessage("водное поло"),
        "paWaterPoloDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paWaterVolleyball":
            MessageLookupByLibrary.simpleMessage("водный волейбол"),
        "paWaterVolleyballDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "paWateraerobicsCalisthenics":
            MessageLookupByLibrary.simpleMessage("водная аэробика"),
        "paWateraerobicsCalisthenicsDesc": MessageLookupByLibrary.simpleMessage(
            "водная аэробика, водная гимнастика"),
        "paWrestling": MessageLookupByLibrary.simpleMessage("борьба"),
        "paWrestlingDesc": MessageLookupByLibrary.simpleMessage("общее"),
        "palActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
            "в основном стоячая или ходячая работа и активный отдых"),
        "palActiveLabel": MessageLookupByLibrary.simpleMessage("Активный"),
        "palLowActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
            "например, сидячая или стоячая работа и лёгкая активность в свободное время"),
        "palLowLActiveLabel":
            MessageLookupByLibrary.simpleMessage("Низкая активность"),
        "palSedentaryDescriptionLabel": MessageLookupByLibrary.simpleMessage(
            "например, офисная работа и в основном неактивный отдых"),
        "palSedentaryLabel":
            MessageLookupByLibrary.simpleMessage("Малоподвижный"),
        "palVeryActiveDescriptionLabel": MessageLookupByLibrary.simpleMessage(
            "в основном ходьба, бег или переноска тяжестей на работе и активный отдых"),
        "palVeryActiveLabel":
            MessageLookupByLibrary.simpleMessage("Очень активный"),
        "per100gmlLabel": MessageLookupByLibrary.simpleMessage("На 100 г/мл"),
        "perServingLabel": MessageLookupByLibrary.simpleMessage("На порцию"),
        "privacyPolicyLabel":
            MessageLookupByLibrary.simpleMessage("Политика конфиденциальности"),
        "profileLabel": MessageLookupByLibrary.simpleMessage("Профиль"),
        "proteinLabel": MessageLookupByLibrary.simpleMessage("белки"),
        "quantityLabel": MessageLookupByLibrary.simpleMessage("Количество"),
        "readLabel": MessageLookupByLibrary.simpleMessage(
            "Я прочитал(а) и принимаю политику конфиденциальности."),
        "recentlyAddedLabel": MessageLookupByLibrary.simpleMessage("Недавние"),
        "reportErrorDialogText": MessageLookupByLibrary.simpleMessage(
            "Хотите сообщить об ошибке разработчику?"),
        "retryLabel": MessageLookupByLibrary.simpleMessage("Повторить"),
        "saturatedFatLabel":
            MessageLookupByLibrary.simpleMessage("насыщенные жиры"),
        "scanProductLabel":
            MessageLookupByLibrary.simpleMessage("Сканировать продукт"),
        "searchDefaultLabel": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите блюдо для поиска"),
        "searchFoodPage": MessageLookupByLibrary.simpleMessage("Еда"),
        "searchLabel": MessageLookupByLibrary.simpleMessage("Поиск"),
        "searchProductsPage": MessageLookupByLibrary.simpleMessage("Продукты"),
        "searchResultsLabel":
            MessageLookupByLibrary.simpleMessage("Результаты поиска"),
        "selectGenderDialogLabel":
            MessageLookupByLibrary.simpleMessage("Выберите пол"),
        "selectHeightDialogLabel":
            MessageLookupByLibrary.simpleMessage("Укажите свой рост"),
        "selectPalCategoryLabel":
            MessageLookupByLibrary.simpleMessage("Выберите уровень активности"),
        "selectWeightDialogLabel":
            MessageLookupByLibrary.simpleMessage("Укажите свой вес"),
        "sendAnonymousUserData": MessageLookupByLibrary.simpleMessage(
            "Отправлять анонимные данные об использовании"),
        "servingLabel": MessageLookupByLibrary.simpleMessage("Порция"),
        "servingSizeLabelImperial": MessageLookupByLibrary.simpleMessage(
            "Размер порции (унции/жидк. унции)"),
        "servingSizeLabelMetric":
            MessageLookupByLibrary.simpleMessage("Размер порции (г/мл)"),
        "settingAboutLabel":
            MessageLookupByLibrary.simpleMessage("О программе"),
        "settingFeedbackLabel":
            MessageLookupByLibrary.simpleMessage("Обратная связь"),
        "settingsCalculationsLabel":
            MessageLookupByLibrary.simpleMessage("Вычисления"),
        "settingsDisclaimerLabel":
            MessageLookupByLibrary.simpleMessage("Отказ от ответственности"),
        "settingsDistanceLabel":
            MessageLookupByLibrary.simpleMessage("Расстояние"),
        "settingsImperialLabel": MessageLookupByLibrary.simpleMessage(
            "Имперская (фунты, футы, унции)"),
        "settingsLabel": MessageLookupByLibrary.simpleMessage("Настройки"),
        "settingsLicensesLabel":
            MessageLookupByLibrary.simpleMessage("Лицензии"),
        "settingsMassLabel": MessageLookupByLibrary.simpleMessage("Масса"),
        "settingsMetricLabel":
            MessageLookupByLibrary.simpleMessage("Метрическая (кг, см, мл)"),
        "settingsPrivacySettings": MessageLookupByLibrary.simpleMessage(
            "Настройки конфиденциальности"),
        "settingsReportErrorLabel":
            MessageLookupByLibrary.simpleMessage("Сообщить об ошибке"),
        "settingsSourceCodeLabel":
            MessageLookupByLibrary.simpleMessage("Исходный код"),
        "settingsSystemLabel": MessageLookupByLibrary.simpleMessage("Система"),
        "settingsThemeDarkLabel":
            MessageLookupByLibrary.simpleMessage("Тёмная"),
        "settingsThemeLabel": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsThemeLightLabel":
            MessageLookupByLibrary.simpleMessage("Светлая"),
        "settingsThemeSystemDefaultLabel":
            MessageLookupByLibrary.simpleMessage("Системная"),
        "settingsUnitsLabel":
            MessageLookupByLibrary.simpleMessage("Единицы измерения"),
        "settingsVolumeLabel": MessageLookupByLibrary.simpleMessage("Объём"),
        "snackExample": MessageLookupByLibrary.simpleMessage(
            "например, яблоко, мороженое, шоколад ..."),
        "snackLabel": MessageLookupByLibrary.simpleMessage("Перекус"),
        "sugarLabel": MessageLookupByLibrary.simpleMessage("сахар"),
        "suppliedLabel": MessageLookupByLibrary.simpleMessage("Усвоено"),
        "unitLabel": MessageLookupByLibrary.simpleMessage("Единица измерения"),
        "weightLabel": MessageLookupByLibrary.simpleMessage("вес"),
        "yearsLabel": m3
      };
}
