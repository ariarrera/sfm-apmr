WITH attending AS (
    SELECT CONCAT_WS(', ', GROUP_CONCAT(JSON_OBJECT('ID', apmrus.userId, 'ФИО', CONCAT(apmrus.lastname, " ", apmrus.firstname, " ", apmrus.middlename), 'Email', apmrus.email ) ) ) 
			as attending
    FROM apmr.users as apmrus
    JOIN apmr.attendees as apmrat ON apmrat.userId = apmrus.userId
	WHERE apmrat.eventId = 1000001),
materials AS (
    SELECT GROUP_CONCAT(JSON_OBJECT('ID', id,'name', fileName, 'extension', fileExtension,'path', path,'link', fileUri ))
    FROM apmr.materials
    WHERE eventId = 1000001)
SELECT
    e.eventId,
    CASE WHEN e.isOnline = 1 THEN 'Да' ELSE 'Нет' END AS 'Проводится онлайн',
    CASE WHEN e.restrictPublication = 0 THEN 'Да' ELSE 'Нет' END AS 'Будет опубликовано на портале АПМР',
    e.eventName AS 'Название мероприятия',
    e.startDate AS 'Дата и время начала',
    e.endDate  AS 'Дата и время конца',
    TIMEDIFF(e.endDate, e.startDate) AS 'Длительность',
    CONCAT(u.lastname, " ", u.firstname, " ", u.middlename) AS 'Организатор_ФИО',
    u.`organization` AS 'Организатор_Организация',
    u.email AS 'Организатор_Email',
    COUNT(a.id) AS 'Кол-во участников',
    e.place AS 'Место проведения',
    e.meetingLink AS 'Ссылка для подключения',
    e.agenda AS 'Повестка события',
    e.`description` AS 'Описание',
    COUNT(DISTINCT m.id) AS 'Кол-во материалов',
    e.deadline AS 'Дедлайн подтверждения участия',
    CASE WHEN e.`status` = 'cancelled' THEN 'Да' ELSE 'Нет' END AS 'Событие отменено',
    CASE WHEN e.creatorId = 1 THEN 'Да' ELSE 'Нет' END AS 'Пользователь является организатором',
    CASE WHEN a.userId = 1 THEN 'Да' ELSE 'Нет' END AS 'Пользователь является участником',
    (SELECT * FROM attending) AS 'Участники',
    (SELECT * FROM materials) AS 'Материалы'
FROM apmr.`events` AS e
RIGHT JOIN apmr.attendees AS a ON e.eventId = a.eventId
LEFT JOIN apmr.users AS u ON u.userId = e.creatorId
RIGHT JOIN apmr.materials AS m ON m.eventId = a.eventId
JOIN attending AS at ON at.attending LIKE CONCAT('%', a.userId, '%')
WHERE e.eventId = 1000001
GROUP BY e.eventId, e.eventName;




