function [SrcFileNum,SrcFileName] = SourceFile(SrcPath)

picFiles = dir(SrcPath);
%ͳ����Ӧ���ļ������ж�����ͼƬ�������ڱ���picNum��
SrcFileNum = 0;
for i = 1 : length(picFiles);
    if strcmp(picFiles(i).name , '.') || strcmp(picFiles(i).name , '..')
        continue;
    else
        SrcFileNum = SrcFileNum + 1;
    end
end

%ͳ����Ӧ���ļ�����ͼƬ���ļ����������ڱ���picName�У�������չ��
SrcFileName = cell(SrcFileNum,1);
for i = 1 : SrcFileNum
    SrcFileName{i} = picFiles(i+2).name(1:end-4);
end 
