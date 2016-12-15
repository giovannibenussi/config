FOLDER_NAME=montgras/src/montgras

MONTGRAS_PATH=$BRAINS_PATH/$FOLDER_NAME
MONTGRAS_ENV_PATH=$VIRTUALENV_PATH/montgras/bin/activate
alias cmontgras='cd $MONTGRAS_PATH'
alias amontgras='atom $MONTGRAS_PATH'
alias vmontgras='source $MONTGRAS_ENV_PATH'
alias lmontgras='cmontgras && vmontgras && python manage.py runserver'
alias fmontgras='cmontgras && amontgras && vmontgras && lmontgras'
alias setupmontgras='if [ -f $MONTGRAS_ENV_PATH ]; then echo "virtualenv already configured";else echo "Configuring virtualenv..."; create_virtualenv montgras; fi && cmontgras && vmontgras && pip install -r requirements.txt'
