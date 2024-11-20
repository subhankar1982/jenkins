*** settings ***
Resource  ../../RESOURCES/SSH/ssh-common.robot

*** Test Cases ***
open SSH connection
        Open Connection    ${hostname}
        Login   ${username}    ${password}    delay=1
        Execute Command  ls -lrt
        ${stdout}=  Execute Command  mxone_data -p
        Log    ${stdout}
        sleep  3
        Execute Command    exit
