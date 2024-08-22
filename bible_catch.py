import json

f = open('C:/Users/LG/StudioProjects/three_thousand/bible_catch_program/개역한글판성경.txt', 'r')

number_list = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

data = {}
a = ""
b = 0

i = 0
while i<31101:
    line = f.readline()
    if not line: break
    
    if line[1] in number_list:
        temp_a = line[0]
        line = line[1:]
    else:
        temp_a = line[:2]
        line = line[2:]

    t = line.split(" ")
    tt = len(t[0])
    ttt = t[0].split(":")

    temp_b = int(ttt[0])
    temp_c = int(ttt[1])
    content = line[tt+1:-1]
    
    if a != temp_a:
        a = temp_a
        b = temp_b
        data[a] = {temp_b : {temp_c : content}}
    else:
        if b != temp_b:
            b = temp_b
            k = data[a]
            k[b] = {temp_c : content}
            data[a] = k
        else:
            q = data[a][b]
            q[temp_c] = content
            data[a][b] = q
            
    
    i = i + 1
    
f.close()

print("ok")

file_path = "C:/Users/LG/StudioProjects/three_thousand/bible_catch_program/bible.json"
with open(file_path, 'w', encoding='utf-8') as file:
    json.dump(data, file)
