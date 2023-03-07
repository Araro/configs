# configs

## Instrucciones iniciales

Repositorio con archivos de configuración de Ubuntu 

1.- Instalar Vim
```
sudo apt install vim
```
2.- Instalar NeoVim
```
sudo apt install neovim
```
3.- Instalar ZSH Shell
```
sudo apt install zsh
```
4.- Instalar NodeJS  

5.- Dentro de los archivos de configuración .bashrc y de .zshrc se utiliza un alias de la aplicacación 'Ranger', la cual es necesario instalar con la instrucción:
```
sudo apt install ranger
```
6.- Instalar fzf para poder utilizar el plugin correspondiente
```
sudo apt install fzf
```
7.- Instalar bat para habilitar el resaltado del código y documentos dentro de fzf
```
sudo apt install bat
```
8.- Instalar Ag para habilitar la busqueda de archivos dentro de fzf
```
sudo  apt-get install silversearcher-ag
```
9.- Instalar tmux para utilizar el plugin de Vim Tmux Navigator
```
sudo  apt-get install tmux
```
10.- Instalar Terminator (Opcional)
```
sudo apt install terminator
```

11.- Clonar este repositorio en ~/{HOME} y crear enlaces simbolicos de archivos con el mismo nombre en ~/{HOME}
Instrucción para crear enlaces simbolicos:
```
ln -s [target file] [Symbolic filename]
```
```
ln -s ~/configs/.bashrc ~/.bashrc
ln -s ~/configs/.git-prompt.sh ~/.git-promp.sh
ln -s ~/configs/.nvim ~/.nvim
ln -s ~/configs/.vim ~/.vim
ln -s ~/configs/.vim/.vimrc ~/.vimrc
ln -s ~/configs/.zshrc ~/.zshrc
ln -s ~/configs/.nvim/init.vim ~/.config/nvim/init.vim 
ln -s ~/configs/uysal.zsh-theme ~/.oh-my-zsh/themes/uysal.zsh-theme 
```
## ZSH Shell
El prompt 'zsh' se configura con https://github.com/ohmyzsh/ohmyzsh 

## BASH Shell
Para que el prompt de bash muestre el Git Branch es necesario crear el enlace simbolico correspondiente que apunte al archivo .git-promp.sh 

## VIM 
Dentro de la configuarción de VIM están los Plugins necesarios. Dentro de los archivos de configuración se encuentra el comando para descargar el instalador de Plugins, este se ejecuta automaticamente si no se encuentra dicho paquete en la carpeta correspondiente.
Para instalar los plugins es necesario que ejecute dentro de los comandos de VIM:

`:PluginInstall` + `<Enter>` 

## NEOVIM
Es necesario crear el enlace simbolico de init.vim en la carpeta ~/.config/nvim, si ya existe no se debe crear, que apunte a ~/configs/.nvim/init.vim para que se realicen las configuraciones correspondientes de NVIM.

## Opcional
Terminator es un emulador de terminal de Linux que proporciona varias funciones que su aplicación de terminal predeterminada no admite. Brinda la capacidad de crear múltiples terminales en una ventana y acelerar el progreso de su trabajo. Además de varias ventanas, le permite cambiar otras propiedades, como fuentes de terminal, color de fuente, color de fondo, etc.

Para instalar solo utilice la siguiente instrcucción en la terminal de Ubuntu:

`sudo apt-get install terminator`

## NODEJS
NodeJS se utiliza para la herramienta de autocompletado COC.vim
1. Descargar el binario de nodejs de la plataforma oficial. (https://nodejs.org/en/download/)
2. Descomprimir el archivo
3. Copiar las carpetas y pegarlas en la carpeta de /usr
  `sudo cp -r ./{lib,share,include,bin} /usr`
4. Verifica la versión de node y npm
  `node --version`
  `npm --version`
