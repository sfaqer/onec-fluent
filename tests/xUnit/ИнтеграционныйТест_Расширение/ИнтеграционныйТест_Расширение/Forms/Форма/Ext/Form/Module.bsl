﻿#Область ОбъявлениеПеременных

&НаКлиенте
Перем КонтекстЯдра; // Фреймворк тестирования
&НаКлиенте
Перем Ожидаем;      // Ассерты

&НаКлиенте
Перем ФункцияОбработки;
&НаКлиенте
Перем ФункцияСокращения;
&НаКлиенте
Перем ФункцияФильтрации;

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

#Область СобытияФреймворкаТестирования

&НаКлиенте
Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
	
	КонтекстЯдра = КонтекстЯдраПараметр;
	Ожидаем      = КонтекстЯдра.Плагин("УтвержденияBDD");
	
	ФункцияФильтрации = ПроцессорыКоллекций.НовыйОписаниеОповещения("ОбработчикФильтрации", ЭтотОбъект);
	ФункцияОбработки  = ПроцессорыКоллекций.НовыйОписаниеОповещения("ОбработчикОбработки",  ЭтотОбъект);
	ФункцияСокращения = ПроцессорыКоллекций.НовыйОписаниеОповещения("ОбработчикСокращения", ЭтотОбъект);
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьНаборТестов(НаборТестов, КонтекстЯдраПараметр) Экспорт
	
	КонтекстЯдра = КонтекстЯдраПараметр;
	
	НаборТестов.Добавить("ТестДолжен_1");
	НаборТестов.Добавить("ТестДолжен_2");
	НаборТестов.Добавить("ТестДолжен_3");
	НаборТестов.Добавить("ТестДолжен_4");
	НаборТестов.Добавить("ТестДолжен_5");
	НаборТестов.Добавить("ТестДолжен_6");
	НаборТестов.Добавить("ТестДолжен_7");
	НаборТестов.Добавить("ТестДолжен_8");
	
КонецПроцедуры

#КонецОбласти

#Область Тесты

&НаКлиенте
Процедура ТестДолжен_1() Экспорт
	
	Результат = тест_ПроцессорыКоллекций.ТестДолжен_1();
	
	Ожидаем.Что(Результат[0]).Равно(8);
	Ожидаем.Что(Результат[1]).Равно(6);
	
КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_2() Экспорт

	Результат = тест_ПроцессорыКоллекций.ТестДолжен_2();

	Ожидаем.Что(Результат[0]).Равно(0);
	Ожидаем.Что(Результат[1]).Равно(1);
	Ожидаем.Что(Результат[2]).Равно(3);
	Ожидаем.Что(Результат[3]).Равно(4);
	Ожидаем.Что(Результат[4]).Равно(5);
	Ожидаем.Что(Результат[5]).Равно(7);

КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_3() Экспорт

	Результат = тест_ПроцессорыКоллекций.ТестДолжен_3();

	Ожидаем.Что(Результат).Равно(26);

КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_4() Экспорт

	Результат = тест_ПроцессорыКоллекций.ТестДолжен_4();
	
	Ожидаем.Что(Результат[0]).Равно(0);
	Ожидаем.Что(тест_ПроцессорыКоллекций.ПолучитьНачальныйМассив()[0]).Равно(3);
	
КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_5() Экспорт
	
	Результат = тест_ПроцессорыКоллекций.ТестДолжен_5();
	
	Ожидаем.Что(Результат).Равно("АВФЫ");
	
КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_6() Экспорт

	Результат = тест_ПроцессорыКоллекций.ТестДолжен_6();
	
	Ожидаем.Что(Результат).Равно("Ястрокаспробелами");

КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_7() Экспорт
	
	Результат = тест_ПроцессорыКоллекций.ТестДолжен_7();
	
	Ожидаем.Что(Результат).Равно("многострочная
		|строка
		|Я");

КонецПроцедуры

&НаКлиенте
Процедура ТестДолжен_8() Экспорт

	Результат = тест_ПроцессорыКоллекций.ТестДолжен_8();

	Ожидаем.Что(Результат).Равно("строка
		|многострочная");

КонецПроцедуры

#КонецОбласти

#КонецОбласти
