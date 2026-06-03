# Criação de um Jogo 2D com o GameMaker

_Elaborado por Paulo Cesar Nicolau Padilha, do quinto período de Bacharelado em Sistemas de Informação - Instituto Federal Catarinense Campus Araquari_

---

## Sumário

- [Introdução ao GameMaker](#introdução-ao-gamemaker)
- [Instalação do GameMaker](#instalação-do-gamemaker)
  - [Ubuntu](#ubuntu)
  - [Windows](#windows)
- [Criação do Projeto](#criação-do-projeto)
- [Conhecendo o espaço de trabalho do GameMaker](#conhecendo-o-espaço-de-trabalho-do-gamemaker)
- [Criando um Objeto](#criando-um-objeto)
  - [Eventos](#eventos)

---

## Introdução ao GameMaker

Antigamente conhecido como GameMaker Studio 2, a engine GameMaker é uma ferramenta de criação de jogos famosa por sua simplicidade e facilidade de começar a utilizá-la, embora seja relativamente menos poderosa que outras engines como a Unity ou a Godot. Seu foco principal é em jogos 2D, possuindo um certo suporte à gráficos 3D limitados, e sua grande vantagem é a maneira com que ela é realmente perfeita para esse tipo de jogo. Muitos jogos 2D populares e aclamados, especialmente independentes, foram feitos à partir do GameMaker, alguns que posso destacar são:

- [Undertale](https://undertale.com/)/[Deltarune](https://deltarune.com/).
- [Hotline Miami 1 e 2](https://www.hotlinemiami.com/).
- [Forager](https://store.steampowered.com/app/751780/Forager/).
- [Pizza Tower](https://store.steampowered.com/app/2231450/Pizza_Tower/).
- [Katana ZERO](https://katanazero.com/).
- [Hyper Light Drifter](https://store.steampowered.com/app/257850/Hyper_Light_Drifter/).

Além de ser altamente acessível e fácil de se aprender, a engine também oferece um [enorme manual](https://manual.gamemaker.io/monthly/br/#t=Content.htm) em sua página oficial contendo guias de todas as funções e funcionalidades diferentes em vários idiomas, incluindo português brasileiro, que pode muito bem servir de material tanto para desenvolvedores iniciantes quanto experientes.

Eu mesmo tenho alguns jogos na minha página do [itch.io](https://paulok3tchup.itch.io/) que podem servir de exemplo para vocês das capacidades dessa engine até mesmo nas mãos de um amador como eu.

> **Observação:** GameMaker é um software gratuito que permite que você crie e exporte os jogos gratuitamente para algumas plataformas sem problemas, _**ENTRETANTO**_ é necessário **comprar** uma licença para que o jogo possa ser comercializado e exportado para outras plataformas, como Nintendo Switch, Playstation e etc. Para mais informações sobre as licenças do GameMaker, acesse a [página de licenças](https://gamemaker.io/pt-BR/get).

> **Observação 2:** Itch.io é uma plataforma de jogos na qual eu entrarei em detalhes mais pra frente.

Mas agora, antes de começar o desenvolvimento, precisamos primeiramente instalar o dito cujo.

---

## Instalação do GameMaker

#### Ubuntu

Para Instalar o GameMaker no Ubuntu, basta executar o seguinte comando no terminal:

    curl -L -o gamemaker.deb https://gamemaker.io/pt-BR/download/ubuntu/lts/GameMaker.zip && sudo dpkg -i gamemaker.deb && rm gamemaker.deb

O comando vai a senha da sua conta de usuário, digite-a para prosseguir com a instalação.

> **Explicação dos comandos**:
>
> > - **curl -L -o gamemaker.deb [link]**: Ele baixa o arquivo de instalação do GameMaker com o nome "gamemaker.deb".
> > - **sudo dpkg -i gamemaker.deb**: Ele instala o arquivo de instalação.
> > - **rm gamemaker.deb**: Ele remove o arquivo de instalação.

#### Windows

No Windows, basta acessar a [página de download](https://gamemaker.io/pt-BR/download) do site oficial e selecionar a opção Windows (ou clicando nesse [link direto](https://gms.yoyogames.com/GameMaker-Installer-2026.0.0.16.exe) que eu coloquei aqui) que o arquivo de instalação será baixado. Depois de baixar, basta executar o arquivo para instalar o GameMaker.

> **Observação:** A versão do GameMaker utilizada neste tutorial é a versão **LTS (Long Term Stable)**, que é a versão mais estável e recomendada para desenvolvimento de jogos, não recebe atualizações com frequência, caso queira que a Engine se mantenha atualizada, baixe a versão **padrão** do GameMaker.

---

## Criação do Projeto

Após instalar o GameMaker, abra o programa e clique no botão "New" para criar um novo projeto.

![Botão new](/img/btn-new.png)

Depois disso, o GameMaker vai perguntar qual será o tipo de projeto, as opções são **"Game"**, **"Live Wallpaper"** e **"Game Strip"**, nós vamos escolher a opção **"Game"**. Quando selecionada, o GameMaker mostra diversos templates de jogos diferentes para experimentar caso queira, mas nesse tutorial nós vamos escolher a opção **"Blank Pixel Game"** para começar. Essa opção cria um projeto quase completamente em branco.

![Tipos de projeto](/img/types-of-project.png)

> **Observação:** A diferença entre as opções **"Blank Game"** e **"Blank Pixel Game"** é que a segunda opção já tem as opções de gráficos adaptados para pixel art, caso queira usar gráficos de resolução maior pode usar a primeira opção.

Ao lado dos templates nós temos algumas outras opções para o projeto:

- **Scripting Language**: A linguagem do projeto, o GameMaker tem duas linguagens de script:
  - **GML Code**: A linguagem de script tradicional, semelhante a outras linguagens como Javascript e Python. **Essa que vamos escolher.**
  - **GML Visual**: A linguagem de script visual, onde você pode criar scripts usando blocos visuais, sem precisar escrever código. Usada geralmente para aprender, mas eu pessoalmente não recomendo.
- **Project Name**: O nome do projeto, você pode escolher o nome que quiser para o seu projeto.
- **Location**: O local onde o projeto será salvo, você pode escolher o local que quiser para salvar o seu projeto.

Depois que tudo estiver feito, clique no botão "Let's Go!".

---

## Conhecendo o espaço de trabalho do GameMaker

Seja bem-vindo ao espaço de trabalho do GameMaker!

![tela](/img/espaco-de-trabalho.png)

**ANTES DE TUDO**!!! Se você estiver no **Linux**, clique no ícone de alvo no canto superior direito ta tela, aqui fica as opções de que plataforma você vai selecionar pra rodar o jogo, o padrão é a opção "Testar". Selecione a opção **"GX.games"** para que o jogo rode no navegador. O GameMaker exige muito mais etapas de instalação para rodar nativamente no Linux e muitas delas não são possíveis de serem executadas nos computadores do IFC (ou de qualquer escola que bloqueia acesso ao admin), mas rodar no navegador não exige nenhuma configuração a mais.

![alt text](/img/gxgames.png)

Se estiver no **Windows**, pode deixar na opção "Testar" mesmo, que o jogo vai rodar normalmente.

Agora podemos voltar ao espaço de trabalho.

Nessa página inicial nós podemos reparar em quatro coisas principais:

- O Inspetor na esquerda. Ele serve pra configurar o **asset** que esteja atualmente selecionado (ele começa na última sala aberta, nesse caso a única).
- Os Recursos na direita. É aqui que ficam todos os **assets** do projeto.
- As outras opções e configurações acima.
- O Console abaixo (ele começa fechado).

> Além desses quatro também existem várias outras telas como o **Editor de Sprite**, o **Editor de Objetos** e o **Editor de Ambientes**, mas esses nós ainda vamos conhecer ao longo da aula.

Começaremos pelos recursos.

## Criando um objeto

Como devem ter notado, o GameMaker já cria uma sala inicial pro jogo funcionar. Manteremos essa sala existindo para usá-la futuramente. Agora, clicando com o botão direito no espaço vazio abaixo da sala, vamos criar um **grupo** chamado "Objects", e dentro desse grupo criaremos dois objetos, um chamado "obj_player" e outro chamado "obj_controle". Clicando duas vezes em um desses objetos vai abrir o **Editor de Objeto**, nessa tela nós podemos mudar o sprite, a máscara de colisão e o mais importante: os **Eventos**! Antes de partirmos para os eventos, entretanto, vamos escolher o _obj_controle_ para começar e vamos marcar a opção "persistente" no editor dele.

### Eventos

Os eventos controlam quando e como o jogo vai rodar os códigos que foram escritos. Nesse objeto que estamos editando agora, vamos usar dois eventos à princípio:

- Evento **Criar**: Os códigos nesse evento rodam somente uma vez quando o objeto é criado no jogo.
- Evento **Etapa Inicial**: Os códigos nesse evento rodam em todos os frames do jogo, mas **antes** do evento **Etapa***.

> *O GameMaker possui três variações do evento etapa:
> 
> - Etapa Inicial: Roda antes do etapa.
> - Etapa: Roda "no meio".
> - Etapa Final: Roda após o etapa.
>
> Todos esses eventos ainda rodam a todos os frames do jogo, mas é importante aprender a ordem deles.

Esse objeto servirá de controle para certas variáveis que devem existir a todo momento no jogo, e vamos começar pelas mais importantes:

#### Inputs do player

Pro jogo realmente funcionar como um jogo nós devemos ser capazes de controlar os menus e os personagens, então abriremos o evento **Criar** e vamos escrever o seguinte código:

    //Create
    
    global.btn_cima = false
    global.btn_baixo = false
    global.btn_esq = false
    global.btn_dir = false

> Variáveis com prefixo "global." são acessíveis por todos os objetos e scripts do jogo.

Esse vai ser o código básico de controle direcional. Mas ele não vai funcionar ainda, até por que ele está false em todos os botões, então vamos fazer esse código funcionar no evento **Etapa Inicial**:

    //Begin Step
    
    global.btn_cima = keyboard_check(ord("W"))
    global.btn_baixo = keyboard_check(ord("S"))
    global.btn_esq = keyboard_check(ord("A"))
    global.btn_dir = keyboard_check(ord("D"))

Agora o jogo está lendo o input nas teclas W, A, S e D e associando eles à variáveis de botão pra cima, esquerda, baixo e direita respectivamente. E agora, já que estamos usando o **keyboard_check** na **Etapa Inicial**, o jogo vai saber se essas teclas estão sendo pressionadas antes de executar qualquer coisa que esteja no evento **Etapa** de qualquer outro objeto!
