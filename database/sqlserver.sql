  
  CREATE TABLE "AU_GROUP_RELATION" 
   (	
      "GUID" VARCHAR(64 ) NOT NULL, 
      "USERID" VARCHAR(512 ) DEFAULT NULL, 
      "GROUPID" VARCHAR(512 ) DEFAULT NULL, 
      "GROUPTYPE" VARCHAR(512 ) DEFAULT NULL,
      PRIMARY KEY("GUID")
   );
  CREATE TABLE "AU_ORGINFO" 
   (	
      "ORGID" VARCHAR(64 ) NOT NULL, 
      "SUPORGID" VARCHAR(512 ) DEFAULT NULL, 
      "ORGNAME" VARCHAR(512 ) DEFAULT NULL,
      PRIMARY KEY ("ORGID")
   );
  CREATE TABLE "AU_ROLEINFO" 
   (	
      "ROLEID" VARCHAR(64 ) NOT NULL, 
      "ROLENAME" VARCHAR(512 ) DEFAULT NULL,
      PRIMARY KEY ("ROLEID")
   );
  CREATE TABLE "AU_USERINFO" 
   (	
      "USERID" VARCHAR(64 ) NOT NULL, 
      "USERNAME" VARCHAR(512 ) DEFAULT NULL, 
      "PASSWORD" VARCHAR(512 ) DEFAULT NULL, 
      "EMAIL" VARCHAR(250 ) DEFAULT NULL, 
      "TEL" VARCHAR(255 ) DEFAULT NULL, 
      "IMAGE" VARCHAR(64 ) DEFAULT NULL,
      PRIMARY KEY ("USERID") 
   );
   CREATE TABLE "FOXBPM_AGENT" 
   (	
      "ID" VARCHAR(255 ) NOT NULL, 
      "AGENT_USER" VARCHAR(255 ) DEFAULT NULL, 
      "STARTTIME" datetime DEFAULT NULL, 
      "ENDTIME" datetime DEFAULT NULL, 
      "STATUS" VARCHAR(255 ) DEFAULT NULL,
      PRIMARY KEY ("ID")
   );
   CREATE TABLE "FOXBPM_AGENT_DETAILS" 
   (	
      "ID" VARCHAR(255 ) NOT NULL, 
      "AGENT_ID" VARCHAR(255 ) DEFAULT NULL, 
      "PROCESSDEFINITION_KEY" VARCHAR(255 ), 
      "AGENT_TOUSER" VARCHAR(255 ) DEFAULT NULL,
      PRIMARY KEY ("ID")
   );
  CREATE TABLE "FOXBPM_DEF_BYTEARRAY" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "REV" decimal(12,0) DEFAULT NULL, 
      "NAME" VARCHAR(512 ) DEFAULT NULL, 
      "BYTES" varbinary(MAX), 
      "DEPLOYMENT_ID" VARCHAR(256 ) DEFAULT NULL,
      PRIMARY KEY("ID")
   );
  CREATE TABLE "FOXBPM_DEF_DEPLOYMENT" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "NAME" VARCHAR(512 ) DEFAULT NULL, 
      "DEPLOY_TIME" datetime DEFAULT NULL,
      PRIMARY KEY("ID")
   );
 
  CREATE TABLE "FOXBPM_DEF_PROCESSDEFINITION" 
   (	
      "DIFINITIONS_KEY" VARCHAR(512 ) DEFAULT NULL, 
      "DIFINITIONS_ID" VARCHAR(512 ) DEFAULT NULL, 
      "PROCESS_KEY" VARCHAR(512 ) DEFAULT NULL, 
      "PROCESS_ID" VARCHAR(250 ) NOT NULL, 
      "CATEGORY" VARCHAR(255 ) DEFAULT NULL, 
      "PROCESS_NAME" VARCHAR(255 ) DEFAULT NULL, 
      "VERSION" decimal(1) DEFAULT NULL, 
      "RESOURCE_NAME" VARCHAR(4000 ) DEFAULT NULL, 
      "DEPLOYMENT_ID" VARCHAR(64 ) DEFAULT NULL, 
      "DIAGRAM_RESOURCE_NAME" VARCHAR(512 ) DEFAULT NULL, 
      "START_FORM_KEY" VARCHAR(1024 ) DEFAULT NULL, 
      "RESOURCE_ID" VARCHAR(64 ) DEFAULT NULL, 
      "SUB_TASK_ID" VARCHAR(128 ) DEFAULT NULL, 
      "REV_" decimal(1) DEFAULT 0,
      PRIMARY KEY("PROCESS_ID")
   );
  CREATE TABLE "FOXBPM_MAIL" 
   (	
      "MAIL_ID" VARCHAR(128 ) NOT NULL, 
      "MAIL_NAME" VARCHAR(4000 ) DEFAULT NULL, 
      "MAIL_TO" VARCHAR(4000 ) DEFAULT NULL, 
      "MAIL_SUBJECT" VARCHAR(4000 ) DEFAULT NULL, 
      "MAIL_BODY" varbinary(MAX), 
      "MAIL_STATUS" VARCHAR(64 ) DEFAULT NULL, 
      "CREATE_TIME" datetime DEFAULT NULL, 
      "SEND_TIME" datetime DEFAULT NULL, 
      "MAIL_CC" VARCHAR(4000 ) DEFAULT NULL, 
      "CREATE_USER" VARCHAR(64 ) DEFAULT NULL, 
      "FAILURE_REASON" VARCHAR(4000 ) DEFAULT NULL,
      PRIMARY KEY ("MAIL_ID")
   );
  CREATE TABLE "FOXBPM_RUN_PROCESSINSTANCE" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "PROCESSDEFINITION_ID" VARCHAR(512 ) DEFAULT NULL, 
      "PROCESSDEFINITION_KEY" VARCHAR(512 ) DEFAULT NULL, 
      "SUBJECT" VARCHAR(4000 ) DEFAULT NULL, 
      "START_TIME" datetime DEFAULT NULL, 
      "END_TIME" datetime DEFAULT NULL, 
      "DEFINITION_ID" VARCHAR(64 ) DEFAULT NULL, 
      "ROOTTOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "BIZ_KEY" VARCHAR(64 ) DEFAULT NULL, 
      "INITIATOR" VARCHAR(64 ) DEFAULT NULL, 
      "START_AUTHOR" VARCHAR(64 ) DEFAULT NULL, 
      "ISSUSPENDED" VARCHAR(20 ) DEFAULT NULL, 
      "PARENT_ID" VARCHAR(64 ) DEFAULT NULL, 
      "PARENT_TOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "UPDATE_TIME" datetime DEFAULT NULL, 
      "PROCESSLOCATION" VARCHAR(2048 ) DEFAULT NULL, 
      "INSTANCE_STATUS" VARCHAR(45 ) DEFAULT NULL, 
      "ARCHIVE_TIME" datetime DEFAULT NULL, 
      "REV_" decimal(1) DEFAULT 0,
      PRIMARY KEY("ID")
   ); 
  CREATE TABLE "FOXBPM_RUN_RUNNINGTRACK" 
   (	
       "ID" VARCHAR(64 ) NOT NULL, 
      "PROCESSINSTANCE_ID" VARCHAR(64 ), 
      "PROCESSDEFINITION_ID" VARCHAR(512 ), 
      "PROCESSDEFINITION_KEY" VARCHAR(512 ), 
      "TOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "PARENT_TOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "EXECUTION_TIME" datetime DEFAULT NULL, 
      "TRACK_RECORD" VARCHAR(64 ) DEFAULT NULL, 
      "OPERATOR" VARCHAR(512 ) DEFAULT NULL, 
      "NODE_ID" VARCHAR(128 ) DEFAULT NULL, 
      "NODE_NAME" VARCHAR(512 ) DEFAULT NULL, 
      "EVENT_NAME" VARCHAR(512 ) DEFAULT NULL, 
      "ARCHIVE_TIME" datetime DEFAULT NULL,
      PRIMARY KEY("ID")
   );
 
  CREATE TABLE "FOXBPM_RUN_TASK" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "PROCESSINSTANCE_ID" VARCHAR(64 ) DEFAULT NULL, 
      "PROCESSDEFINITION_ID" VARCHAR(512 ) DEFAULT NULL, 
      "VERSION" decimal(1) DEFAULT NULL, 
      "TOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "NODE_ID" VARCHAR(64 ) DEFAULT NULL, 
      "DESCRIPTION" VARCHAR(4000 ) DEFAULT NULL, 
      "SUBJECT" VARCHAR(255 ) DEFAULT NULL, 
      "PARENT_ID" VARCHAR(64 ) DEFAULT NULL, 
      "ASSIGNEE" VARCHAR(64 ) DEFAULT NULL, 
      "CLAIM_TIME" datetime DEFAULT NULL, 
      "NAME" VARCHAR(255 ) DEFAULT NULL, 
      "CREATE_TIME" datetime DEFAULT NULL, 
      "START_TIME" datetime DEFAULT NULL, 
      "ISBLOCKING" VARCHAR(20 ) DEFAULT NULL, 
      "END_TIME" datetime DEFAULT NULL, 
      "DUEDATE" datetime DEFAULT NULL, 
      "PRIORITY" decimal(6,0) DEFAULT NULL, 
      "CATEGORY" VARCHAR(64 ) DEFAULT NULL, 
      "OWNER" VARCHAR(64 ) DEFAULT NULL, 
      "DELEGATIONSTATE" VARCHAR(64 ) DEFAULT NULL, 
      "BIZKEY" VARCHAR(64 ) DEFAULT NULL, 
      "COMMAND_TYPE" VARCHAR(256 ) DEFAULT NULL, 
      "COMMAND_MESSAGE" VARCHAR(256 ) DEFAULT NULL, 
      "TASK_COMMENT" VARCHAR(4000 ) DEFAULT NULL, 
      "NODE_NAME" VARCHAR(512 ) DEFAULT NULL, 
      "PROCESSDEFINITION_KEY" VARCHAR(512 ) DEFAULT NULL, 
      "FORMURI" VARCHAR(256 ) DEFAULT NULL, 
      "TASKGROUP" VARCHAR(64 ) DEFAULT NULL, 
      "TASKTYPE" VARCHAR(64 ) DEFAULT NULL, 
      "PROCESSDEFINITION_NAME" VARCHAR(512 ) DEFAULT NULL, 
      "ISCANCELLED" VARCHAR(64 ) DEFAULT NULL, 
      "ISSUSPENDED" VARCHAR(64 ) DEFAULT NULL, 
      "ISOPEN" VARCHAR(64 ) DEFAULT NULL, 
      "ISDRAFT" VARCHAR(64 ) DEFAULT NULL, 
      "EXPECTED_EXECUTIONTIME" decimal(14,2) DEFAULT NULL, 
      "AGENT" VARCHAR(64 ) DEFAULT NULL, 
      "ADMIN" VARCHAR(64 ) DEFAULT NULL, 
      "FORMURIVIEW" VARCHAR(512 ) DEFAULT NULL, 
      "CALLACTIVITY_INSTANCE_ID" VARCHAR(256 ) DEFAULT NULL, 
      "COMMAND_ID" VARCHAR(64 ) DEFAULT NULL, 
      "PENDINGTASKID" VARCHAR(64 ) DEFAULT NULL, 
      "ARCHIVE_TIME" datetime DEFAULT NULL, 
      "COMPLETEDESCRIPTION" VARCHAR(1024 ) DEFAULT NULL, 
      "PROCESSSTART_TIME" datetime DEFAULT NULL, 
      "PROCESS_INITIATOR" VARCHAR(255 ) DEFAULT NULL, 
      "REV_" decimal(1) DEFAULT 0, 
      "NEXT_TASK_ID" VARCHAR(64 ), 
      "ADDSIGN_TYPE" VARCHAR(64 ),
      PRIMARY KEY("ID")
   );
 
  CREATE TABLE "FOXBPM_RUN_TASKIDENTITYLINK" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "TYPE" VARCHAR(64 ) DEFAULT NULL, 
      "USER_ID" VARCHAR(64 ) DEFAULT NULL, 
      "GROUP_ID" VARCHAR(64 ) DEFAULT NULL, 
      "GROUP_TYPE" VARCHAR(64 ) DEFAULT NULL, 
      "TASK_ID" VARCHAR(64 ) DEFAULT NULL, 
      "INCLUDE_EXCLUSION" VARCHAR(64 ) DEFAULT NULL,
      PRIMARY KEY("ID")
   );
 
  CREATE TABLE "FOXBPM_RUN_TOKEN" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "NAME" VARCHAR(64 ) DEFAULT NULL, 
      "PROCESSINSTANCE_ID" VARCHAR(64 ) DEFAULT NULL, 
      "NODE_ID" VARCHAR(128 ) DEFAULT NULL, 
      "PARENT_ID" VARCHAR(64 ) DEFAULT NULL, 
      "START_TIME" datetime DEFAULT NULL, 
      "END_TIME" datetime DEFAULT NULL, 
      "NODEENTER_TIME" datetime DEFAULT NULL, 
      "ARCHIVE_TIME" datetime DEFAULT NULL, 
      "ISSUSPENDED" VARCHAR(64 ) DEFAULT NULL, 
      "ISLOCK" VARCHAR(64 ) DEFAULT NULL, 
      "ISACTIVE" VARCHAR(64 ) DEFAULT NULL, 
      "ISSUBPROCESSROOTTOKEN" VARCHAR(64 ) DEFAULT NULL, 
      "REV_" decimal(1) DEFAULT 0, 
      "LOOP_COUNT" decimal(1),
      PRIMARY KEY("ID")
   );

  CREATE TABLE "FOXBPM_RUN_VARIABLE" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "PROCESSINSTANCE_ID" VARCHAR(64 ) DEFAULT NULL, 
      "PROCESSDEFINITION_ID" VARCHAR(255 ) DEFAULT NULL, 
      "PROCESSDEFINITION_KEY" VARCHAR(255 ) DEFAULT NULL, 
      "VARIABLE_KEY" VARCHAR(64 ) DEFAULT NULL, 
      "VARIABLE_VALUE" varbinary(MAX), 
      "CLASSNAME" VARCHAR(64 ) DEFAULT NULL, 
      "TASK_ID" VARCHAR(64 ) DEFAULT NULL, 
      "TOKEN_ID" VARCHAR(64 ) DEFAULT NULL, 
      "NODE_ID" VARCHAR(512 ) DEFAULT NULL, 
      "VARIABLE_TYPE" VARCHAR(45 ) DEFAULT NULL, 
      "BIZ_DATA" VARCHAR(2048 ) DEFAULT NULL, 
      "REV_" decimal(1) DEFAULT 0,
      PRIMARY KEY("ID")
   );
  
    CREATE TABLE "FOXBPM_RUN_PROCESS_INFO"
   (
      "PROCESSINSTANCEID" VARCHAR(64) NOT NULL, 
      "UPDATE_TIME" datetime DEFAULT NULL, 
      "PROCESS_STATUS" VARCHAR(64 ), 
      "PROCESS_STEP" VARCHAR(256 ),
      "INITATOR" VARCHAR(64), 
      "BIZKEY" VARCHAR(64), 
      PRIMARY KEY ("PROCESSINSTANCEID")
   );
   
  CREATE TABLE "QRTZ_BLOB_TRIGGERS" 
   (	
       "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "image_DATA" varbinary(MAX)
   );
  CREATE UNIQUE INDEX "SYS_C009109" ON "QRTZ_BLOB_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");
  ALTER TABLE "QRTZ_BLOB_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP"); 
  
    
  CREATE TABLE "QRTZ_CALENDARS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "CALENDAR_NAME" VARCHAR(200 ) NOT NULL, 
      "CALENDAR" varbinary(MAX) NOT NULL
   );
  CREATE UNIQUE INDEX "SYS_C009114" ON "QRTZ_CALENDARS" ("SCHED_NAME", "CALENDAR_NAME");
  ALTER TABLE "QRTZ_CALENDARS" ADD PRIMARY KEY ("SCHED_NAME", "CALENDAR_NAME"); 
  
  CREATE TABLE "QRTZ_CRON_TRIGGERS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "CRON_EXPRESSION" VARCHAR(120 ) NOT NULL, 
      "TIME_ZONE_ID" VARCHAR(80 )
   );
  CREATE UNIQUE INDEX "SYS_C009099" ON "QRTZ_CRON_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");  
  ALTER TABLE "QRTZ_CRON_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP"); 
 
  CREATE TABLE "QRTZ_FIRED_TRIGGERS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "ENTRY_ID" VARCHAR(95 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "INSTANCE_NAME" VARCHAR(200 ) NOT NULL, 
      "FIRED_TIME" decimal(13,0) NOT NULL, 
      "PRIORITY" decimal(13,0) NOT NULL, 
      "STATE" VARCHAR(16 ) NOT NULL, 
      "JOB_NAME" VARCHAR(200 ), 
      "JOB_GROUP" VARCHAR(200 ), 
      "IS_NONCONCURRENT" VARCHAR(1 ), 
      "REQUESTS_RECOVERY" VARCHAR(1 )
   );
  CREATE INDEX "IDX_QRTZ_FT_JG" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "JOB_GROUP");
  CREATE INDEX "IDX_QRTZ_FT_T_G" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP"); 
  CREATE INDEX "IDX_QRTZ_FT_TG" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "TRIGGER_GROUP"); 
  CREATE UNIQUE INDEX "SYS_C009126" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "ENTRY_ID"); 
  CREATE INDEX "IDX_QRTZ_FT_TRIG_INST_NAME" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "INSTANCE_NAME"); 
  CREATE INDEX "IDX_QRTZ_FT_INST_JOB_REQ_RCVRY" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "INSTANCE_NAME", "REQUESTS_RECOVERY"); 
  CREATE INDEX "IDX_QRTZ_FT_J_G" ON "QRTZ_FIRED_TRIGGERS" ("SCHED_NAME", "JOB_NAME", "JOB_GROUP");  
  ALTER TABLE "QRTZ_FIRED_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "ENTRY_ID"); 
  
  CREATE TABLE "QRTZ_JOB_DETAILS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "JOB_NAME" VARCHAR(200 ) NOT NULL, 
      "JOB_GROUP" VARCHAR(200 ) NOT NULL, 
      "DESCRIPTION" VARCHAR(250 ), 
      "JOB_CLASS_NAME" VARCHAR(250 ) NOT NULL, 
      "IS_DURABLE" VARCHAR(1 ) NOT NULL, 
      "IS_NONCONCURRENT" VARCHAR(1 ) NOT NULL, 
      "IS_UPDATE_DATA" VARCHAR(1 ) NOT NULL, 
      "REQUESTS_RECOVERY" VARCHAR(1 ) NOT NULL, 
      "JOB_DATA" varbinary(MAX)
   );
  CREATE INDEX "IDX_QRTZ_J_REQ_RECOVERY" ON "QRTZ_JOB_DETAILS" ("SCHED_NAME", "REQUESTS_RECOVERY");  
  CREATE INDEX "IDX_QRTZ_J_GRP" ON "QRTZ_JOB_DETAILS" ("SCHED_NAME", "JOB_GROUP");  
  CREATE UNIQUE INDEX "SYS_C009076" ON "QRTZ_JOB_DETAILS" ("SCHED_NAME", "JOB_NAME", "JOB_GROUP");  
  ALTER TABLE "QRTZ_JOB_DETAILS" ADD PRIMARY KEY ("SCHED_NAME", "JOB_NAME", "JOB_GROUP"); 

  CREATE TABLE "QRTZ_LOCKS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "LOCK_NAME" VARCHAR(40 ) NOT NULL
   );
  CREATE UNIQUE INDEX "SYS_C009134" ON "QRTZ_LOCKS" ("SCHED_NAME", "LOCK_NAME");  
  ALTER TABLE "QRTZ_LOCKS" ADD PRIMARY KEY ("SCHED_NAME", "LOCK_NAME"); 

  CREATE TABLE "QRTZ_PAUSED_TRIGGER_GRPS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL
   );
  CREATE UNIQUE INDEX "SYS_C009117" ON "QRTZ_PAUSED_TRIGGER_GRPS" ("SCHED_NAME", "TRIGGER_GROUP");  
  ALTER TABLE "QRTZ_PAUSED_TRIGGER_GRPS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_GROUP");
   
  CREATE TABLE "QRTZ_SCHEDULER_STATE" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "INSTANCE_NAME" VARCHAR(200 ) NOT NULL, 
      "LAST_CHECKIN_TIME" decimal(13,0) NOT NULL, 
      "CHECKIN_INTERVAL" decimal(13,0) NOT NULL
   );
  CREATE UNIQUE INDEX "SYS_C009131" ON "QRTZ_SCHEDULER_STATE" ("SCHED_NAME", "INSTANCE_NAME");
  ALTER TABLE "QRTZ_SCHEDULER_STATE" ADD PRIMARY KEY ("SCHED_NAME", "INSTANCE_NAME"); 
  
  CREATE TABLE "QRTZ_SIMPLE_TRIGGERS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "REPEAT_COUNT" decimal(7,0) NOT NULL, 
      "REPEAT_INTERVAL" decimal(12,0) NOT NULL, 
      "TIMES_TRIGGERED" decimal(10,0) NOT NULL
   );
  CREATE UNIQUE INDEX "SYS_C009093" ON "QRTZ_SIMPLE_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");
  ALTER TABLE "QRTZ_SIMPLE_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP"); 
  
  CREATE TABLE "QRTZ_SIMPROP_TRIGGERS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "STR_PROP_1" VARCHAR(512 ), 
      "STR_PROP_2" VARCHAR(512 ), 
      "STR_PROP_3" VARCHAR(512 ), 
      "INT_PROP_1" decimal(10,0), 
      "INT_PROP_2" decimal(10,0), 
      "LONG_PROP_1" decimal(13,0), 
      "LONG_PROP_2" decimal(13,0), 
      "DEC_PROP_1" decimal(13,4), 
      "DEC_PROP_2" decimal(13,4), 
      "BOOL_PROP_1" VARCHAR(1 ), 
      "BOOL_PROP_2" VARCHAR(1 )
   );
  CREATE UNIQUE INDEX "SYS_C009104" ON "QRTZ_SIMPROP_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");  
  ALTER TABLE "QRTZ_SIMPROP_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");  
  
  CREATE TABLE "QRTZ_TRIGGERS" 
   (	
      "SCHED_NAME" VARCHAR(120 ) NOT NULL, 
      "TRIGGER_NAME" VARCHAR(200 ) NOT NULL, 
      "TRIGGER_GROUP" VARCHAR(200 ) NOT NULL, 
      "JOB_NAME" VARCHAR(200 ) NOT NULL, 
      "JOB_GROUP" VARCHAR(200 ) NOT NULL, 
      "DESCRIPTION" VARCHAR(250 ), 
      "NEXT_FIRE_TIME" decimal(13,0), 
      "PREV_FIRE_TIME" decimal(13,0), 
      "PRIORITY" decimal(13,0), 
      "TRIGGER_STATE" VARCHAR(16 ) NOT NULL, 
      "TRIGGER_TYPE" VARCHAR(8 ) NOT NULL, 
      "START_TIME" decimal(13,0) NOT NULL, 
      "END_TIME" decimal(13,0), 
      "CALENDAR_NAME" VARCHAR(200 ), 
      "MISFIRE_INSTR" decimal(2,0), 
      "JOB_DATA" varbinary(MAX)
   );
  CREATE INDEX "IDX_QRTZ_T_J" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "JOB_NAME", "JOB_GROUP");
  CREATE INDEX "IDX_QRTZ_T_JG" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "JOB_GROUP");  
  CREATE INDEX "IDX_QRTZ_T_C" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "CALENDAR_NAME");  
  CREATE INDEX "IDX_QRTZ_T_G" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_GROUP");  
  CREATE INDEX "IDX_QRTZ_T_STATE" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_STATE");  
  CREATE INDEX "IDX_QRTZ_T_N_STATE" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP", "TRIGGER_STATE");  
  CREATE INDEX "IDX_QRTZ_T_N_G_STATE" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_GROUP", "TRIGGER_STATE");  
  CREATE INDEX "IDX_QRTZ_T_NEXT_FIRE_TIME" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "NEXT_FIRE_TIME");  
  CREATE INDEX "IDX_QRTZ_T_NFT_ST" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_STATE", "NEXT_FIRE_TIME");  
  CREATE INDEX "IDX_QRTZ_T_NFT_MISFIRE" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "MISFIRE_INSTR", "NEXT_FIRE_TIME"); 
  CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "MISFIRE_INSTR", "NEXT_FIRE_TIME", "TRIGGER_STATE"); 
  CREATE INDEX "IDX_QRTZ_T_NFT_ST_MISFIRE_GRP" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "MISFIRE_INSTR", "NEXT_FIRE_TIME", "TRIGGER_GROUP", "TRIGGER_STATE");  
  CREATE UNIQUE INDEX "SYS_C009085" ON "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP");
  ALTER TABLE "QRTZ_TRIGGERS" ADD PRIMARY KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP"); 
  ALTER TABLE "QRTZ_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "JOB_NAME", "JOB_GROUP")
	  REFERENCES "QRTZ_JOB_DETAILS" ("SCHED_NAME", "JOB_NAME", "JOB_GROUP") ;
  ALTER TABLE "QRTZ_SIMPROP_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") ;
  ALTER TABLE "QRTZ_SIMPLE_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") ;
   ALTER TABLE "QRTZ_CRON_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") ;
  ALTER TABLE "QRTZ_BLOB_TRIGGERS" ADD FOREIGN KEY ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP")
	  REFERENCES "QRTZ_TRIGGERS" ("SCHED_NAME", "TRIGGER_NAME", "TRIGGER_GROUP") ;
  CREATE TABLE "TB_EXPENSE" 
   (	
      "ID" VARCHAR(64 ) NOT NULL, 
      "OWNER" VARCHAR(64 ), 
      "DEPT" VARCHAR(64 ), 
      "ACCOUNT" decimal, 
      "INVOICETYPE" VARCHAR(64 ), 
      "REASON" VARCHAR(252 ), 
      "CREATE_TIME" datetime DEFAULT NULL, 
      "PROCESSINSTANCEID" VARCHAR(64 ), 
      PRIMARY KEY ("ID")
   );  
Insert into AU_ORGINFO (ORGID,SUPORGID,ORGNAME) values ('2000','2000','**公司');
Insert into AU_ORGINFO (ORGID,SUPORGID,ORGNAME) values ('20001','2000','ERP技术中心');
Insert into AU_ORGINFO (ORGID,SUPORGID,ORGNAME) values ('200011','20001','研发部');
Insert into AU_ORGINFO (ORGID,SUPORGID,ORGNAME) values ('200012','20001','市场部'); 
Insert into AU_ROLEINFO (ROLEID,ROLENAME) values ('10001','总经理');
Insert into AU_ROLEINFO (ROLEID,ROLENAME) values ('10002','秘书'); 
Insert into AU_GROUP_RELATION (GUID,USERID,GROUPID,GROUPTYPE) values ('100000000000004','admin','200012','dept');
Insert into AU_GROUP_RELATION (GUID,USERID,GROUPID,GROUPTYPE) values ('100000000000003','admin','200011','dept');
Insert into AU_USERINFO (USERID,USERNAME,PASSWORD,EMAIL,TEL,IMAGE) values ('admin','超级管理员','1','84989979@qq.com','ddxx','admin.jpg');