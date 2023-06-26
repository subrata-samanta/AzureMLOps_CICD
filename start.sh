#!/bin/bash

pip install app/src/
python /app/src/prediction_model/train_pipeline.py && app/main.py
