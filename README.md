# Assistente BNI

**Iniciativa pessoal e independente** para membros BNI de qualquer cadeira.

> Não é produto oficial do BNI. Ver [aviso legal](#aviso-legal).

Agenda 1a1s, gera pitchs de 30 segundos, gerencia referências, Power Team, kit da reunião, follow-ups e dashboard — com os dados do membro isolados em um único arquivo.

[![GitHub](https://img.shields.io/badge/GitHub-JEAN--ALMEIDA--CZO-181717?logo=github)](https://github.com/JEAN-ALMEIDA-CZO)
[![Instagram](https://img.shields.io/badge/Instagram-@jean.almeida.czo-E4405F?logo=instagram)](https://instagram.com/jean.almeida.czo)
[![Portfólio](https://img.shields.io/badge/Portfólio-athos.app.br-CF2030)](https://portifolio.athos.app.br)
[![Formato](https://img.shields.io/badge/Base-v4-CF2030)](#)
[![Licença](https://img.shields.io/badge/Uso-Livre%20para%20membros%20BNI-success)](#créditos)

---

## Links

| Recurso | URL |
|--------|-----|
| **Site / apresentação** | [jean-almeida-czo.github.io/assistente-bni](https://jean-almeida-czo.github.io/assistente-bni/) |
| **Gerador da base (formulário)** | […/gerador.html](https://jean-almeida-czo.github.io/assistente-bni/gerador.html) |
| **Repositório** | [github.com/JEAN-ALMEIDA-CZO/assistente-bni](https://github.com/JEAN-ALMEIDA-CZO/assistente-bni) |

> Após publicar o repositório e ativar o GitHub Pages (pasta `/docs`), esses links ficam ativos.

---

## O que é

O **Assistente BNI** é uma skill (arquivo de lógica) para IAs que leem Markdown de instruções. Ela transforma o chat em um assistente de networking focado no ciclo BNI:

- Ver agenda e horários livres  
- Agendar, remarcar, excluir e **registrar 1a1s já realizados**  
- Gerar **3 pitchs** de ~30 segundos (e pitch com notícia do dia)  
- Definir e usar o **Pitch da Semana**  
- Follow-up, referências dadas/recebidas e Power Team  
- Kit da reunião, dashboard (Givers Gain) e portfólio  
- Visitante na reunião e menu de ajuda  

**Universal:** funciona para contabilidade, advocacia, marketing, obras, saúde ou qualquer outra cadeira. O conteúdo vem sempre da ficha do membro na base de dados — a skill não assume uma especialidade fixa.

---

## Arquivos principais

| Arquivo | Função |
|---------|--------|
| `SKILL.md` | Lógica, fluxos e chips. **Não coloque dados pessoais aqui.** |
| `base-de-dados.md` | Ficha, agenda, membros do capítulo, histórico, referências, Power Team e pitch da semana |
| `install.sh` | Instalação automática (download/clone dos arquivos essenciais) |
| `docs/index.html` | Landing page (GitHub Pages) |
| `docs/gerador.html` | Formulário visual para montar e baixar a `base-de-dados.md` |

A skill **nunca grava arquivos sozinha**. Quando algo precisa ser registrado, ela devolve o bloco/tabela pronto para você colar na base.

---

## Instalação rápida

### Script (Linux, macOS, WSL)

```bash
curl -fsSL https://raw.githubusercontent.com/JEAN-ALMEIDA-CZO/assistente-bni/main/install.sh | bash
```

Ou, com o repositório já clonado:

```bash
git clone https://github.com/JEAN-ALMEIDA-CZO/assistente-bni.git
cd assistente-bni
chmod +x install.sh
./install.sh
```

### Manual

1. Baixe `SKILL.md` e `base-de-dados.md` deste repositório.  
2. Preencha a base no [**gerador online**](https://jean-almeida-czo.github.io/assistente-bni/gerador.html) e substitua o arquivo.  
3. Mantenha **os dois arquivos na mesma pasta**.  
4. Conecte essa pasta à sua IA (veja abaixo).  
5. No chat, digite: **`bni`**.

---

## Como usar em cada IA

### Claude (Projects / Skills)

1. Crie um Project (ou pasta de skill).  
2. Anexe `SKILL.md` e `base-de-dados.md` juntos.  
3. Indique nas instruções do projeto para seguir o `SKILL.md` e ler a base a cada comando.  
4. Digite `bni`.

### Cursor / agentes no editor

1. Copie a pasta para o diretório de skills do seu setup (ex.: `.cursor/skills/assistente-bni/`).  
2. Confirme que `SKILL.md` e `base-de-dados.md` estão lado a lado.  
3. Inicie o agente e digite `bni`.

### ChatGPT (GPTs) e outras IAs

1. Cole o conteúdo de `SKILL.md` nas instruções do assistente.  
2. Anexe ou cole `base-de-dados.md` no conhecimento / contexto.  
3. Use o comando `bni` no chat.

Sem a base preenchida, use o comando **`configurar`** ou o [gerador](https://jean-almeida-czo.github.io/assistente-bni/gerador.html).

---

## Preencher a base de dados

1. Abra o [**Gerador da base**](https://jean-almeida-czo.github.io/assistente-bni/gerador.html).  
2. Complete ficha, agenda, lista de membros do capítulo e o que mais for útil (histórico, referências, Power Team).  
3. Baixe o `base-de-dados.md` e substitua o arquivo na pasta da skill.

**Partes da base:**

| Parte | Conteúdo |
|-------|----------|
| A | Ficha do membro (obrigatória) |
| B | Configurações de agenda |
| C | Lista de membros do capítulo |
| D | Pitch de referência (estilo/tom) |
| E | Portfólio da empresa |
| F | Histórico de 1a1s e follow-ups |
| G | Referências dadas e recebidas |
| H | Power Team |
| I | Pitch da Semana |

---

## Comandos

| Comando | Função |
|---------|--------|
| `bni` | Menu inicial |
| `1a1` | Ver agenda e horários livres |
| `Agendar Novo 1a1` | Fluxo de agendamento |
| `Registrar 1a1` | Registrar 1a1 já realizado |
| `follow-up` | Follow-up de 1a1s |
| `pitch` | Gerar 3 pitchs |
| `pitch hoje` | Pitch com notícia verificável do dia |
| `pitch da semana` | Ver / definir / marcar apresentado |
| `portfolio` | Portfólio da empresa |
| `referência` | Gestão de referências |
| `power team` | Parceiros de poder |
| `reunião` | Kit da reunião |
| `resumo` | Dashboard |
| `visitante` | Visitante na reunião |
| `ajuda` | Lista de comandos |
| `configurar` | Preencher ou corrigir a base |
| `atualizar membros` | Atualizar a Parte C |

---

## GitHub Pages

Para publicar o site e o gerador:

1. Repositório público: `JEAN-ALMEIDA-CZO/assistente-bni`  
2. **Settings → Pages →** Source: branch `main`, pasta **`/docs`**  
3. Site: `https://jean-almeida-czo.github.io/assistente-bni/`  
4. Gerador: `https://jean-almeida-czo.github.io/assistente-bni/gerador.html`

---

## Estrutura do repositório

```text
assistente-bni/
├── SKILL.md              # Lógica da skill
├── base-de-dados.md      # Dados do membro (modelo / exemplo)
├── install.sh            # Instalação automática
├── README.md
├── .gitignore
└── docs/
    ├── index.html        # Landing page
    └── gerador.html      # Formulário da base
```

---



## Aviso legal

O **Assistente BNI** é uma **iniciativa pessoal e independente** de Jean Almeida.

- **Não é** produto, serviço ou aplicativo oficial do BNI Global, de franquias regionais ou de capítulos.
- **Não há** afiliação, parceria, endosso ou patrocínio por parte dessas entidades.
- **BNI®**, **Business Network International®** e **Givers Gain®** são marcas de seus respectivos titulares; o uso neste projeto é apenas referencial.
- O material é fornecido **“como está”**, sem garantia de resultados ou de funcionamento contínuo.
- O usuário é responsável pelos dados que inserir, pelo backup e pelo cumprimento das regras do seu capítulo e da legislação aplicável (incluindo LGPD, quando couber).

Texto completo: ver arquivo [`LEGAL.md`](./LEGAL.md).

## Créditos

**Desenvolvido por Jean Almeida**

- GitHub: [github.com/JEAN-ALMEIDA-CZO](https://github.com/JEAN-ALMEIDA-CZO)  
- Instagram: [@jean.almeida.czo](https://instagram.com/jean.almeida.czo)  
- Portfólio: [portifolio.athos.app.br](https://portifolio.athos.app.br)

BNI® e Givers Gain® são marcas de seus respectivos titulares. Este projeto é **independente** e não é afiliado oficialmente ao BNI global.

Uso livre para membros BNI e adaptadores. Ao redistribuir, mantenha os créditos ao autor.

---

## Suporte

Abra uma [Issue](https://github.com/JEAN-ALMEIDA-CZO/assistente-bni/issues) no repositório ou fale com o autor pelos canais acima.
