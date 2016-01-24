clear all;
close all;
clc;

dataPath = 'D:\Landmark Detection\Database\data analyse\Car Side CurveNet temp';

picPath_one = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\MPV\有小侧窗\三角形';
destination_one = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\MPV\有侧窗\三角形';
FileClassify(picPath_one,dataPath,destination_one);

picPath_two = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\MPV\有小侧窗\四边形';
destination_two = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\MPV\有侧窗\四边形';
FileClassify(picPath_two,dataPath,destination_two);

picPath_three = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\MPV\有小侧窗\五边形';
destination_three = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\MPV\有侧窗\五边形';
FileClassify(picPath_three,dataPath,destination_three);

picPath_four = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\SUV\无小侧窗';
destination_four = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\SUV\无侧窗';
FileClassify(picPath_four,dataPath,destination_four);

picPath_five = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\SUV\有小侧窗\三角形';
destination_five = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\SUV\有侧窗\三角形';
FileClassify(picPath_five,dataPath,destination_five);

picPath_six = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\SUV\有小侧窗\四边形';
destination_six = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\SUV\有侧窗\四边形';
FileClassify(picPath_six,dataPath,destination_six);

picPath_seven = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\SUV\有小侧窗\五边形';
destination_seven = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\SUV\有侧窗\五边形';
FileClassify(picPath_seven,dataPath,destination_seven);

picPath_eight = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\两厢车\无小侧窗';
destination_eight = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\两厢车\无侧窗';
FileClassify(picPath_eight,dataPath,destination_eight);

picPath_nine = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\两厢车\有小侧窗\三角形';
destination_nine = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\两厢车\有侧窗\三角形';
FileClassify(picPath_nine,dataPath,destination_nine);

picPath_ten = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\两厢车\有小侧窗\四边形';
destination_ten = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\两厢车\有侧窗\四边形';
FileClassify(picPath_ten,dataPath,destination_ten);

picPath_eleven = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\三厢车\无小侧窗';
destination_eleven = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\三厢车\无侧窗';
FileClassify(picPath_eleven,dataPath,destination_eleven);

picPath_twelve = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\三厢车\有小侧窗\三角形';
destination_twelve = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\三厢车\有侧窗\三角形';
FileClassify(picPath_twelve,dataPath,destination_twelve);

picPath_thirteen = 'D:\Landmark Detection\Database\data analyse\Car Side View temp\三厢车\有小侧窗\四边形';
destination_thirteen = 'D:\Landmark Detection\Database\data analyse\Car Side Database temp\三厢车\有侧窗\四边形';
FileClassify(picPath_thirteen,dataPath,destination_thirteen);
