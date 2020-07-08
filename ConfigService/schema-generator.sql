--------------------------------------------------------
--  File created - Thursday-March-01-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SKILL_ASSOCIATE
--------------------------------------------------------

  CREATE TABLE "ROOT"."SKILL_ASSOCIATE" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 CHAR), 
	"EMAIL" VARCHAR2(255 CHAR), 
	"PASSWORD" VARCHAR2(255 CHAR), 
	"BATCH_ID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SKILL_BATCH
--------------------------------------------------------

  CREATE TABLE "ROOT"."SKILL_BATCH" 
   (	"ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 CHAR), 
	"LOCATION" VARCHAR2(255 CHAR), 
	"TRAINER_NAME" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SKILL_QUESTION
--------------------------------------------------------

  CREATE TABLE "ROOT"."SKILL_QUESTION" 
   (	"ID" NUMBER(10,0), 
	"CONTENT" VARCHAR2(4000 CHAR), 
	"CATEGORY" VARCHAR2(255 CHAR), 
	"DAY" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SKILL_RESPONSE
--------------------------------------------------------

  CREATE TABLE "ROOT"."SKILL_RESPONSE" 
   (	"ID" NUMBER(10,0), 
	"QUESTION_ID" NUMBER(10,0), 
	"ASSOCIATE_ID" NUMBER(10,0), 
	"RESPONSE" VARCHAR2(4000 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOT"."SKILL_USER_PK" ON "ROOT"."SKILL_ASSOCIATE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_USER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOT"."SKILL_USER_UK1" ON "ROOT"."SKILL_ASSOCIATE" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_BATCH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOT"."SKILL_BATCH_PK" ON "ROOT"."SKILL_BATCH" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_QUESTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOT"."SKILL_QUESTION_PK" ON "ROOT"."SKILL_QUESTION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SKILL_RESPONSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOT"."SKILL_RESPONSE_PK" ON "ROOT"."SKILL_RESPONSE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table SKILL_ASSOCIATE
--------------------------------------------------------

  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" ADD CONSTRAINT "SKILL_USER_UK1" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" ADD CONSTRAINT "SKILL_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" MODIFY ("BATCH_ID" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_ASSOCIATE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SKILL_BATCH
--------------------------------------------------------

  ALTER TABLE "ROOT"."SKILL_BATCH" ADD CONSTRAINT "SKILL_BATCH_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ROOT"."SKILL_BATCH" MODIFY ("TRAINER_NAME" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_BATCH" MODIFY ("LOCATION" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_BATCH" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_BATCH" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SKILL_QUESTION
--------------------------------------------------------

  ALTER TABLE "ROOT"."SKILL_QUESTION" ADD CONSTRAINT "SKILL_QUESTION_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ROOT"."SKILL_QUESTION" MODIFY ("DAY" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_QUESTION" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_QUESTION" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_QUESTION" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SKILL_RESPONSE
--------------------------------------------------------

  ALTER TABLE "ROOT"."SKILL_RESPONSE" ADD CONSTRAINT "SKILL_RESPONSE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ROOT"."SKILL_RESPONSE" MODIFY ("ASSOCIATE_ID" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_RESPONSE" MODIFY ("QUESTION_ID" NOT NULL ENABLE);
  ALTER TABLE "ROOT"."SKILL_RESPONSE" MODIFY ("ID" NOT NULL ENABLE);
