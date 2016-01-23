function FileMove(TarFileNum,SrcFileNum,TarFileName,SrcFileName,TargetFile,destination)

for i = 1 : TarFileNum
    for j = 1 : SrcFileNum
        if strcmp(TarFileName{i},SrcFileName{j})
            movefile(TargetFile{i},destination)
        end
    end
end