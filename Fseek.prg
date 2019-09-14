//cString = Freadstr(nHandle, 15) - lê arquivo binário

//Fseek = reposiciona o ponteiro de arquivos
//Fseek(<nHandle>, <nOffset>, [<nOrigem>])
//nOffset quantidade de bytes que o ponteiro será movido a partir da posição definida em nOrigem
//

function Main()

Local nHandle
Local nTamanho

nHandle := Fopen('Clientes.Dat', 0) //Abre o arquivo no modo 0 - para leitura
	If Ferror() != 0
		? 'Erro na abertura do arquivo!'
		? Ferror()
		? nHandle
	Else
		nTamanho = Fseek(nHandle, 0, 3)
		? 'tamanho do arquivo: '
		? nTamanho
		? 'Bytes'
	EndIf
Fclose(nHandle)
return nil