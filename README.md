# yandex-practicum
Учебные проекты по специализации Data Science

| №| Проект  | Тема. Описание  | Что сделано | Стэк |
|-|-|-|-|-|
| **Итог. проект** | [Прогнозирование оттока клиентов](https://github.com/StasKolomin/yandex-practicum/blob/main/_Final_project_Telecom/Final_project_full.ipynb) | **"Итоговый проект"**. Нужно спрогнозировать, уйдёт клиент от телеком оператора в ближайшее время или нет. Предоставлены исторические данные о поведении клиентов. Метрика `AUC-ROC`. Дополнительно `Accuracy`.  | Данные подробным образом проанализированы и визуализированы. Составлен план работы после общения с тимлидом. Данные объеденены в единый датафрейм. Построены диаграммы Венна. Удалены пропуски и добавлены новые признаки. Исследован баланс классов. Оценена корреляция признаков и их важность техникой VIF. Протестирована работа различнах моделей и нарисованы ROC-кривые. Выбрана лучшая и оптимизированы её гиперпараметры. Подготовлен отчет по проделанной работе. | pandas, numpy, venn, pandas_profiling, matplotlib, seaborn, plotly, sklearn, lightgbm, catboost, tensorflow.keras, lofo |
| 1_1 | [Исследование надежности заемщиков](https://github.com/StasKolomin/yandex-practicum/blob/main/1_1_data_preprocessing/1_1_Credit_scoring.ipynb) | **"Предобработка данных"**. Необходимо разобраться, влияет ли семейное положение и количество детей клиента на факт погашения кредита в срок. Входные данные от банка — статистика о платёжеспособности клиентов | Обработаны пропуски, исправлены некорректные значения. Выделены леммы из длинных предложений и выполнено разделение по целям кредитов. Определены различные зависимости на возврат кредитов. | pandas, pymystem3, collections |
| 1_2 | [Анализ рынка недвижимости СПб](https://github.com/StasKolomin/yandex-practicum/blob/main/1_2_exploratory_data_analysis/1_2_Real_estate_analysis.ipynb) | **"Исследовательский анализ данных"**. Определение рыночной стоимости объектов недвижимости. Это поможет определять аномалии и мошенническую деятельность | Тщательная предобработка данных (пропуски, выбросы, преобразование типов, переделаны названия населенных пунктов). Рассчитаны дополнительные признаки. Проанализированы отдельные признаки, их влияние на стоимость недвижимости и сделаны выводы по их распределениям.  | pandas, matplotlib, seaborn,  |
| 1_3 | [Определение перспективного тарифа для телеком компании](https://github.com/StasKolomin/yandex-practicum/blob/main/1_3_statistical_data_analysis/1_3_tariff_analysis.ipynb) | **"Статистический анализ данных"**. Необходимо проанализировать два различных тарифа и сделать выводы, какой лучше. На входе данные пользователей и логи активности. | Выполнен анализ представленных данных. Преобразование к корректным типам. Рассчитаны помесячные объемы звонков и трафика для каждого пользователя. Рассчитана помесячная выручка с каждого пользователя. Подробно сравнены статистики для каждого тарифного плана. Проверены различные статистические гипотезы. Сделаны выводы  | pandas, numpy, math, scipy, matplotlib |
| 1 | [Анализ рынка игр](https://github.com/StasKolomin/yandex-practicum/blob/main/1_module_proj/1_game_analis.ipynb) | **Сборный проект** 1го модуля. Нужно выявить определяющие успешность игры закономерности. Это позволит сделать ставку на потенциально популярный продукт и спланировать рекламные кампании. | Тщательная предобработка (пропуски, некорректные значения). Определены причины их появления. Исследована каждая игровая платформа в разрезе времени. Высказано предположение о наиболее перспективных игровых платформах и жанрах. Определены портреты пользователей каждого региона. Проверены статистические гипотезы. Сделаны выводы и предложения по планированию рекламных компаний. | pandas, numpy, scipy, matplotlib, seaborn, plotly|
| 2_1 | [Рекомендация тарифов](https://github.com/StasKolomin/yandex-practicum/blob/main/2_1_intro_to_ML/2_1_Tariff_ML_recommendation.ipynb) | **"Введение в машинное обучение"**. Необходимо построить систему, способную проанализировать поведение клиентов и предложить пользователям новый тариф: «Смарт» или «Ультра». Метрика качества `accuracy`| Данные изучены и подготовлены для работы с моделями машинного обучения (дерево, лес, логрегрессия). Выбраны гиперпараметры моделей исключающие переобучение. Лучшая модель - случайный лес, `accuracy_test_data = 0.81`| pandas, matplotlib, plotly, sklearn|
| 2_2 | [Отток клиентов банка](https://github.com/StasKolomin/yandex-practicum/blob/main/2_2_supervised_ML/2_2_customer_churn.ipynb) | **"Обучение с учителем"**. Нужно спрогнозировать, уйдёт клиент из банка в ближайшее время или нет. Предоставлены исторические данные о поведении клиентов и расторжении договоров с банком. Метрика F1. Дополнительно AUC-ROC. | Исследована входные данные и баланс целевого признака. Преобразованы категориальные признаки, данные нормализованы. Использован GridSearch для подбора гиперпараметров LogisticRegression, RandomForestClassifier. Проанализированы различные способы борьбы с дисбалансом (class_weight, UP-sampling, DOWN-sampling, Изменение порога) | pandas, numpy, matplotlib, plotly, sklearn|
| 2_3 | [Анализ нефтяных месторождений](https://github.com/StasKolomin/yandex-practicum/blob/main/2_3_ML_in_business/2_3_oil_field_analysis.ipynb) | **"Машинное обучение в бизнесе"**. Нефтяной компании необходимо определить, где бурить новую скважину. Предоставлены пробы нефти в трёх регионах (качество и объём запасов). Необходимо проанализировать риски, определить вероятную прибыль и выбрать лучший регион. | Данные изучены. Построены парные диаграммы для наглядности. Для предсказания целевого признака использована линейная регрессия. Рассчитаны величины прибыли и рисков с использованием bootstrap. Определен лучший регион.| pandas, numpy, matplotlib, plotly, seaborn, sklearn|
| 2 | [Предсказание концентрации золота](https://github.com/StasKolomin/yandex-practicum/blob/main/2_module_proj/2_gold_ore_analysis.ipynb) | **Сборный проект** 2го модуля. Необходимо подготовить прототип модели машинного обучения для компании, разрабатывающей решения для эффективной работы промышленных предприятий. Модель должна предсказать коэффициент восстановления золота из золотосодержащей руды. Входные данные: параметры добычи и очистки. Модель поможет оптимизировать производство, чтобы не запускать предприятие с убыточными характеристиками. | Внимательно изучены входные данные (86 признаков). Отобраны только необходимые признаки для исключения утечки целевых признаков в данные. Заполнены пропуски. Подробно изучены распределения важных признаков. Обучено и проверено несколько моделей. Подобрана лучшая модель с минимальным значением метрики sMAPE. Подобраны гиперпараметры с помощью GridSearchCV.| pandas, matplotlib, seaborn, plotly, sklearn, numpy |
| 3_1 | [Защита данных клиентов](https://github.com/StasKolomin/yandex-practicum/blob/main/3_1_lineal_algebra/3_1_data_protection.ipynb) | **"Линейная алгебра"**. Необходимо защитить данные клиентов страховой компании. Должно быть сложно восстановить персональную информацию. Обоснуйте корректность его работы. При преобразовании качество моделей машинного обучения не должно ухудшиться. | Предложен алгоритм преобразования с помощью умножения на обратимую матрицу. Обоснована и доказана возможность применения умножения на обратимую матрицу. Качество модели до преобразования и после не изменилось. | pandas, matplotlib, numpy, sklearn, plotly |
| 3_2 | [Определение цен автомобилей](https://github.com/StasKolomin/yandex-practicum/blob/main/3_2_Computational_Mathematics/3_2_Auto_price.ipynb) | **"Численные методы"**. Определение рыночной цены автомобиля по техническим характеристикам автомобилей. Заказчику важно качество, скорость и время обучения модели. | Выполнена предобработка "грязных" данных: удалены выбросы, пропуски, неинформативные признаки. Произведена оценка распределений представленных значений. Почтовые индексы преобразованы к более информативному виду. Данные отмасштабированы и закодированы. Сравнение RMSE для моделей LinearRegression, RandomForestRegressor, CatBoostRegressor, LightGBM| pandas, matplotlib, seaborn, plotly.express, sklearn, catboost, lightgbm, numpy , time |
| 3_3 | [Прогнозирование заказов такси](https://github.com/StasKolomin/yandex-practicum/blob/main/3_3_time_series/3_3_Taxi_predict.ipynb) | **"Временные ряды"**. Необходимо спрогнозировать количество заказов такси на следующий час по историческим данным. Метрика RMSE | Проверена монотонность временного ряда и произведено ресемплирование. Определены тренды, сезонность и шумы. Добавлены дополнительные фичи. Исследована зависимость качества предсказания от размера лаг и скользящего окна. Наглядно представлен результат. Выбрана лучшая модель для предсказания с подбором гиперпараметров. | pandas, plotly, sklearn, catboost, lightgbm, statsmodel, numpy |
| 3_4 | [Определение токсичных комментариев](https://github.com/StasKolomin/yandex-practicum/blob/main/3_4_ML_for_text/3_4_toxic_comments.ipynb) | **"Машинное обучение для текстов"**. Интернет-магазин запускает новый сервис, поэтому нужен инструмент, который будет искать токсичные комментарии и отправлять их на модерацию. Получены эмбеддинги слов техникой TF-IDF. | Текст очищен от служебных символов. Выделены леммы слов. Обучены и протестированы разные модели, в том числе BERT. Лучший результат показала логистическая регрессия. | pandas, numpy, tqdm, matplotlib, torch, transformers, re, nltk, sklearn, lightgbm|
| 4_1 | [Анализ авиаперелетов](https://github.com/StasKolomin/yandex-practicum/blob/main/4_1_data_extract/4_1_flights_analys.ipynb)| **"Извлечение данных"**. Необходимо изучить базу данных и проанализировать спрос пассажиров на рейсы в города, где проходят крупнейшие культурные фестивали. | Из БД выгружена вся необходимая информация. Изучена необходимая информация и построены графики. Проверена статистическая гипотеза. | SQL, pandas, plotly, matplotlib, scipy |
| 4_2 | [Определение возраста по фотографии](https://github.com/StasKolomin/yandex-practicum/blob/main/4_2_computer_vision/4_2_clients_age.ipynb) | **"Компьютерное зрение"**. Необходимо построить модель, которая по фотографии определит приблизительный возраст человека. В вашем распоряжении набор фотографий людей с указанием возраста. | Данные загружены и проанализированы. Построена и обучена модель. Работа производилась на выделенном сервере с GPU. Сделаны выводы и высказаны рекомендации по использованию модели. | tensorflow.keras, pandas, numpy, matplotlib |
| 4_3 | | **"Обучение без учителя"**| | |
