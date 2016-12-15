FOLDER_NAME=montgras/src/montgras

PROJECT_PATH=$BRAINS_PATH/$FOLDER_NAME
alias cmontgras='cd $PROJECT_PATH'
alias amontgras='atom $PROJECT_PATH'
alias fmontgras='cmontgras && amontgras'
alias vmontgras='source $VIRTUALENV_PATH/montgras/bin/activate'
alias lmontgras='python manage.py runserver'
