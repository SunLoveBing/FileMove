function [TarFileNum,TarFileName,TargetFile] = TargetFile(TarPath)

picFiles = dir(TarPath);
%ͳ�Ʋ���ͼ���������������ļ��ĸ����������ڱ���dataNum��
TarFileNum = 0;
for i = 1 : length(picFiles)
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        TarFileNum = TarFileNum + 1;
    end
end

%�õ�����ͼ���������������ļ����������ڱ���dataName��
TarFileName = cell(TarFileNum,1);
TargetFile = cell(TarFileNum,1);
for i = 1 : TarFileNum
    TarFileName{i} = picFiles(i+2).name(1:end-4);
    TargetFile{i} = strcat(TarPath,'\',TarFileName{i},'.jpg');
end