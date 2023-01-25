if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/pawanjaatpk/LazyPrincessV2bot /LazyPrincessV2bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /LazyPrincessV2bot
fi
cd /LazyPrincessV2bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
