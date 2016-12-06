FOLDER_NAME=tesis

PROJECT_PATH=$DEVELOPMENT_PATH/$FOLDER_NAME
alias ctesis='cd $PROJECT_PATH'
alias atesis='atom $PROJECT_PATH'
alias ftesis='chugo && ahugo'
alias ltesis='xelatex tesis-usach && bibtex tesis-usach && xelatex tesis-usach && xelatex tesis-usach && open tesis-usach.pdf'
