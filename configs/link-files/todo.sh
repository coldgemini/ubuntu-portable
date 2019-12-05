#!/bin/bash

set -e

Todo_Dir=~/.todosync

if [ -z $EDITOR ];then
    EDITOR=vim
fi

help() {
    echo TodoList Vim tool
    echo Usage:
    echo -e "\t" todo help
    echo -e "\t" todo add:"\t"add a todolist file
    echo -e "\t" todo del:"\t"delete a todolist file
    echo -e "\t" todo list:"\t"list all todo files
    echo -e "\t" todo cls:"\t"list all todo list classes
    echo -e "\t" todo file:"\t"edit the corresponding todo file
}

class() {
    echo TodoList Classes
    echo -e "\t" A	class A
    echo -e "\t" B	class B
    echo -e "\t" C	class C
    echo -e "\t" D	delay
    echo -e "\t" F	focus
    echo -e "\t" P	pending
}

add() {
	if [[ ! -e $Todo_Dir/$1.todo ]];then
		$EDITOR $Todo_Dir/$1.todo
	else
		echo "$1.todo already exist"
	fi
}

del() {
	if [[ -e $Todo_Dir/$1.todo ]];then
		rm $Todo_Dir/$1.todo
	else
		echo "$1.todo does not exist"
	fi
}

doElse() {
	if [[ -e $Todo_Dir/$1.todo ]];then
		$EDITOR $Todo_Dir/$1.todo
	else
		help
	fi
}

if [ $# == 0 ];then
    help
#elif [ $# != 1 ];then
    #help
elif [ $1 == "add" ];then
    add $2
elif [ $1 == "del" ];then
    del $2
elif [ $1 == "help" ];then
    help
elif [ $1 == "ls" ];then
	ls $Todo_Dir
elif [ $1 == "list" ];then
	ls $Todo_Dir
elif [ $1 == "cls" ];then
	class
else
	doElse $1
fi
