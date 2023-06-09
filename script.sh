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
		#usa o cursor do mouse pra selecionar a janela e mudar a opacidade, indo de 0 a 100, para mais ou menos transparencia respectivamente
    		#uses the mouse cursor to select the window and change the opacity, going from 0 to 100, for more or less transparency respectively
    
		sh -c 'xprop -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY $(printf 0x%x $((0xffffffff * '$1' / 100)))'
	fi
)
