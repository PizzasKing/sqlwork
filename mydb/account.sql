-- ���� ���� ���̺� ����
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOT NULL,
    balance  NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '����', 10000);

-- �ڷ� ����(��,���)
update account
set balance = 50000, 
    owner = 'Tom'
where ano = '22-22-222';

rollback;

COMMIT;

SELECT * FROM account;
