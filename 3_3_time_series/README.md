# Описание проекта

Компания «Такси» собрала исторические данные о заказах такси в аэропортах. Чтобы привлекать больше водителей в период пиковой нагрузки, нужно спрогнозировать количество заказов такси на следующий час. Постройте модель для такого предсказания.

Значение метрики *RMSE* на тестовой выборке должно быть не больше 48.

## Описание данных

Данные лежат в файле `taxi.csv`

Количество заказов находится в столбце '*num_orders*' (от англ. *number of orders*, «число заказов»).

# Вывод

Если использовать для предсказания средние или медианные значения за последние сутки, то RMSE будет в районе 58, как и в случае предсказанием последним значением.

При этом лучшее значение метрики достигнуто на `LinearRegression` с помощью добавлением в данные новых фич (месяц, день, день недели, скользящее среднее за 24 часа и все лаги 1-24,168 и 336)

RandomForestRegressor, CatBoostRegressor и LightGBM показывают схожие результаты, но несколько хуже LinearRegression.

Таким образом для прогнозирования количества заказов такси компании «Чётенькое такси» необходимо использовать модель линейной регрессии с добавлением определенных фич в датасет