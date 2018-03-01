
#___________������� ��� ������������ ������ � 3__________________________

##########################################################################

# ������� 1: �������� ������ ������ AirPassengers � ����������� ������� ���, 
# ������� ������ ������ �� train data � test data
# ���������������
library(ggplot2)
library(forecast)

x <- AirPassengers

length(x)
k <- time(x)[100]
# ������� ������ ������ �� train data � test data

trainx <- window(x, end=k-1)
testx <- window(x, start= k)
#########################################################################

# ������� 2: ������������� ������ Benchmark forecasting - naive ��� ���������������

fc <- snaive(trainx)
fc
autoplot(fc)

# ������� 3: ������������� ������ ������������� Exponential smoothing ��� ���������������

fitets <- ets(trainx)
fcfitets
autoplot(fcfitets)

# ������� 4: ������������� ������ ������������� Exponential smoothing ��� ���������������
arimats <- auto.arima(trainx)
fcarimats <- forecast(arimats)
autoplot(fcarimats)

#______________________LAB 3_________________________________________________________

