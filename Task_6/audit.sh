#!/bin/bash
echo "Доступ к секретам"
jq 'select(.objectRef.resource=="secrets" and .verb=="get")' audit.log

echo "Привилегированные поды"
jq 'select(.objectRef.resource=="pods" and .requestObject.spec.containers[].securityContext.privileged==true)' audit.log

echo "Использование kubectl exec в чужом поде"
jq 'select(.objectRef.resource=="pods" and .requestObject.spec.containers[].securityContext.privileged==true)' audit.log

echo "Удаление или изменение audit-policy.yaml"
grep -i 'audit-policy.yaml' audit.log

echo "Создание RoleBinding с правами cluster-admin"
grep 'create.*RoleBinding.*cluster-admin' audit.log