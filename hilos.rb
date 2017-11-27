def func1
    i = 0
    while i<=2
       puts "Método 1 ejecutado: #{Time.now}"
       sleep(2)
       i = i+1
    end
 end
 
 def func2
    j = 0
    while j<=2
       puts "Método 2 ejecutado: #{Time.now}"
       sleep(1)
       j = j+1
    end
 end
 
 
 puts "Empieza en #{Time.now}"
 func1
 func2
 puts "Termina en #{Time.now}"
