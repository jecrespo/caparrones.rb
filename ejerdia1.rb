#EJERICIO PARA EL ALUMNO: Muestra la lista de contactos
def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind == "number"
  return answer
end

def add_contact
  #Creamos un hash con dos claves, nombreque es un string y telefono que es un array
  contact = {"name" => "", "phone_numbers" => []}
  #añadimos el nombre con el metodo ask creado previamente
  contact["name"] = ask("Introduce el nombre del contacto")
  answer = ""
  #Usamos un loop para ver si quiere añadir más o cerrar el programa
  while answer != "n"
    answer = ask("Quieres añadir un número de teléfono? (s/n)")
    #Si dice que si, volvemos a usar el metodo ask para pedir el telefono, si sigue añadiendo entremos en blucle
    if answer == "s"
      phone = ask("Introduce el número:")
      contact["phone_numbers"].push(phone)
    end
  end
  return contact
end

contact_list = []

answer = ""
while answer != "n"
  contact_list.push(add_contact())
  #Preguntamos si quiere añadir otro contacto
  answer = ask("Quieres añadir otro? (s/n)")
end

puts "-" * 30
puts contact_list.inspect
puts "-" * 30

puts "Los datos introducidos son:"
contact_list.each do |contact|
  puts "Nombre: #{contact["name"]}"
    if contact["phone_numbers"].size > 0
      contact["phone_numbers"].each do |phone_numbers|
      puts "telefono: #{phone_numbers}"
    end
  end
end