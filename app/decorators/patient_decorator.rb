module PatientDecorator

  	def select_genre
    	[
	        ['Masculino', 'Masculino'],
	        ['Femenino', 'Femenino'],
	        ['Transexual', 'Transexual']
    	]
  	end

  	
  	def select_document
    	[
	        ['Cedula de Ciudadania', 'Cedula de Ciudadania'],
	        ['Tarjeta de Identidad', 'Tarjeta de Identidad'],
	        ['Cedula de Extranjeria', 'Cedula de Extranjeria'],
	        ['Pasaporte', 'Pasaporte'],
	        ['Documento nacional de identificación', 'Documento nacional de identificación'],
	        ['Registro Civil', 'Registro Civil']
    	]
  	end


  	def select_blood
    	[
	        ['O-', 'O-'],
	        ['O+', 'O+'],
	        ['A-', 'A-'],
	        ['A+', 'A+'],
	        ['B-', 'B-'],
	        ['B+', 'B+'],
	        ['AB-', 'AB-'],
	        ['AB+', 'AB+']
    	]
  	end




  	def select_condition
    	[
	        ['Pasajero', 1],
	        ['Tripulante', 2],
	        ['Empleado', 3],
	        ['Visitante', 4],
	        ['Otro', 5]
    	]
  	end

	def label_condition
	    if select_condition.flatten.include?(condition.to_i)
	      select_condition.each { |first_name, id| return first_name if condition.to_i == id }
	    end
	end



end