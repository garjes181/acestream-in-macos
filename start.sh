set -e

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'
echo "${GREEN}Starting server to open acestream${NC}"
cd vagrant
vagrant up > /dev/null
echo "${GREEN}Server successfully started! We are ready to stream!${NC}"
echo "${YELLOW}Copy the acestream id${NC}"
read aceid
echo "${GREEN}Opening VLC with acestream${NC}"
/Applications/VLC.app/Contents/MacOS/VLC http://localhost:8000/pid/$aceid/stream.mp4
vagrant halt
