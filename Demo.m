clear all;
close all;
clc;

picPath = 'E:\data train\Car Side View temp\OUTResize';
[TarFileNum,TarFileName,TargetFile] = TargetFile(picPath);
SrcPath = 'D:\Landmark Detection\Database\data analyse\����С�ര\��С�ര';
[SrcFileNum,SrcFileName] = SourceFile(SrcPath);
destination = 'E:\data train\Car Side View temp\����С�ര\��С�ര';
FileMove(TarFileNum,SrcFileNum,TarFileName,SrcFileName,TargetFile,destination);
