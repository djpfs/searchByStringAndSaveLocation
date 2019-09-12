import os
from conf import KEYWORDS, PATH, EXTENSION


def getAllPhpFiles():
    filesFound = []
    for root, dirs, files in os.walk(PATH):
        for file in files:
            if file.endswith(EXTENSION):
                filesFound.append(file)
        return filesFound
    return filesFound


def findInString(line):
    for KEY in KEYWORDS:
        try:
            if (line.lower().index(KEY) != -1):
                return KEY
        except:
            return False

    return False


def writeFound(file, text, line):
    content = "{\n\"file\": \"" + file + "\",\n\"line\": " + \
        str(line) + ",\n\"text\": \"" + text + "\"\n}, "
    return content
