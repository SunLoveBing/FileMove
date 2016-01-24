function FileClassify(picPath,dataPath,destination)

picFiles = dir(picPath);

%ͳ����Ӧ���ļ������ж�����ͼƬ�������ڱ���picNum��
picNum = 0;
for i = 1 : length(picFiles);
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        picNum = picNum + 1;
    end
end

%ͳ����Ӧ���ļ�����ͼƬ���ļ����������ڱ���picName�У�������չ��
picName = cell(picNum,1);
for i = 1 : picNum
    picName{i} = picFiles(i+2).name(1:end-4);
end 

dataFiles  = dir(dataPath);

%ͳ�Ʋ���ͼ���������������ļ��ĸ����������ڱ���dataNum��
dataNum = 0;
for i = 1 : length(dataFiles)
    if strcmp(dataFiles(i).name , '.') || strcmp(dataFiles(i).name , '..')
        continue;
    else
        dataNum = dataNum + 1;
    end
end

%�õ�����ͼ���������������ļ����������ڱ���dataName��
dataName = cell(dataNum,1);
sourceFile = cell(dataNum,1);
for i = 1 : dataNum
    dataName{i} = dataFiles(i+2).name(1:end-6);
    sourceFile{i} = strcat(dataPath,'\',dataName{i},'.TMPLT');
end

%�Ƚ�ͼƬ�ļ��������������ļ����ļ����Ƿ���ͬ�������ͬ�����ƶ���Ŀ���ļ���
for i = 1 : dataNum
    for j = 1 : picNum
        if strcmp(dataName{i},picName{j})
            movefile(sourceFile{i},destination);
        end
    end
end