t = gets
t.to_i.times do
    n,m = gets.split
    matrix = {}
    m.to_i.times do
        input = gets
        instruction = input[0]
        if instruction == 'U'
            inst,x,y,z,w = input.split
            matrix[[x.to_i,y.to_i,z.to_i]] = w.to_i
        elsif instruction == 'Q'
            ints,x1,y1,z1,x2,y2,z2 = input.split
            result = 0
            matrix.each do |k,w|
                x,y,z = k
                if x >= x1.to_i and x <= x2.to_i and y >= y1.to_i and y <= y2.to_i and z >= z1.to_i and z <= z2.to_i
                    result += w
                end
            end
            puts result
        end
    end
end
