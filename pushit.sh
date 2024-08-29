#!/bin/bash
# Notas: 
# 1. Sara, estas notas são para ti, caso um dia queiras modificar alguma coisa, ou corrigir 
# 2. Ao fazeres login no github, podes adicionar uma chave de SSH associada à tua conta. 
# 3. Depois de adicionares já podes usar este script, sendo que, caso prefiras usar o Browser, não existe necessidade disso. 
# 4. Existe um cliente para o github chamado "gh" e que é útil caso uses o terminal. 
# 5. Espero-te bem.. e como sempre, vou ser um lamechas .. Adoro-te! 

pkill -x ssh-agent 
sleep 1
echo "ssh-agents killed"
eval $(ssh-agent)
sleep 1 
echo "ssh-agent inicialized"
ssh-add ~/.ssh/github
sleep 1
echo "ssh-key-id added"
git add . 
read -p "Add Commit Message: " message 
git commit -m " $message "  
git push git@github.com:MacacoBudista/caes.git 
echo "Repositório Actualizado"
sleep 3
