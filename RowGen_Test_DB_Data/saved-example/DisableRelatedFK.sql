ALTER TABLE SCOTT.DM_DCTA_EVALUATIONS DISABLE CONSTRAINT DM_EE_DCTAE_FK;
ALTER TABLE SCOTT.DM_EMPLOYEES DISABLE CONSTRAINT DM_EMP_EMP_FK;
ALTER TABLE SCOTT.DM_EMPLOYEES DISABLE CONSTRAINT DM_EMP_MGR_FK;
ALTER TABLE SCOTT.DM_EMPLOYEE_EVALUATIONS DISABLE CONSTRAINT DM_EE_EMP_FK;
ALTER TABLE SCOTT.DM_EMPLOYEE_EVALUATIONS DISABLE CONSTRAINT DM_EE_JT_FK;
ALTER TABLE SCOTT.DM_EMPLOYEE_EVALUATIONS DISABLE CONSTRAINT DM_EE_OU_FK;
ALTER TABLE SCOTT.DM_JOB_TYPES DISABLE CONSTRAINT DM_JT_COMPANIES_FK;
ALTER TABLE SCOTT.DM_JOB_TYPES DISABLE CONSTRAINT DM_JT_FK_PARENT;
ALTER TABLE SCOTT.DM_JOB_TYPES DISABLE CONSTRAINT DM_JT_FK_PARENT_TOP;
ALTER TABLE SCOTT.DM_ORGANIZATIONAL_UNITS DISABLE CONSTRAINT DM_OU_COMPANIES_FK;
exit