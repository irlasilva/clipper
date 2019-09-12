//modo de acesso a arquivos
//0 - Leitura
//1 - Gravação
//2 - Leitura e Gravação

//se o arquivo não existir retornará -1(fopen) e 2 se o arquivo não for encontrado(ferror)

function Main()

Local nHandle
Local cBuffer := space(15)

nHandle := Fopen('Clientes.Dat', 0) //Abre o arquivo no modo 0 - para leitura
	If Ferror() != 0
		? 'Erro na abertura do arquivo!'
		? Ferror()
		? nHandle
	Else
		If Fread(nHandle, @cBuffer, 15)!= 15
			? 'Erro na leitura do arquivo'
		EndIf
		
		?cBuffer
	EndIf
Fclose(nHandle)
return nil