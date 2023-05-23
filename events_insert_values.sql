/*
-- Query: SELECT * FROM apmr.events
LIMIT 0, 1000

-- Date: 2023-05-23 20:33
*/
INSERT INTO apmr.events (`eventId`,`eventName`,`startDate`,`endDate`,`isOnline`,`restrictPublication`,`place`,`meetingLink`,`agenda`,`description`,`deadline`,`creatorId`,`status`) VALUES (1000001,'Воркшоп \"Основы полевых исследований\"','2023-04-03 08:00:00','2023-04-03 09:00:00',1,0,NULL,'https://us04web.zoom.us/j/7891895360?pwd=SmMzLc00zc3ZSTVJrbkUrTVI5c3djUT09','Приглашаем на воркшоп, посвященный методам и особенностям полевых исследований на примере недавней экспедиции в Гатчину.','Полевое исследование начинается со сбора первичных данных о продажах и спросе на конкретный товар или группу товаров, которые компания намерена исследовать. Как следует из названия, это маркетинговое исследование требует прямого контакта с покупателями, дистрибьюторами, дилерами и в некоторых случаях даже с конкурентами.','2023-03-28 14:00:00',1,'active');
INSERT INTO apmr.events (`eventId`,`eventName`,`startDate`,`endDate`,`isOnline`,`restrictPublication`,`place`,`meetingLink`,`agenda`,`description`,`deadline`,`creatorId`,`status`) VALUES (1000002,'Открытая лекция \"Подача заявок на гранты\"','2023-05-29 14:00:00','2023-04-03 16:00:00',0,0,'Аудитория №532. Главное помещение административного корпуса музея.',NULL,'Открытая лекция будет проводиться с целью обмена опытом и знаниями участников Ассамблеи об основных моментах и “подводных камнях” процедуры подачи заявки на грант.','ГМЗ “Петергоф” приглашает всех желающих на открытую лекцию, посвященную форматам и шаблонам заявок на финансирование научных проектов. Мероприятие будет проводится онлайн на платформе Zoom. Ссылка будет отправлена за полчаса до начала мероприятия. \n\nОткрытая лекция будет проводиться с целью обмена опытом и знаниями участников Ассамблеи об основных моментах и “подводных камнях” процедуры подачи заявки на грант.',NULL,1001,'cancelled');