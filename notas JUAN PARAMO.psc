Algoritmo notas
	Definir codigo Como Entero
	Definir aprobados Como Entero
	Definir reprobados Como Entero
	Definir total_de_estudiantes Como Entero
	Definir codigo_mejor Como Entero
	Definir codigo_peor Como Entero
	Definir nota Como Real
	Definir suma_notas Como Real
	Definir promedio Como Real
	Definir mejor_nota Como Real
	Definir peor_nota Como Real
	aprobados <- 0
	reprobados <- 0
	suma_notas <- 0
	total_de_estudiantes <- 0
	mejor_nota <- 0
	codigo_mejor <- 0
	peor_nota <- 6
	codigo_peor <- 0
	Escribir 'Ingrese el codigo del estudiante (y escriba 0 para terminar ):'
	Leer codigo
	Mientras codigo<>0 Hacer
		Escribir 'Ingrese la nota del estudiante:'
		Leer nota
		total_de_estudiantes <- total_de_estudiantes+1
		suma_notas <- suma_notas+nota
		Si nota>=3.0 Entonces
			aprobados <- aprobados+1
		SiNo
			reprobados <- reprobados+1
		FinSi
		Si nota>mejor_nota Entonces
			mejor_nota <- nota
			codigo_mejor <- codigo
			codigo_peor <- codigo
		FinSi
		Si nota<peor_nota Entonces
			peor_nota <- nota
		FinSi
		Escribir 'Ingrese el codigo del siguiente estudiante (0 si ya quiere finalizar):'
		Leer codigo
	FinMientras
	Si total_de_estudiantes>0 Entonces
		promedio <- suma_notas/total_de_estudiantes
	SiNo
		promedio <- 0
	FinSi
	Escribir 'Estudiantes aprobados:', aprobados
	Escribir 'Estudiantes reprobados:', reprobados
	Escribir 'Promedio de todos:', suma_notas/total_de_estudiantes
	Escribir 'mejor nota:', mejor_nota, '(codigo', codigo_mejor, ')'
	Escribir 'peor nota:', peor_nota, '(codigo', codigo_peor, ')'
FinAlgoritmo
