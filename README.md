# configs

## Instrucciones iniciales

Repositorio con archivos de configuración de Ubuntu 

Clonar este repositorio en ~/{HOME} y crear enlaces simbolicos de archivos con el mismo nombre en ~/{HOME}

Dentro de los archivos de configuración .bashrc y de .zshrc se utiliza un alias de la aplicacación 'Ranger', la cual es necesario instalar con la instrucción:
```
sudo apt-get install ranger
```
## ZSH Shell
El prompt 'zsh' se configura con https://github.com/ohmyzsh/ohmyzsh 

## BASH Shell
Para que el prompt de bash muestre el Git Branch es necesario crear el enlace simbolico correspondiente que apunte al archivo .git-promp.sh 

## VIM 
Dentro de la configuarción de VIM estan los Plugins necesarios, sin embargo, el Plugin 'Kite' se debe intalar por separado.
https://github.com/kiteco/vim-plugin/blob/master/DEVELOPMENT.md
