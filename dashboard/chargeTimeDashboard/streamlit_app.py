import streamlit as st
import pandas as pd
import numpy as np
import plost
from PIL import Image

# Page setting
st.set_page_config(layout="wide")

with open('style.css') as f:
    st.markdown(f'<style>{f.read()}</style>', unsafe_allow_html=True)

# Data
forecastPred = pd.read_csv('./forecastPlot.csv', parse_dates=['date'])
stocks = pd.read_csv('https://raw.githubusercontent.com/dataprofessor/data/master/stocks_toy.csv')

tempTomorrow=forecastPred['rawTemp'][24]
tempToday=forecastPred['rawTemp'][0]
tempDiff=(tempTomorrow-tempToday)
# Row A
a1, a2, a3 = st.columns(3)
a1.image(Image.open('chargeTimeAnalytics.png'))
a2.metric("Wind", "9 mph", "-8%")
a3.metric("Humidity", "86%", "4%")

# Row B
b1, b2, b3, b4 = st.columns(4)
b1.metric("Temperature", (str(tempTomorrow)+"°C"),(str(tempDiff)+"°C"))
b2.metric("Wind", "9 mph", "-8%")
b3.metric("Humidity", "86%", "4%")
b4.metric("Humidity", "86%", "4%")

# Row C
c1, c2 = st.columns((3,7))
with c1:
    st.markdown('### Heatmap')
    plost.time_hist(
    data=forecastPred,
    date='date',
    x_unit='hour',
    y_unit='day',
    color='predictedGeneration',
    aggregate='median',
    legend=None)
with c2:
    st.image(Image.open('forecast.png'))
#    st.markdown('### Bar chart')
#    plost.donut_chart(
#        data=stocks,
#        theta='q2',
#        color='company')
