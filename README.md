# iconloop_tbears_sample
iconloop의 tbears 를 활용한 local 에서의 deploy, testnet(여의도)으로의 deploy를 다룹니다.

# How to use
 
 ``` docker build --t icon .```
 
 ``` docker run -it icon ```
 
## `도커 실행시, ```/home``` 파일트리` 
 
 home
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
 
