USE AAD
GO

INSERT INTO t_control (control_type, description, next_value, audit_datetime, audit_action, audit_user_name, audit_user_comment)
VALUES                ('DTS_counter', 'test',     1,          GETDATE(),      'Added',      'JOCO',          'test')

select * from t_control where control_type = 'DTS_counter'
