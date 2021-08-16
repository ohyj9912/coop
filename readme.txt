1. geth or ganache 를 이용하여 private network 형성
  1-1. geth 를 이용할경우 0번째 계정 unlock 필요
2. solidity file을 compile 및 migrate(use truffle)
  2-1. truffle console 을 이용하여 사전 test 가능
  2-2. migrate 후 contract 주소가 안나오면 truffle migrate --network development 뒤에 --reset 을 붙일것
3. network 에 맞게 port 변경, contract 주소 변경
  3-1. geth 의 경우 설정하지 않았을때 포트번호 8545
  3-2. ganache 의 경우 매 실행마다 새로 contract를 deploy 해야 함
4. 원하는 csv file 로 경로 설정
5. index.html 실행

1-1. geth 설정하는법(ganache 는 그냥 설치만 하면 됨)
  1-1-1. private network 를 설정할 폴더 생성
  1-1-2. genesis.json 파일 폴더에 생성
  1-1-3. geth initialize로 network 생성
  1-1-4. geth 명령어 : geth --datadir .\private_chaindata\ --rpc --rpcport 8545 --unlock 0 --allow-insecure-unlock
  1-1-5. 참고영상 : https://www.youtube.com/watch?v=cIAEbXwAqTs

2-1. truffle console 이용법
  2-1-1. 터미널창을 켜고 truffle console --network development 입력
  (development 부분은 config 에서 사용하는 네트워크 종류에 따라 변경)
  2-1-2. 연결되면 콘솔창에서 web3.eth.coinbase 입력 후 확인
    var ctrl = Controldata.at("스마트 컨트랙트 주소 입력")
    (controldata 부분에는 사용하고자 하는 스마트컨트랙트 이름이 들어감)
    (이후 함수 호출하면 됨-아래 예시)
    ctrl.setData(_input, _input, _input)
    ctrl.getTemp(_id)
    ctrl.getHum(_id)
