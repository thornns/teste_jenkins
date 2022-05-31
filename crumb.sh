curl -u "thorkks:119ad81040d95ccfc540f5f5a3c3d87f10" -X POST http://jenkins.local:8080/job/ansible/build?delay=0sec
curl -X POST 'http://jenkins.local:8080/job/ansible/buildWithParameters?VAR=Ansible' --user thorkks:119ad81040d95ccfc540f5f5a3c3d87f10
