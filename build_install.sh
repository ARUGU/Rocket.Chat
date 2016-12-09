meteor build --server https://localhost:3000 --directory ~/server/Rocket.Chat
echo "Installing npm dependencies"
(cd ~/server/Rocket.Chat/bundle/programs/server && npm install)

sudo rm -r /opt/Rocket.Chat
sudo cp -ipr ~/server/Rocket.Chat /opt/

export ROOT_URL=http://localhost:3000/
export MONGO_URL=mongodb://localhost:27017/rocketchat
export PORT=3000

(cd /opt/Rocket.Chat/bundle/ && node main.js)


