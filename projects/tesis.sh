FOLDER_NAME=tesis

TESIS_PATH=$DEVELOPMENT_PATH/$FOLDER_NAME
alias ctesis='cd $TESIS_PATH'
alias atesis='atom $TESIS_PATH'
alias ftesis='chugo && ahugo'
alias ltesis='xelatex tesis-usach && bibtex tesis-usach && xelatex tesis-usach && xelatex tesis-usach && open tesis-usach.pdf'
