FOLDER_NAME=socovesa

SOCOVESA_PATH=$DEVELOPMENT_PATH/$FOLDER_NAME/src/cms
alias csocovesa='cd $SOCOVESA_PATH'
alias asocovesa='atom $SOCOVESA_PATH'
alias vsocovesa='source $VIRTUALENV_PATH/socovesa/bin/activate'
alias lsocovesa='csocovesa && vsocovesa && python manage.py runserver'
alias fsocovesa='asocovesa && lsocovesa'
