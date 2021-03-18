from tensorflow.keras.applications.resnet import ResNet50
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.layers import GlobalAveragePooling2D, Dense
from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam
import numpy as np
import pandas as pd

'''
Скрипт для работы с выделенным GPU
'''
 
def load_train(path):
'''
Подгружаем данные для обучения
Выделяем валидационную выборку
Производим аугментацию и масштабирование
'''
    labels = pd.read_csv(path + '/labels.csv')
    
    datagen = ImageDataGenerator(
        validation_split=0.25,
        horizontal_flip=True,
        rescale=1/255.)
 
    train_datagen_flow = datagen.flow_from_dataframe(
        directory=path + '/final_files/',
        dataframe=labels,
        x_col='file_name',
        y_col='real_age',
        target_size=(224, 224),
        batch_size=32,
        class_mode='raw',
        subset='training',
        seed=12345)
 
    return train_datagen_flow

def load_test(path):
'''
Подгружаем данные для тестирования
'''
    labels = pd.read_csv(path + '/labels.csv')

    datagen = ImageDataGenerator(
        validation_split=0.25,
        #horizontal_flip=True,
        rescale=1/255.)
 
    test_datagen_flow = datagen.flow_from_dataframe(
        directory=path + '/final_files/',
        dataframe=labels,
        x_col='file_name',
        y_col='real_age',
        target_size=(224, 224),
        batch_size=32,
        class_mode='raw',
        subset='validation',
        seed=12345)
        
    return test_datagen_flow

def create_model(input_shape):
'''
Строим модель на основе ResNet50
'''
 
    backbone = ResNet50(input_shape=(224, 224, 3),
                    weights='imagenet',
                    include_top=False)
 
    model = Sequential()
    model.add(backbone)
    model.add(GlobalAveragePooling2D())
    model.add(Dense(1, activation='relu'))
 
    optimizer = Adam(lr=0.0001)
    model.compile(optimizer=optimizer, loss="mse", metrics=["mae"])
 
 
    return model
 
 
def train_model(model, train_data, test_data, batch_size=None, epochs=5,
                steps_per_epoch=None, validation_steps=None):
'''
Обучаемся
'''
 
    if steps_per_epoch is None:
        steps_per_epoch = len(train_data)
    if validation_steps is None:
        validation_steps = len(test_data)
 
    model.fit(train_data,
              validation_data=test_data,
              batch_size=batch_size, epochs=epochs,
              steps_per_epoch=steps_per_epoch,
              validation_steps=validation_steps,
              verbose=2)
 
    return model