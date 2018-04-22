def main (text)

  value = text.split()
  finalResult, text2 = ""
  t = value[0]
  t.to_i.times do
      m = value[2]
      matrix = {}

      if m.eql?"UPDATE" or  m.eql?"QUERY"
        m = value[1]
        text2 = text2[4..text.length]
        value = text2.split()
        temp = 0
      else
        text2 = text[6..text.length]
        temp = 0
        value = text2.split()
      end

      m.to_i.times do |i|
        instruction = value[temp]

        if instruction == 'UPDATE'
          x = value[temp+1]
          y = value[temp+2]
          z = value[temp+3]
          w = value[temp+4]

          matrix[[x.to_i,y.to_i,z.to_i]] = w.to_i

          text2 = text2[15..text2.length]
          value = text2.split()
          elsif instruction == 'QUERY'
              x1 = value[temp+1]
              y1 = value[temp+2]
              z1 = value[temp+3]
              x2 = value[temp+4]
              y2 = value[temp+5]
              z2 = value[temp+6]

              result = 0
              matrix.each do |k,v|
                  x,y,z = k
                  if x >= x1.to_i and x <= x2.to_i and y >= y1.to_i and y <= y2.to_i and z >= z1.to_i and z <= z2.to_i
                      result += v
                  end
              end
              text2 = text2[18..text2.length]
              value = text2.split()
              puts result
              finalResult += result.to_s + " "
            end
        end
    end
    puts finalResult
    return finalResult
end
