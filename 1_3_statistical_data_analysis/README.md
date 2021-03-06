# Определение перспективного тарифа для телеком компании

***Описание проекта***

Вы аналитик компании «Мегалайн» — федерального оператора сотовой связи. Клиентам предлагают два тарифных плана: «Смарт» и «Ультра». Чтобы скорректировать рекламный бюджет, коммерческий департамент хочет понять, какой тариф приносит больше денег.
Вам предстоит сделать предварительный анализ тарифов на небольшой выборке клиентов. В вашем распоряжении данные 500 пользователей «Мегалайна»: кто они, откуда, каким тарифом пользуются, сколько звонков и сообщений каждый отправил за 2018 год. Нужно проанализировать поведение клиентов и сделать вывод — какой тариф лучше.

***Описание тарифов***

*Тариф «Смарт»*

1. Ежемесячная плата: 550 рублей
1. Включено 500 минут разговора, 50 сообщений и 15 Гб интернет-трафика
1. Стоимость услуг сверх тарифного пакета:
    - минута разговора: 3 рубля
    - сообщение: 3 рубля
    - 1 Гб интернет-трафика: 200 рублей

*Тариф «Ультра»*

1. Ежемесячная плата: 1950 рублей
1. Включено 3000 минут разговора, 1000 сообщений и 30 Гб интернет-трафика
1. Стоимость услуг сверх тарифного пакета:
    - минута разговора: 1 рубль
    - сообщение: 1 рубль
    - 1 Гб интернет-трафика: 150 рублей
    
**Обратите внимание:** «Мегалайн» всегда округляет вверх значения минут и мегабайтов. Если пользователь проговорил всего 1 секунду, в тарифе засчитывается целая минута.

# Выводы
- предоставленные данные не нуждаются в тщательной предобработке. Были исправлены некоторые типы данных, заменен индекс в таблице `internet` и обнаружены нулевые значения в таблицах `calls` и `internet`
- собрана таблица с ежемесечным суммарным количеством минут, сообщений и объемом трафика по каждому пользователю
- для каждого пользователя в каждом месяце рассчитана выручка
- проанализированы потребности абонентов разных тарифов по `длительности звонков`, `количеству сообщений` и `объему трафика`:
    - плотности распределений по этим параметрам пользователей тарифа `ultra` имеют бОльшую дисперсию
    - средние значения также больше у пользователей тарифа `ultra`
- гипотеза о равенстве выручки пользователей разных тарифов была *отвергнута*, что вполне логично
- гипотезу о равенстве выручки пользователей из Москвы и других регионов *не получилось отвергнуть*
- количество ежемесячно активных пользователей "smart" более чем в два раза превышает количество пользователей "ultra". Изходя из этого суммарная прибыль компании от тарифа "smart" будет больше
- в регионах тариф "smart" немного популярнее и выгоднее (это предположение, т.к. для эта гипотеза не проверялась)
        
Если определить, например, метрику выгоды для отдельного абонента равную отношению выручки к количеству звонков и трафика, то, скорее всего, выгоднее для компании будет тариф "ultra". Т.к. пользователь "ultra" за 1 Гб/Смс/минуту в среднем будет платить больше, чем пользователь "smart"
        
Но рассчет такой метрики лежит за пределом данного проекта, так что в следующий раз