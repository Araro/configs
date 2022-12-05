# configs

## Instrucciones iniciales

Repositorio con archivos de configuración de Ubuntu 

Clonar este repositorio en ~/{HOME} y crear enlaces simbolicos de archivos con el mismo nombre en ~/{HOME}
Instrucción para crear enlaces simbolicos:
```
ln -s [target file] [Symbolic filename]
```
Dentro de los archivos de configuración .bashrc y de .zshrc se utiliza un alias de la aplicacación 'Ranger', la cual es necesario instalar con la instrucción:
```
sudo apt-get install ranger
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
