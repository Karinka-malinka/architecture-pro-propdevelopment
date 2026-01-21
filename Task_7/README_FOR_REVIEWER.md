1. Для исправления манифестов так, чтобы они соответствовали политике безопасности в namespace audit-zone, необходимо удалить привилегии, использование hostPath и запуск пода от root пользователя. 

2. Поставлена задача для DevOps по настройте OPA Gatekeeper с набором правил:
Нельзя использовать privileged: true.
Только runAsNonRoot: true.
readOnlyRootFilesystem: true обязательно.
hostPath запрещён.