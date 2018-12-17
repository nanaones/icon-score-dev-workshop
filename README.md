
# ICON tbears sample

icon의 tbears 를 활용하여 Local network, Testnet(여의도)으로의 deploy를 실습합니다.

각 실습은 01_Local, 02_Testnet 의 두 폴더로 나뉘어 있습니다.


# How to use
 
### 1. docker build 를 통해, icon tag를 단 이미지를 빌드합니다. 

 ` git clone https://github.com/nanaones/icon_tbears_sample `

 ``` cd icon_tbears_sample ```

 ``` docker build --tag icon .```
  


### 2. docker run 을 통해, 빌드된 이미지를 실행시킵니다. 

 ``` docker run -it -p 9000:9000 icon ```
 

docker이미지를 실행 할 경우, 기본폴더인 ``` /home ```  폴더 안에 아래와 같은 파일트리가 존재합니다. 

### 3. dockercloud에도 원격이미지가 업로드 되어있습니다.

 ``` docker run -it -p 9000:9000 nanaones/icon:0.2 ``` 
 
 

## `도커 실행시, / home  파일트리` 

``` 

/ home
|-- 01_Local
|   |-- 01_init
|   |   |-- 00_1_set_tbears_cli_config
|   |   |-- 00_2_deploy_project
|   |   |-- 00_3_use_call
|   |   |-- 01_deploy.sh
|   |   |-- 02_call.sh
|   |   |-- 03_tbears_cli_config.json
|   |   `-- project
|   |       |-- __init__.py
|   |       |-- package.json
|   |       `-- project.py
|   `-- 02_Show_me_the_money
|       |-- 00_1_set_tbears_cli_config
|       |-- 00_2_Deploy_Show_me_the_money
|       |-- 01_sendtx.sh
|       |-- 02_tbears_cli_config.json
|       `-- Show_me_the_money
|           |-- Show_me_the_money.py
|           |-- __init__.py
|           `-- package.json
`-- 02_Testnet
    |-- 01_init
    |   |-- 00_1_set_tbears_cli_config
    |   |-- 00_2_deploy_project
    |   |-- 00_3_use_call
    |   |-- 01_deploy.sh
    |   |-- 02_call.sh
    |   |-- 03_tbears_cli_config.json
    |   `-- project
    |       |-- __init__.py
    |       |-- package.json
    |       `-- project.py
    `-- 02_Show_me_the_money
        |-- 00_1_set_tbears_cli_config
        |-- 00_2_Deploy_Show_me_the_money
        |-- 01_sendtx.sh
        |-- 02_tbears_cli_config.json
        `-- Show_me_the_money
            |-- Show_me_the_money.py
            |-- __init__.py
            `-- package.json
 ```



# 내용살펴보기 

## 01_Local 디렉토리

* T-Bears 만을 사용하여 Local Network에 SCORE 를 deploy(배포)합니다.
* Local Network에 배포한 SCORE를 향하여 call, sendtx와 같은 트랜잭션을 전송하고, 결과를 확인합니다. 

## 02_Testnet 디렉토리

* T-Bears 를 활용하여, Testnet(여의도)에 SCORE 를 deploy(배포)합니다. 
* 배포한 SCORE를 향하여 call, sendtx 와 같은 트랜잭션을 전송하고, 결과를 확인합니다. 

## 01_init 디렉토리

``` tbears init <project> <SCORE class> ``` 명령어를 통해 생성되는 기본 SCORE인 ``` project ``` 폴더와 생성된 SCORE를 deploy(배포)하기 위한 shell script인 ``` 01_deploy.sh``` 와, 배포된 SCORE를 call 하기 위한  ``` 02_call.sh``` shell script가 포함되어있습니다.


##### ``` 01_deploy.sh```
- 01_init 디렉토리 아래에 있는 project폴더를 deploy 합니다.

##### ``` 02_call.sh```
- ``` 01_deploy.sh```를 통해서 deploy(배포)한 SCORE의 특정 메소드를 call 해 주고, 결과를 출력해 줍니다.

##### ``` 02_tbears_cli_config.json ```
- T-Bears 를 활용하여 트랜잭션을 만들어 낼 때 사용되는 커스터마이징 옵션입니다.
- URI 는 ``` 01_Local ``` 에서는 Local 으로, ``` 02_Testnet ``` 에서는 Testnet(여의도)로 설정되어있습니다. 
- stepLimit( 수수료 )을 설정합니다.

## 02_Show_me_the_money 디렉토리
* T-Bears 를 활용하여, Test Network(여의도)에 SCORE 를 deploy(배포)합니다.
* ``` 01_Local ``` 에서는 Local 으로, ``` 02_Testnet ``` 에서는 Testnet(여의도)로 설정되어있습니다. 
* 입력한 주소의 SCORE를 향하여 call, sendtx와 같은 트랜잭션을 전송하고, 결과를 확인합니다.


##### ``` 01_sendtx.sh ```

- deploy(배포)된 SCORE 에 ICX를 송금하는 트랜잭션을 발생시킵니다.
- 결과를 출력해줍니다. 
- 만들어진 트랜잭션 요청에 사용된 json 파일을 ``` sendtx.json ``` 으로 현 위치에 저장합니다. 

##### ``` 02_tbears_cli_config.json ```
- T-Bears 를 활용하여 트랜잭션을 만들어 낼 때 사용되는 커스터마이징 옵션입니다.
- URI 는 ``` 01_Local ``` 에서는 Local 으로, ``` 02_Testnet ``` 에서는 Testnet(여의도)로 설정되어있습니다. 
- stepLimit( 수수료 )을 설정합니다.

##### Show_me_the_money 디렉토리
Show_me_the_money SCORE는 ``` tbears init <project> <SCORE class> ``` 으로 만들어진 기본 SCORE를 변형하여 만들어진 SCORE입니다. ```Show_me_the_money``` SCORE는 Show_me_the_money SCORE의 주소로 ICX를 송금받게 되면, SCORE의 배포자(owner)에게 Show_me_the_money SCORE가 송금 받은 ICX를 바로 송금합니다.




