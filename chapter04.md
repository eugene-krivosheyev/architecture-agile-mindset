Обоснуй меня полностью
======================

Важность требований
-------------------
_Остановись на секунду_ и скажи свое мнение – как мы обосновываем наши решения при проектировании систем?

_Например_, мы проектируем бизнес по общепиту (кафе). Предстоит принять множество важных, архитектурных решений в различного характера (PoV): разбиение сотрудников на функциональные отделы, процессы взаимодействия между ними, соответственно этому запроектировать помещение, и т.д.
Чем мы будем руководствоваться при принятии этих решений?

Ответ – _требования_ к системе. Это список ожиданий со стороны ключевых стейкхолдеров по поводу функционирования будущей системы и ее свойств. 

Это требования к системе в идеале должны укладываться в схему SMART:
- Specific: конкретные, а не "ну, все должно работать типа хорошо"
- Measurable: измеряемые, а не "ну, обслуживание должно быть типа быстрое"
- Assignable: можно назначить реализацию на доступных людей, а не "ну, для этого нам понадобится Супермен" 
- Realistic: возможно реализовать с доступными ресурсами, а не "допустим, у нас есть квантовый компьютер, телепортация и Звезда Смерти"
- Time-related: возможно оценить и отслеживать выполнение по времени, а не "ну это займет около года плюс-минус пять лет" 

| Требования к кафе                                                    | Характер требований                                                                                                                       | Пример уточнения требования, возможные метрики                                                                      |
|----------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| Посетитель может заказать порционные судачки a la натюрель           | Желаемое поведение системы для пользователя, _внешний функционал_ системы                                                                 | Спецификация (рецепт) блюда                                                                                         | 
| Посетитель желает заказ "аж бегом"                                   | Свойство системы для пользователя, внешняя характеристика, _атрибут качества_ Производительность, KPI системы по времени обработки заказа | При загрузке в 10 одновременных заказов система должна с вероятностью 95% обработать заказ не более, чем за 5 минут |
| Сотрудники хотят справедливую систему распределения чаевых           | Желаемое поведение системы для сотрудников, _внутренний функционал_ системы                                                               | Бизнес-правила распределения чаевых, автоматизация перечисления на карты сотрудников                                |
| Сотрудники хотят тратить как можно сил и времени на уборку помещений | Свойство системы для сотрудников, внутренняя характеристика, _атрибут качества_ Убираемость                                               | При загрузке в 10 работающих столиков сотрудник с вероятностью 95% должен тратить не более 5 минут на уборку кухни  |

_Что это значит конкретно для тебя?_

1. Мы должны принимать решения (проектировать систему) так, чтобы удовлетворить поставленным требованиям.
1. Не бывает хорошего или плохого решения – одно и то же инженерное решение может удовлетворять одним требованиям, и не подходить для других.

_Что дальше?_
Задумайся, как обычный пользователь информационных систем – как бы сформулировал типовые требования? Как бы сгруппировал их? И, с другой стороны, как участник разработки – что ты ждешь от системы для себя?


Таксономия требований к целевой информационной системе
------------------------------------------------------
_Остановись на секунду_ и скажи свое мнение – какие требования можно выделить для ИС? Как их можно сгруппировать?

Ниже представлена одна из возможных таксономий (классификаций) требований. Это далеко не единственная классификация, но она проста и достаточна для дальнейших обсуждений.

|                         | *Внешние*, для пользователей                                                                                                      | *Внутренние*, для команды                                                                                                                                                     |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| *Функциональные*, FR    | Сценарии взаимодействия пользователя с системой. Форматы описания: UseCases, UserStories, JobStories и другие.                    | Сценарии взаимодействия разработчиков, администраторов, DevOps-инженеров, инженеров линий поддержки с системой. Форматы описания: System/Infrastructure UserStories и другие. |
| *Нефункциональные*, NFR | Maintainability, Capacity, Availability, Scalability, Reliability, Usability, Security, Performance, Consistency, Fail-over и др. | Supportability (Readability, Extensibility, Testability), Deployability, Manageability, Monitorability, Recoverability, Partitioning Tolerance, Interoperability и др.        |

Эта классификация достаточно условная, границы размыты – мы можем при желании отнести часть требований к другой группе. Например, считать NFR Performance (Производительность) частью описания FR в формате User Story – перенести метрики производительности в описания пользовательских сценариев.
Тогда в чем польза этой классификации? 
Отнесение требований к FR или, напротив, к NFR дает нам готовые форматы и шаблоны описания FR и готовые справочники NFR c метриками.
А отнесение требований к внутренним или внешним дает нам понимание стейкхолдеров, с которыми нужно обсуждать требования и согласовывать решения: это Пользователи, Заказчики, Продакты или участники нашей команды разработки.

_Что это значит конкретно для тебя?_

1. Требований к системе много, их нужно анализировать и уточнять.
1. Нужно понимать, к кому идти за требованиями и с кем согласовывать решения.
1. Нужно понимать типовые форматы записи FR и NFR и их метрики.
1. Без анализа, доуточнения и фиксации требований мы не сможем принимать инженерные решения при проектировании целевой системы.  

_Что дальше?_
Задумайся, как можно было бы описывать функциональные требования (FR)? Какой мог бы быть шаблон?


Внешние функциональные требования: внешние FR
---------------------------------
_Остановись на секунду_ и скажи свое мнение – что должны отражать функциональные требования к системе?

При описании функциональных требований к целевой системе важно описать _сценарии взаимодействия_ пользователей и системы.
Поэтому обычно форматы описания включают в себя действия со стороны пользователя и описание нужной реакции системы – _диалог_ пользователя с системой.

Один из самых популярных форматов описания FR – _User Story_ (US). Но это не только шаблон описания сценария работы пользователя с системой, но и подход к эволюции – последовательному уточнению по мере реализации этого требования.
Изначально User Story вводится командой или Product Owner в список работ (backlog) просто в виде краткого названия. Например, "Простой каталог товаров".
Далее по мере реализации предыдущих задач из беклога команда приближается к этому требованию и доуточняет его – раскрывает ожидания пользователя от системы: 
> Я, как [роль],
> хочу [функционал системы],
> чтобы [ценность для меня] 

Например,
```
User Story Простой каталог товаров:
я, как незарегистрированный пользователь, хочу увидеть каталог товаров, чтобы сравнить цены и купить по оптимальной цене.  

User Story Каталог с пользовательской ценой:
я, как зарегистрированный пользователь, хочу увидеть каталог товаров с ценами с учетом моей персональной скидки, чтобы сравнить цены и купить по оптимальной цене.  
```
Но это тоже пока не полноценные сценарии. Они появляются, когда команда непосредственно берет это требование в реализацию. Команде нужно предельно четко понимать, как реализовать этот функционал.
И тогда мы доуточняем это требование – добавляем для User Story _приемочные сценарии/тесты_:

```
User Story "Простой каталог товаров":
Я, как незарегистрированный пользователь, хочу увидеть каталог товаров, чтобы сравнить цены и купить по оптимальной цене.
 
Сценарий штатный "товары есть":
Допустим, пользователь не зарегистрирован 
И товаров в каталоге ≤ 20
Когда пользователь запрашивает каталог товаров
Тогда пользователь видит таблицу с товарами: название, производитель, цена
И для каждого товара есть возможность отложить его в сравнение

Сценарий штатный "товары есть и их много":
Допустим, пользователь не зарегистрирован 
И товаров в каталоге > 20
Когда пользователь запрашивает каталог товаров
Тогда пользователь видит таблицу с товарами: "название, производитель, цена"
И для каждого товара есть возможность отложить его в сравнение
И товаров в таблице 20
И есть возможность запросить следующие 20 товаров 

Сценарий штатный "товаров нет":
Допустим, пользователь не зарегистрирован 
И товаров в каталоге нет
Когда пользователь запрашивает каталог товаров
Тогда он видит сообщение о пустом каталоге
И предложение подписаться на обновления каталога

Сценарий нештатный "нет доступа к хранилищу товаров":
Допустим, пользователь не зарегистрирован 
И товары в каталоге есть
Но нет доступа к хранилищу товаров
Когда пользователь запрашивает каталог товаров
Тогда пользователь видит сообщение "Проблема на нашей стороне, мы уже исправляем"
И администраторы получают извещение об ошибке у пользователя с описанием
```
Безусловно, формат User Story далеко не единственный для описания FR, но у этих форматов много общего.

_Что это значит конкретно для тебя?_

1. Требования последовательно доуточняются по мере их проработки: сначала в беклоге просто название User Story, потом добавляется тело User Story, потом приемочные сценарии. На каждом уточнении ты должен участвовать как носитель архитектурной функции, так как это уточнение может повлечь изменение ключевых (архитектурных) решений.
1. Очень важно, что тело US включает в себя _ценность_ для пользователя. Когда мы проектируем и реализуем функционал, понимание того, _зачем_ это пользователям, позволяет принимать более подходящие инженерные решения. Это и свобода решений, и одновременно ответственность. И тут ты должен участвовать со своей оценкой, повлияет ли инженерное решение на архитектуру. 
1. Для более частых и ритмичных поставок мы можем разбить US по сценариям: реализовать не сразу все сценарии US, а по очереди. Для этого на уровне архитектуры ты должен обеспечить возможность инкрементальных поставок – маленьких, но завершенных доработок.  
1. Некоторые US несут архитектурные риски: при их реализации нужно будет существенно поменять систему. Чтобы узнавать об этом пораньше, команда не фокусируется только ближайших задачах из беклога, но периодически просматривает его целиком. Это называется backlog grooming – "причесывание" беклога. Мы выкидываем неактуальные требования и ищем те, которые могут поменять архитектуру. 


Внутренние функциональные требования: внутренние FR
------------------------------------


Внешние атрибуты качества: внешние NFR
-------------------------


Внутренние атрибуты качества: модель внутреннего качества
----------------------------
Команда - ключевой стейкхолжер!


Внутренние ограничения: архитектурные ограничения корп ландшафта
----------------------


Trade-offs (дилеммы)
====================
Справочник частых дилемм в дизайне
----------------------------------


Справочник принципов разрешения дилемм
-------------------------------------

  