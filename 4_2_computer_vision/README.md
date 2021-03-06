# Описание проекта
Сетевой супермаркет внедряет систему компьютерного зрения для обработки фотографий покупателей. Фотофиксация в прикассовой зоне поможет определять возраст клиентов, чтобы:
Анализировать покупки и предлагать товары, которые могут заинтересовать покупателей этой возрастной группы;
Контролировать добросовестность кассиров при продаже алкоголя.

Необходимо построить модель, которая по фотографии определит приблизительный возраст человека. В вашем распоряжении набор фотографий людей с указанием возраста.

# Выводы

За 5 эпох достигнуто требуемое качество (MAE менее 8). Была использована архитектура `ResNet50` с начальными весами, полученными на датасете `ImageNet`. Функция активации последнего слоя с **одним нейроном** - "ReLu", т.к. перед нами стоит задача регрессии.

Аугментации не использовались, но возможно использовать отражение, размытие и повышение четкости и добавление шума.

При увеличении количества эпох возможно улучшение качества, но важно не допостить переобучения. Так же возможно попробовать использовать другие архитектуры (`ResNet101` или `ResNet152`) для уменьшения целевой метрики.

Можно считать, что качество модели позволит магазину (бизнесу) провести исследование потребностей клиентов различных возрастов. Но нужна ли такая сложная система...? Возможно обычные бонусные карточки с анкетирование могут решить эту задачу гораздо дешевле.
    
А вот контролировать добросовестность кассиров при продаже алкоголя такая система позволит, и,скорее всего, будет оправдана и выгодна, т.к. за нарушение запрета о продаже алкоголя несовершеннолетним предусмотрены большие штрафы.