
// 0 - normal (leitura e Gravação)
// 1 - Leitura
// 2 - Escondido (cria arquivo oculto)
// 4 - Sistema (cria arquivo de sistema) 

function Main()

// nHandle - número de manipulação atribuído ao arquivo vai de 0 a 65.535
Local nHandle

nHandle := Fcreate ('Clientes.Dat',0) //Fcreate(<cArquivo>,[<nAtributo>]) cria o arquivo
	If nHandle = -1
		?'Erro na criação do arquivo!'
	Else
		Fwrite(nHandle,'Arquivo criado com sucesso! Arquivo normal (0) para leitura e gravação - irla silva 30 de agosto de 2019 11:28')
		Fwrite(nHandle,'Tentativa 2 - Treino Clipper - irla silva 12 de setembro de 2019 13:15')
		Fclose(nHandle)
	EndIf

return nil