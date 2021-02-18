## Switch account Git (Personal/Enterprise)

printf '
  ======================================================
        Enter the number for the desired account
  ======================================================\n\n
'
printf 'Choose your github account: \n\n [1] - DKSecurity99 \n [2] - edmilson-dk \n\n >> '
read ACCOUNT

case $ACCOUNT in
1)
  USER_NAME="DKSecurity99"
  USER_EMAIL="dksorteio@gmail.com"
  ;;
2)
  USER_NAME="edmilson-dk"
  USER_EMAIL="droidvidaboa@gmail.com"
  ;;
esac

git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL

echo "ALTERADO PARA: "$USER_NAME "("$USER_EMAIL")"
