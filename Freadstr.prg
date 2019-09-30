//Lê caracteres de um arquivo já existente

function Main()

Local nHandle
Local cString

nHandle := Fopen('Clientes.Dat', 0) //Abre o arquivo no modo 0 - para leitura
	If Ferror() != 0
		? 'Erro na abertura do arquivo!'
		? Ferror()
		? nHandle
	Else
		cString = Freadstr(nHandle, 15)
		? 'Função Freadstr - saída'
		? cString
	EndIf
Fclose(nHandle)
return nil