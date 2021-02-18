## Switch account Git (Personal/Enterprise)

printf '
  ======================================================
        Enter the number for the desired account
  ======================================================\n\n'

printf 'Choose your github account: \n\n 
[1] - DKSecurity99 \n 
[2] - edmilson-dk 
\n\n >> '

read ACCOUNT

case $ACCOUNT in
1)
  USER_NAME="your_username"
  USER_EMAIL="your_email"
  SETED=true
  ;;
2)
  USER_NAME="your_username"
  USER_EMAIL="your_email"
  SETED=true
  ;;
*) 
  SETED=false
  echo '\n!Invalid option\n'
esac

if [ $SETED != false ]
then
  git config --global user.name $USER_NAME
  git config --global user.email $USER_EMAIL
  
  echo "Global account changed to: "$USER_NAME "("$USER_EMAIL")"
else
  echo "!There was no exchange of github accounts."
fi

