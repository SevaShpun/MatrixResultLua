os.execute("chcp 65001 > nul")
os.execute("title Solving a Matrix by a Simple Method (LUA)")

cell = {[0]=0, [1]=0, [2]=0, [3]=0, [4]=0, [5]=0, [6]=0, [7]=0, [8]=0}

function template_text()
    print("\t\t\t\t=================")
    print("\t\t\t\t   Template 3x3")
    print("\t\t\t\t=================")
    print("\t\t\t\t    1 | 2 | 3")
    print("\t\t\t\t    4 | 5 | 6")
    print("\t\t\t\t    7 | 8 | 9")
    print("\t\t\t\t=================")
end

function matrix_filling_text()
    print("\t\t\t\tFill in the cells")
    print("\t\t\t\t=================")
    print("\t\t\t\t"..cell[0].."\t"..cell[1].."\t"..cell[2])
    print("\t\t\t\t"..cell[3].."\t"..cell[4].."\t"..cell[5])
    print("\t\t\t\t"..cell[6].."\t"..cell[7].."\t"..cell[8])
    print("\t\t\t\t=================")
    print("")
end

function main()
    local r = 0
    local i = 0
    while i < 9 do
        template_text();
        matrix_filling_text();

        print("cell "..(i+1).."> ")
        local input_text = io.read()
        os.execute("cls")
        if type(tonumber(input_text)) == 'number' then
            cell[i] = input_text
            i = i + 1
        end
    end
    
    template_text()
    matrix_filling_text()
    
    r = cell[0] * (cell[4] * cell[8] - cell[5] * cell[7]) - cell[1] * (cell[3] * cell[8] - cell[5] * cell[6]) + cell[2] * (cell[3] * cell[7] - cell[4] * cell[6]);
    
    print("\t\t\t\tResult: "..r)
    print("Нажмите любую кнопку для выхода")
    io.read()
end

main()