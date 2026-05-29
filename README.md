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

---

## Introdução ao GameMaker

Antigamente conhecido como GameMaker Studio 2, a engine GameMaker é uma ferramenta de criação de jogos famosa por sua simplicidade e facilidade de começar a utilizá-la, embora seja relativamente menos poderosa que outras engines como a Unity ou a Godot. Seu foco principal é em jogos 2D, possuindo um certo suporte à gráficos 3D limitados, e sua grande vantagem é a maneira com que ela é realmente perfeita para esse tipo de jogo. Muitos jogos 2D populares e aclamados, especialmente independentes, foram feitos à partir do GameMaker, alguns que posso destacar são:

- Undertale/Deltarune.
- Hotline Miami 1 e 2.
- Forager.
- Pizza Tower.
- Katana ZERO.
- Hyper Light Drifter.

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
