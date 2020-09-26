<p align="center">
  <h3 align="center">Thecloser</h3>

  <p align="center">A small plugin for closing quotes, brackets, and parenthesis</p>
</p>


## Table of Contents

* [About the Project](#about-the-project)
* [Getting Started](#getting-started)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)


## About The Project

This is a small plugin that provides an improved editing experience when working with closable characters: quotes, parenthesis, and brackets. 

## Getting Started

To get a local copy up and running follow these simple steps.

### Installation

You can install this package using a VIM package manager like [vim-plug](https://github.com/junegunn/vim-plug) or using VIM 8's native package loading

Example .vimrc update to install using vim-plug:
```
Plug 'denheck/thecloser'
```

## Usage

Once installed the plugin provides a single function called `thecloser#InsertClosableCharacter`.

The plugin doesn't define any keymappings by default. Below are the suggested keymappings:
```vim
inoremap ' <Esc>:call thecloser#InsertClosableCharacter("'")<CR>i
inoremap " <Esc>:call thecloser#InsertClosableCharacter('"')<CR>i
```

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin AmazingFeature`)
5. Open a Pull Request


## License

Distributed under the MIT License. See `LICENSE` for more information.

[license-shield]: https://img.shields.io/github/license/github_username/repo.svg?style=flat-square
[license-url]: https://github.com/github_username/repo/blob/master/LICENSE.txt
[product-screenshot]: images/screenshot.png

