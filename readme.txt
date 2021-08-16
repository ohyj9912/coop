1. geth or ganache 를 이용하여 private network 형성
  1-1. geth 를 이용할경우 0번째 계정 unlock 필요
2. solidity file을 compile 및 migrate(use truffle)
  2-1. truffle console 을 이용하여 사전 test 가능
3. network 에 맞게 port 변경, contract 주소 변경
4. 원하는 csv file 로 경로 설정
5. index.html 실행

1-1. geth 설정하는법
  1-1-1. private network 를 설정할 폴더 생성
  1-1-2. genesis.json 파일 폴더에 생성
  1-1-3. geth initialize로 network 생성
  1-1-4. geth 명령어 : geth --datadir .\private_chaindata\ --rpc --rpcport 8545 --unlock 0 --allow-insecure-unlock
  1-1-5. 참고영상 : 
