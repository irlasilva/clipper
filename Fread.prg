//Lê caracteres de arquivo já existente para um variável já existente e inicializada

function Main()

//sintaxe da function fread(<nHandle>,@<cBufferar>,<nBytes>)


Local nHandle
Local cBuffer := space(15) //irá armazenar dados lidos do arquivo, deve ser maior ou igual a nBytes

nHandle := Fopen('Clientes.Dat', 0) //Abre o arquivo no modo 0 - para leitura
	If Ferror() != 0
		? 'Erro na abertura do arquivo!'
		? Ferror()
		? nHandle
	Else
		If Fread(nHandle, @cBuffer, 15)!= 15
			? 'Erro na leitura do arquivo'
			Break
		EndIf
		
		?cBuffer
	EndIf
Fclose(nHandle)
return nil