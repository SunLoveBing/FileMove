function FileClassify(picPath,dataPath,destination)

picFiles = dir(picPath);

%统计相应的文件夹下有多少张图片，保存在变量picNum中
picNum = 0;
for i = 1 : length(picFiles);
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        picNum = picNum + 1;
    end
end

%统计相应的文件夹下图片的文件名，保存在变量picName中，不带扩展名
picName = cell(picNum,1);
for i = 1 : picNum
    picName{i} = picFiles(i+2).name(1:end-4);
end 

dataFiles  = dir(dataPath);

%统计侧视图特征点坐标数据文件的个数，保存在变量dataNum中
dataNum = 0;
for i = 1 : length(dataFiles)
    if strcmp(dataFiles(i).name , '.') || strcmp(dataFiles(i).name , '..')
        continue;
    else
        dataNum = dataNum + 1;
    end
end

%得到侧视图特征点坐标数据文件名，保存在变量dataName中
dataName = cell(dataNum,1);
sourceFile = cell(dataNum,1);
for i = 1 : dataNum
    dataName{i} = dataFiles(i+2).name(1:end-6);
    sourceFile{i} = strcat(dataPath,'\',dataName{i},'.TMPLT');
end

%比较图片文件和特征点坐标文件的文件名是否相同，如果相同，则移动到目标文件夹
for i = 1 : dataNum
    for j = 1 : picNum
        if strcmp(dataName{i},picName{j})
            movefile(sourceFile{i},destination);
        end
    end
end