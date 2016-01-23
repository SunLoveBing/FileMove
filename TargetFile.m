function [TarFileNum,TarFileName,TargetFile] = TargetFile(TarPath)

picFiles = dir(TarPath);
%统计侧视图特征点坐标数据文件的个数，保存在变量dataNum中
TarFileNum = 0;
for i = 1 : length(picFiles)
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        TarFileNum = TarFileNum + 1;
    end
end

%得到侧视图特征点坐标数据文件名，保存在变量dataName中
TarFileName = cell(TarFileNum,1);
TargetFile = cell(TarFileNum,1);
for i = 1 : TarFileNum
    TarFileName{i} = picFiles(i+2).name(1:end-4);
    TargetFile{i} = strcat(TarPath,'\',TarFileName{i},'.jpg');
end