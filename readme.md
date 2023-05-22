# Pré-requisitos
Certifique-se de ter os seguintes itens instalados em seu sistema:

* Flutter SDK: Versão 3.3.7 ou superior. Consulte a documentação oficial do Flutter para obter instruções sobre como instalá-lo.
* Dart SDK: Acompanha a instalação do Flutter.
* Git


# Instalação
Siga as etapas abaixo para configurar o ambiente e instalar as dependências necessárias:

* Clone este repositório para o seu sistema local:

* Navegue até o diretório do projeto:

* Instale o Melos globalmente em seu sistema usando o comando 


``` 
dart pub global activate melos

Dependendo da versão do seu sdk talvez seja necessário uma versão específica, basta acompanhar os logs da instalação.
Segue exemplo de instalação com versão.

dart pub global activate melos 2.9.0
```

* Agora, você está pronto para executar o Melos para gerenciar os pacotes do projeto. Use o comando melos bootstrap 
para instalar as dependências dos pacotes e configurar o ambiente de desenvolvimento.
bash

* Execute

``` 
melos get

ou 

melos bs
```

## Problemas na execução

Caso ainda assim não consiga instalar o melos e as dependencias do projeto, acessa cada uma das pastas abaixo e rode o comando a seguir:

* design_system
* pokemom_dependencies
* pokedex

```
flutter pub get 
```

# Executando o App Flutter

Após a conclusão da instalação:

* Acesse o diretório "pokedex" 

Agora você pode executar o aplicativo Flutter usando o seguinte comando:

```
flutter run
```

Este comando inicia o aplicativo no emulador ou dispositivo conectado.




