original_data = open('ventas_base.db').read.split(',')
data = original_data.map { |data| data.to_f}

def proyections(ventas_base, augment, start_array, end_array)
  a = ventas_base.map.with_index do |sales, index|
    if index >= start_array && index <= end_array
      (sales * augment)
    else
      sales
    end
  end
  return a
end

def sum_proyection(array)
  array.inject(0) { |acc, sale| acc + sale }
end

percent1 = 1.10 
percent2 = 1.20 
start_array1 = 0 
end_array1 = 5
result1 = "%0.2f" % [sum_proyection(proyections(data, percent1, start_array1, end_array1))]

start_array2 = 6
end_array2 = 11
result2 = "%0.2f" % [sum_proyection(proyections(data, percent2, start_array2, end_array2))]

File.write('resultados.data', result1.to_s + ("\n"))
File.write('resultados.data', result2, mode: 'a')


