from func import getAllPhpFiles, findInString, writeFound
from conf import RESULT, ERROR, PATH

print("Carregando lista de arquivos, aguarde...")

files = getAllPhpFiles()
fileError = open(ERROR, "w+")
fileResult = open(RESULT, "w+")
fileResult.write("[")

lineCount = 1
print("[X] Varrendo arquivos, aguarde...")
for fileName in files:
    file = open(PATH + fileName, "r")
    try:
        for line in file:
            if findInString(line) != False:
                content = writeFound(
                    fileName, line.replace("\"", ""), lineCount)
                fileResult.write(content)
            lineCount += 1
    except:
        pass


fileResult.write("]")

print("[X] Terminado\n  -> Resultado da busca: ./" +
      RESULT + "\n  -> Log de erros: ./" + ERROR)
