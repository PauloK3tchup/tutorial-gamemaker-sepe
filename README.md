# Criação de um Jogo 2D com o GameMaker

_Elaborado por Paulo Cesar Nicolau Padilha, do quinto período de Bacharelado em Sistemas de Informação - Instituto Federal Catarinense Campus Araquari_

---

## Sumário

- [Criação de um Jogo 2D com o GameMaker](#criação-de-um-jogo-2d-com-o-gamemaker)
  - [Sumário](#sumário)
  - [Introdução ao GameMaker](#introdução-ao-gamemaker)
  - [Instalação do GameMaker](#instalação-do-gamemaker)
    - [Ubuntu](#ubuntu)
    - [Windows](#windows)
  - [Criação do Projeto](#criação-do-projeto)
  - [Conhecendo o espaço de trabalho do GameMaker](#conhecendo-o-espaço-de-trabalho-do-gamemaker)
  - [Criando os objetos](#criando-os-objetos)
    - [Eventos](#eventos)
    - [Os inputs do player](#os-inputs-do-player)
  - [Criando uma Sala](#criando-uma-sala)
  - [Criando um Sprite](#criando-um-sprite)
  - [Controlando o Player](#controlando-o-player)
    - [Movimento](#movimento)
    - [Colisões](#colisões)

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

![plataformas](/img/gxgames.png)

Se estiver no **Windows**, pode deixar na opção "Testar" mesmo, que o jogo vai rodar normalmente.

Agora podemos voltar ao espaço de trabalho.

Nessa página inicial nós podemos reparar em quatro coisas principais:

- O Inspetor na esquerda. Ele serve pra configurar o **asset** que esteja atualmente selecionado (ele começa na última sala aberta, nesse caso a única).
- Os Recursos na direita. É aqui que ficam todos os **assets** do projeto.
- As outras opções e configurações acima.
- O Console abaixo (ele começa fechado).

> Além desses quatro também existem várias outras telas como o **Editor de Sprite**, o **Editor de Objetos** e o **Editor de Salas**, mas esses nós ainda vamos conhecer ao longo da aula.

Começaremos pelos recursos.

## Criando os objetos

Como devem ter notado, o GameMaker já cria uma sala inicial pro jogo funcionar. Manteremos essa sala existindo para usá-la futuramente. Agora, clicando com o botão direito no espaço vazio abaixo da sala, vamos criar um **grupo** chamado "Objects", e dentro desse grupo criaremos dois objetos, um chamado "obj_player" e outro chamado "obj_controle".

![grupo de objetos](/img/grupo-objects.png)

Clicando duas vezes em um desses objetos vai abrir o **Editor de Objeto**, nessa tela nós podemos mudar o sprite, a máscara de colisão e o mais importante: os **Eventos**! Antes de partirmos para os eventos, entretanto, vamos escolher o _obj_controle_ para começar e vamos marcar a opção "persistente" no editor dele.

![editor de objeto](/img/editor_obj.png)

### Eventos

Os eventos controlam quando e como o jogo vai rodar os códigos que foram escritos. Nesse objeto que estamos editando agora, vamos usar dois eventos à princípio:

- Evento **Criar**: Os códigos nesse evento rodam somente uma vez quando o objeto é criado no jogo.
- Evento **Etapa Inicial**: Os códigos nesse evento rodam em todos os frames do jogo, mas **antes** do evento **Etapa\***.

![eventos](/img/eventos.png)

> \*O GameMaker possui três variações do evento etapa:
>
> - Etapa Inicial: Roda antes do etapa.
> - Etapa: Roda "no meio".
> - Etapa Final: Roda após o etapa.
>
> Todos esses eventos ainda rodam a todos os frames do jogo, mas é importante aprender a ordem deles.

Esse objeto servirá de controle para certas variáveis que devem existir a todo momento no jogo, e vamos começar pelas mais importantes:

### Os inputs do player

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

> **"keyboard_check"** é uma função que lê o input da tecla que foi dada de parâmetro e retorna true enquanto ele estiver sendo segurado. Essa função tem algumas variações como o **"keyboard_check_pressed"** e o **"keyboard_check_released"** que retornam true em contextos diferentes e outras.
>
> **"ord()"** é uma função que recebe um caractere e retorna seu valor Unicode (UTF8). Isso é necessário para que o GameMaker leia as letras do teclado.

Agora o jogo está lendo o input nas teclas W, A, S e D e associando eles à variáveis de botão pra cima, esquerda, baixo e direita respectivamente. E agora, já que estamos usando o **keyboard_check** na **Etapa Inicial**, o jogo vai saber se essas teclas estão sendo pressionadas antes de executar qualquer coisa que esteja no evento **Etapa** de qualquer outro objeto!

Mas não adiante ter os controles e não ter o que controlar, então vamos entrar no **obj_player** e adicionar os seguintes eventos:

- Criar.
- Etapa.

![objeto player](/img/obj_player.png)

No evento Criar, por enquanto, vamos definir somente a velocidade dele:

    //Create

    spd = 3

> Observação: A coordenada (0,0) numa sala do GameMaker fica no canto superior esquerdo e seu limite fica no canto inferior direito, logo:
>
> - Movimentos "positivos" levam o player para a direita e para baixo
> - Movimentos "negativos" levam o player para a esquerda e para cima

Agora vamos ao evento Etapa e, só para testes, vamos só fazer ele se mexer sem controle nenhum:

    //Step

    x += spd
    y += spd

> Usaremos movimentos positivos aqui como devem ter notado pelo fato de que a posição do player é somada com a velocidade. Isso deve fazer o player deslizar na diagonal para direita e para baixo.

É uma boa maneira de saber se a velocidade dele está boa antes de aplicar o controle.
Então vamos descobrir! Clique no botão com símbolo de _play_ ou aperte F5 para rodar o jogo e você verá algo lindo:

![nada](/img/escuro.png)

**Absolutamente Nada!**

Pois é, o jogo não vai funcionar antes de nós configurarmos pelo menos uma **sala** no jogo, e é isso que faremos agora!

## Criando uma Sala

Vamos usar aquela mesma sala que o GameMaker já criou para nós, mas vamos fazer duas coisas antes: criar uma pasta chamada **"Rooms"** e renomar essa sala para **"rm_teste"**.

![sala](/img/grupo_salas.png)

Agora, clicando duas vezes nessa sala, vamos abrir o **Editor de Sala**.

Aqui, todo o esquema fica no **Inspetor**.

![inspetor da sala](/img/inspetor_sala.png)

Acima nós temos as camadas, abaixo nós temos as configurações da sala num todo.

Sendo bem direto no que faremos aqui:

- Mudaremos a altura e largura da sala para 1000x1000.
- Na sessão "Visores e Câmeras" vamos:
  - Marcar a opção "Ativar Visor".
  - Abrir o Visor 0 e marcar a opção "Visível".
  - Vamos mudar o tamanho do visor e da câmera para 640x480.
  - Mudar o "Objeto seguido" para o obj_player, a borda vertical para 240 e a borda horizontal para 320.
- Colocaremos o obj_player na camada "Instances".
- Adicionaremos uma camada de instâncias chamada "Hud" e colocaremos o obj_controle nessa camada.

> **Explicação**: Visores e câmeras são usados para controlar o que o jogador vê na tela, o visor determina **que** parte da sala é exibida, enquanto a câmera determina **como** essa parte da tela é exibida, e essa exibição é chamada e "Visão" ou "View". As mudanças que fizemos no tamanho do visor e da câmera é para que nosso jogo tenha a resolução de 640x480 e a determinação do objeto seguido é para que a câmera siga o player. Caso você queira que a câmera se aproxime ou se afaste do player, mude o valor da **câmera**, não do visor!

Não vamos mexer nas físicas da sala hoje, pois vamos simular nossa própria física simples.

Agora, antes de darmos F5, precisamos dar uma **aparência** ao nosso obj_player para que ele fique visível na tela.

## Criando um Sprite

Na aba de recursos, vamos criar um novo grupo chamado "Sprites" e dentro desse grupo vamos criar um sprite chamado "spr_player".

![recursos estrutura](/img/estrutura.png)

> **Imagem:** Estrutura completa até agora!

Clicando duas vezes nesse sprite, vamos abrir o **Editor de Sprite**.

![editor de sprite](/img/editor_de_sprite.png)

Aqui, nós podemos criar a aparência do nosso player e mexer em suas propriedades. Podemos clicar no botão "Editar Imagem" para abrir o editor de imagens ou clicar em "Importar" para importar uma imagem existente. Vamos mudar o tamanho do sprite pra 32x32 e clicar em "Editar Imagem".

![editor de imagem](/img/editor_de_imagem.png)

O editor é bem simples, trate-se de um programa de desenho embutido com ferramentas básicas. Por enquanto, vamos desenhar apenas um retângulo colorido para representar o jogador.

Retornando ao editor de sprite, vamos mudar a origem do sprite para o centro clicando no dropdown do canto superior esquerdo. Isso siginifica que qualquer movimento, rotação e outras coisas de movimento vão ser calculados a partir do centro do sprite, e não da borda superior esquerda, que é o padrão.

![sprite do player](/img/spr_player.png)

> **Dica Extra**: No editor de sprite também temos algumas outras opções importantes, como as de textura e o nine slice, mas uma que eu destaco é a **Máscara de colisão**, pois nela você pode definir o tamanho e posição da "hitbox" do sprite.

Agora vamos clicar duas vezes no obj_player para abrir o editor de objetos e vamos mudar o sprite do player para o spr_player que acabamos de criar.

![player com sprite](/img/player_com_sprite.png)

> **Observação:** Como deve ter reparado existe uma opção de "Máscara de colisão" logo abaixo da definição do sprite, essa opção serve para que o objeto tenha uma hitbox diferente do sprite original dele.

Agora nós podemos dar F5 e ver nosso obj_player se movendo maravilhosamente!

![primeiro teste](/img/primeiro_teste.png)

Entretando, o movimento dele ainda não é controlável, então vamos apagar esse código de etapa que escrevemos e vamos começar do zero.

## Controlando o Player

### Movimento

Agora nós vamos voltar ao evento Etapa do nosso obj_player e vamos pensar um pouco no seguinte:

Esse código aqui é funcional:

    //Step

    if global.btn_cima {
        y -= spd
    }
    if global.btn_baixo {
        y += spd
    }
    if global.btn_esq {
        x -= spd
    }
    if global.btn_dir {
        x += spd
    }

Mas ele é muito redundante e pode ser chato de alterar no futuro, então vamos bolar uma abordagem diferente.

Uma variável no estado **false** é igual a 0 no código, enquanto o **true** é igual a 1.

Apesar de usarmos esses termos booleanos, o GameMaker (assim como todas as outras linguagens) lê essas variáveis como números mesmo, e assim pode-se fazer operações matemáticas com eles como qualquer outro número.
Consequentemente, podemos chegar na seguinte conclusão:

    //Subtraímos o lado "negativo" do lado "positivo" do movimento
    global.btn_dir - global.btn_esq

    //Se nenhum botão for apertado:
    global.btn_dir - global.btn_esq = 0

    //Se o botão esquerdo for apertado:
    global.btn_dir - global.btn_esq = -1

    //Se o botão direito for apertado:
    global.btn_dir - global.btn_esq = 1

Como podem ver, o resultado da subtração entre o lado positivo e o negativo traz um resultado que condiz com o lado do movimento no jogo (Negativo pra esquerda, Positivo pra direita) e então podemos fazer com que o código seja simplesmente assim:

    //Step

    var hsp = (global.btn_dir - global.btn_esq)*spd
    var vsp = (global.btn_baixo - global.btn_cima)*spd

    x += hsp
    y += vsp

> **Explicação do código**:
>
> > - **var**: é usado para declarar uma variável local, só usada dentro do escopo que foi declarada. Nesse caso, criamos a variável **"hsp"**.
> > - <strong>(global.btn_dir - global.btn_esq)\*spd</strong>: o resultado da subtração é multiplicado pela velocidade.
> > - **x += hsp**: somamos o hsp à coordenada **x** do player.

Apertando F5, o jogo permanece o mesmo visualmente, mas agora o player se move de acordo com os inputs do teclado!

Entretanto, o player não possui limites, barreiras, nada que o impeça de sair andando pra fora da sala, e isso não é algo que queremos, então vamos adicionar uma coisa **muito** importante.

### Colisões

Criaremos um obj_parede, ele não precisa de código nenhum, por enquanto ele será visível e terá um sprite de cor bem diferente do player.

![objeto parede](/img/obj_parede.png)

> Lembre-se de manter a origem do sprite no **centro**!

Vamos criar uma camada "Collisions" e colocar algumas instâncias desse objeto na sala, aqui vocês podem mexer no tamanho e posição dessas instâncias, só não recomendo mexer no ângulo por enquanto.
Entretando, nem adianta dar F5 pra testar pois ainda não fizemos o código da colisão.

Voltando ao evento etapa do obj_player, substitua esse código:

    x += hsp
    y += vsp

Por esse:

    if place_meeting(x + hsp, y, obj_parede) {
      while (!place_meeting(x + sign(hsp),y,obj_parede)) {
        x += sign(hsp)
      }
      hsp = 0
    }
    x += hsp
    
    if place_meeting(x, y + vsp, obj_parede) {
      while (!place_meeting(x,y + sign(vsp),obj_parede)) {
        y += sign(vsp)
      }
      vsp = 0
    }
    y += vsp

> **Explicação:**
> - **if place_meeting(...)**: Verifica se o player está em colisão com a parede.
> - **loop while**: Faz uma verificação extra pixel por pixel pra garantir que o player esteja, de fato, colidindo com a parede.
> - **hsp = 0 (ou o vsp = 0)**: Zera a velocidade para que o player pare.
> - **x += hsp (ou o y += vsp)**: Aplica a velocidade à posição do player.
> 
> **Observação:** É recomendável que mantenha essas duas estruturas lógicas **separadas** para evitar conflitos na colisão horizontal e vertical.
