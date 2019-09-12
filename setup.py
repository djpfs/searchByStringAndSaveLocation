from func import getAllPhpFiles, findInString, writeFound
from conf import FILENAMERESULT, PATH

files = getAllPhpFiles()
fileResult = open(FILENAMERESULT, "a+")
fileResult.write("[")

lineCount = 1

for fileName in files:
    file = open(PATH + fileName, "r")
    print(PATH + fileName)
    try:
        for line in file:
            if findInString(line) != False:
                content = writeFound(
                    fileName, line.replace("\"", ""), lineCount)
                fileResult.write(content)
            lineCount += 1
    except:
        print("Erro on file: " + fileName)


fileResult.write("]")
