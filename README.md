# bashScriptChangeOpacity
A simple bash script that you can add the code in your .bashrc file for example and run to change the opacity of any windows open in your computer if you want

## You can copy this code if you want:

```shell

#!/bin/bash

#Aquele Neofetch basico nunca pode faltar né
#Neofetch isn't necessary, but is very cool

neofetch

#Comando para colocar transparencia em qualquer janela
#The code for change the opacity

changeOpacity() (

	#verifica se o argumento de entrada é vazio, poderia ser feito com '$# -eq 0' tambem para ver se algum parametro foi passado
	#verify if the input parameter is empty, using '$# -eq 0' also works

	if [ -z "$1" ]; then
		echo "No argument supplied"
	else
		#usa o cursos do mouse pra selecionar a janela e mudar a opacidade, indo de 0 a 100, para mais ou menos transparencia respectivamente
		#use the mouse cursor to select the window and change the opacity, going from 0 to 100, for more or less transparency respectively

		sh -c 'xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * '$1' / 100)))'
	fi
)

```

## Add the code at the of your .bashrc file for example, then run the source command or open a new terminal

![Bashrc file with the code](https://github.com/luca-moraes/bashScriptChangeOpacity/blob/main/imgs/1.png)

## If you don't give an argument will return this error

![Bashrc file with the code](https://github.com/luca-moraes/bashScriptChangeOpacity/blob/main/imgs/2.png)

