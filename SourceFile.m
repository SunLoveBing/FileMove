function [SrcFileNum,SrcFileName] = SourceFile(SrcPath)

picFiles = dir(SrcPath);
%统计相应的文件夹下有多少张图片，保存在变量picNum中
SrcFileNum = 0;
for i = 1 : length(picFiles);
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        SrcFileNum = SrcFileNum + 1;
    end
end

%统计相应的文件夹下图片的文件名，保存在变量picName中，不带扩展名
SrcFileName = cell(SrcFileNum,1);
for i = 1 : SrcFileNum
    SrcFileName{i} = picFiles(i+2).name(1:end-4);
end 
