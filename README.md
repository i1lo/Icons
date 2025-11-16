# 🎨 Icons Collection

<div align="center">

![Repo Size](https://img.shields.io/github/repo-size/6hax/icons?color=8257E6\&style=for-the-badge)
![Files](https://img.shields.io/github/directory-file-count/6hax/icons?color=8257E6\&style=for-the-badge)
![License](https://img.shields.io/badge/license-Free-brightgreen?style=for-the-badge)
![Maintained](https://img.shields.io/badge/maintained-yes-8257E6?style=for-the-badge)
![Stars](https://img.shields.io/github/stars/6hax/icons?style=for-the-badge)

Coleção de ícones **PNG** e **GIF**, organizados para interfaces, dashboards e projetos web.

Inclui uma **CLI minimalista** para navegação, listagem e busca.

</div>

---

## 🔍 Prévia

<div align="center">
<p>
  <img src="./static/Action/Action - Check.png" width="48px">
  <img src="./static/Apps/Apps - Chrome.png" width="48px">
  <img src="./animated/search.gif" width="48px">
  <img src="./animated/refreshing.gif" width="48px">
</p>
</div>

> [!NOTE]
> A coleção completa está em `/static`, `/animated` e também acessível via CLI.

---

## 📁 Estrutura

```
/static       → PNG por categoria
/animated     → GIF animados
/json         → listas geradas
/cli          → ferramenta de linha de comando
```

---

# 🖥️ CLI — Icons Command Line Tool

Interface simples para navegar, listar e buscar ícones direto do terminal.

> [!IMPORTANT]
> A CLI ainda **não foi publicada no npm**.
> Pode ser usada localmente via `npx` ou `npm link`.

---

## 📦 Estrutura da CLI

```
cli/
 └ src/
    ├ bin/icons.ts
    ├ commands/
    ├ utils/
    ├ types.ts
    └ index.ts
```

---

## 🚀 Como usar (local)

### Via npx (sem instalar)

```bash
npx ts-node ./cli/src/bin/icons.ts
```

### Via link global

```bash
cd cli
npm link
icons
```

> [!TIP]
> Depois do `npm link`, o comando `icons` funciona globalmente no sistema.

---

## 📚 Comandos

```
icons --help             → ajuda
icons list               → listar categorias
icons list <cat>         → ícones de uma categoria
icons search <nome>      → busca por nome
icons search <nome> --full → exibe caminho completo
```

> [!NOTE]
> Tudo foi pensado pra ser curto, rápido e direto.

---

## 🧩 Uso no Projeto

### HTML

```html
<img src="path/to/static/Action/Action - Check.png" alt="Check">
<img src="path/to/animated/loading.gif" alt="Loading">
```

### CSS

```css
.icon {
  width: 32px;
  height: 32px;
  background: url('path/to/icon.png') center no-repeat;
  background-size: contain;
}
```

---

## 🧠 Dicas

> [!TIP]
> PNG → para elementos estáticos
> GIF → para loaders, feedback e micro animações

> [!IMPORTANT]
> Mantém o tamanho original do ícone para evitar perda de nitidez.

---

## 🤝 Contribuindo

1. Fork
2. Clone
3. Adicione ícones
4. Commit
5. PR

> [!NOTE]
> Regras: PNG para estáticos, GIF para animados, tamanhos padronizados, nomes consistentes.

---

## 📝 Licença

Uso **pessoal e comercial** liberado.

---

## 🙏 Créditos

[hax](https://github.com/i1lo) & [Felipe](https://github.com/FelipeSilva72)

---

## ⭐ Apoie

Se curtir, deixa uma estrela ⭐
