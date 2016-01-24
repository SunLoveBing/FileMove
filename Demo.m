clear all;
close all;
clc;

picPath = 'E:\data train\Car Side View temp\OUTResize';
[TarFileNum,TarFileName,TargetFile] = TargetFile(picPath);
SrcPath = 'D:\Landmark Detection\Database\data analyse\有无小侧窗\有小侧窗';
[SrcFileNum,SrcFileName] = SourceFile(SrcPath);
destination = 'E:\data train\Car Side View temp\有无小侧窗\有小侧窗';
FileMove(TarFileNum,SrcFileNum,TarFileName,SrcFileName,TargetFile,destination);
