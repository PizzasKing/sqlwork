-- ���ο� �����(user1) ����
CREATE USER c##mydb IDENTIFIED BY pwmydb;

-- ���� ���� ���� �ο�
GRANT CREATE SESSION TO c##mydb;

--���̺�, �ڿ�(resource) ����
GRANT CREATE TABLE, RESOURCE TO c##mydb;

GRANT CONNECT, DBA TO c##mydb;


