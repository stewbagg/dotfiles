<a id="readme-top"></a>

[![Stargazers][stars-shield]][stars-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
   <a href="https://github.com/stewbagg/dotfiles">
      <img src="assets/logo.png" alt="Dotfiles logo" width="80" height="80">
   </a>

   <h3 align="center">Dotfiles</h3>

   <p align="center">
      Configuration files for my development environment.
      <br />
      <a href="https://github.com/stewbagg/dotfiles"></a>
   </p>
</div>

<details>
   <summary>Table of Contents</summary>
   <ol>
      <li>
         <a href="#about">About</a>
         <ul>
            <li><a href="#tech-stack">Tech Stack</a></li>
         </ul>
      </li>
      <li><a href="#installation">Installation</a></li>
   </ol>
</details>

## About

Configuration files across operating systems are often scattered and difficult to manage. This repository, like other dotfiles collections, aims to simplify that by using tools such as **GNU Stow** to centralize and manage all configuration files and folders like `.bashrc`, `.config`, and `/etc` from one place.

This helps improve:

- System consistency
- Programming efficiency
- Environment usability

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Tech Stack

- [![Arch][Arch.icon]][Arch-url]
- [![Git][Git.icon]][Git-url]
- [![GitHub][GitHub.icon]][GitHub-url]
- [![Neovim][Neovim.icon]][Neovim-url]
- [![Go][Go.icon]][Go-url]
- [![Lua][Lua.icon]][Lua-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Installation

1. Clone the repo into the dotfiles directory

```bash
git clone https://github.com/stewbagg/dotfiles ~/dotfiles && cd ~/dotfiles
```

2. Setup GNU Stow

```bash
stow .
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

[stars-shield]: https://img.shields.io/github/stars/stewbagg/dotfiles.svg?style=for-the-badge
[stars-url]: https://github.com/stewbagg/dotfiles/stargazers
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/spencer-dennison
[Arch.icon]: https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff
[Arch-url]: https://archlinux.org/
[Git.icon]: https://img.shields.io/badge/Git-F05032?logo=git&logoColor=fff
[Git-url]: https://git-scm.com/
[GitHub.icon]: https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white
[GitHub-url]: https://github.com/
[Go.icon]: https://img.shields.io/badge/Go-%2300ADD8.svg?&logo=go&logoColor=white
[Go-url]: https://go.dev/
[Lua.icon]: https://img.shields.io/badge/Lua-%232C2D72.svg?logo=lua&logoColor=white
[Lua-url]: https://www.lua.org/
[Neovim.icon]: https://img.shields.io/badge/Neovim-57A143?logo=neovim&logoColor=fff
[Neovim-url]: https://neovim.io/
