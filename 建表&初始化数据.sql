/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 11003000
 Source Host           : .:1433
 Source Catalog        : OpenAuthDB
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11003000
 File Encoding         : 65001

 Date: 01/03/2018 12:56:45
*/


-- ----------------------------
-- Table structure for Application
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Application]') AND type IN ('U'))
	DROP TABLE [dbo].[Application]
GO

CREATE TABLE [dbo].[Application] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [AppId] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [AppKey] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Description] nvarchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Icon] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Disable] bit DEFAULT ((0)) NOT NULL,
  [CreateTime] date NULL,
  [CreateUser] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Application] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类表ID',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用ID',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'AppId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用密钥',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'AppKey'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用描述',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用图标',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可用',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'Disable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'Application',
'COLUMN', N'CreateUser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'应用',
'SCHEMA', N'dbo',
'TABLE', N'Application'
GO


-- ----------------------------
-- Table structure for Category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type IN ('U'))
	DROP TABLE [dbo].[Category]
GO

CREATE TABLE [dbo].[Category] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Disabled] bit DEFAULT ((0)) NOT NULL,
  [SortNo] int DEFAULT ((0)) NOT NULL,
  [Icon] varchar(255) COLLATE Chinese_PRC_CI_AS NULL,
  [Description] nvarchar(500) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Category] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类表ID（可作为分类的标识）',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否可用',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'Disabled'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'SortNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类图标',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类描述',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类类型ID',
'SCHEMA', N'dbo',
'TABLE', N'Category',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类表，表示一个全集，比如：男、女、未知。关联的分类类型表示按什么进行的分类，如：按照性别对人类对象集进行分类',
'SCHEMA', N'dbo',
'TABLE', N'Category'
GO


-- ----------------------------
-- Records of [Category]
-- ----------------------------
INSERT INTO [dbo].[Category]  VALUES (N'ADMINISTRATOR', N'管理员', N'0', N'0', N'', NULL, N'USERTYPE')
GO

INSERT INTO [dbo].[Category]  VALUES (N'USER', N'普通用户', N'0', N'0', N'', NULL, N'USERTYPE')
GO

INSERT INTO [dbo].[Category]  VALUES (N'SYSTEMADMIN', N'神', N'0', N'0', N'', NULL, N'USERTYPE')
GO


-- ----------------------------
-- Table structure for CategoryType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryType]') AND type IN ('U'))
	DROP TABLE [dbo].[CategoryType]
GO

CREATE TABLE [dbo].[CategoryType] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[CategoryType] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类表ID',
'SCHEMA', N'dbo',
'TABLE', N'CategoryType',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'CategoryType',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'CategoryType',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类类型',
'SCHEMA', N'dbo',
'TABLE', N'CategoryType'
GO


-- ----------------------------
-- Records of [CategoryType]
-- ----------------------------
INSERT INTO [dbo].[CategoryType]  VALUES (N'USERTYPE', N'按用户类型分类', N'2017-11-29 21:27:42.207')
GO


-- ----------------------------
-- Table structure for Form
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Form]') AND type IN ('U'))
	DROP TABLE [dbo].[Form]
GO

CREATE TABLE [dbo].[Form] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [Fields] int DEFAULT ((0)) NOT NULL,
  [ContentData] text COLLATE Chinese_PRC_CI_AS NULL,
  [ContentParse] text COLLATE Chinese_PRC_CI_AS NULL,
  [Content] text COLLATE Chinese_PRC_CI_AS NULL,
  [SortCode] int DEFAULT ((0)) NOT NULL,
  [Delete] int DEFAULT ((0)) NOT NULL,
  [FrmDbId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [Enabled] int NOT NULL,
  [Description] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateDate] datetime DEFAULT (getdate()) NOT NULL,
  [CreateUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ModifyDate] datetime NULL,
  [ModifyUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ModifyUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[Form] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单模板Id',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单名称',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字段个数',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Fields'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单中的字段数据',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'ContentData'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单替换的模板 经过处理',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'ContentParse'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单原html模板未经处理的',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序码',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'SortCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Delete'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据库Id',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'FrmDbId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Enabled'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户主键',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'ModifyDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户主键',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'ModifyUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户',
'SCHEMA', N'dbo',
'TABLE', N'Form',
'COLUMN', N'ModifyUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单模板表',
'SCHEMA', N'dbo',
'TABLE', N'Form'
GO


-- ----------------------------
-- Records of [Form]
-- ----------------------------
INSERT INTO [dbo].[Form]  VALUES (N'9402a0ce-f8b7-4660-916c-fa3e2e21d594', N'贷款', N'2', N'[{"style":"text-align: left; width: 150px;","title":"文本框","value":"OpenAuth.Net","name":"data_1","orgheight":"","orgwidth":"150","orgalign":"left","orgfontsize":"","orghide":"0","leipiplugins":"text","orgtype":"text","content":"<input style=\"text-align: left; width: 150px;\" title=\"文本框\" value=\"OpenAuth.Net\" name=\"data_1\" orgheight=\"\" orgwidth=\"150\" orgalign=\"left\" orgfontsize=\"\" orghide=\"0\" leipiplugins=\"text\" orgtype=\"text\"/>"},{"leipiplugins":"select","name":"data_2","title":"文档名称","size":"1","orgwidth":"150","style":"width: 150px;","value":"dd,dddd","selected":"selected","content":"<span leipiplugins=\"select\"><select name=\"data_2\" title=\"文档名称\" leipiplugins=\"select\" size=\"1\" orgwidth=\"150\" style=\"width: 150px;\"><option value=\"dd\">dd</option><option value=\"dddd\" selected=\"selected\">dddd</option></select>&nbsp;&nbsp;</span>"}]', N'<p>{data_1}</p><p><br/></p><p>{data_2}</p>', N'<p><input style="text-align: left; width: 150px;" title="文本框" value="OpenAuth.Net" name="data_1" orgheight="" orgwidth="150" orgalign="left" orgfontsize="" orghide="0" leipiplugins="text" orgtype="text"/></p><p><br/></p><p>{|-<span leipiplugins="select"><select name="data_2" title="文档名称" leipiplugins="select" size="1" orgwidth="150" style="width: 150px;"><option value="dd">dd</option><option value="dddd" selected="selected">dddd</option></select>&nbsp;&nbsp;</span>-|}</p>', N'1', N'1', N'', N'1', N'顶顶顶顶', N'2018-03-01 10:11:42.390', N'', N'', N'2018-03-01 10:11:42.390', N'', N'')
GO


-- ----------------------------
-- Table structure for Module
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Module]') AND type IN ('U'))
	DROP TABLE [dbo].[Module]
GO

CREATE TABLE [dbo].[Module] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [CascadeId] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Url] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [HotKey] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [IsLeaf] bit DEFAULT ((1)) NOT NULL,
  [IsAutoExpand] bit DEFAULT ((0)) NOT NULL,
  [IconName] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Status] int DEFAULT ((1)) NOT NULL,
  [ParentName] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Vector] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [SortNo] int DEFAULT ((0)) NOT NULL,
  [ParentId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Module] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能模块流水号',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点语义ID',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'CascadeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能模块名称',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主页面URL',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'Url'
GO

EXEC sp_addextendedproperty
'MS_Description', N'热键',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'HotKey'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否叶子节点',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'IsLeaf'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否自动展开',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'IsAutoExpand'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点图标文件名称',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'IconName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前状态',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点名称',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'ParentName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'矢量图标',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'Vector'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'SortNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点流水号',
'SCHEMA', N'dbo',
'TABLE', N'Module',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能模块表',
'SCHEMA', N'dbo',
'TABLE', N'Module'
GO


-- ----------------------------
-- Records of [Module]
-- ----------------------------
INSERT INTO [dbo].[Module]  VALUES (N'0031262c-689c-4b96-bae2-2c9d67076ade', N'.0.1.2.', N'流程设计', N'/flowmanage/flowdesign/index', N'', N'0', N'0', N'&#xe628;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'069475e3-c997-487a-9f29-e6a864c5c1d4', N'.0.2.', N'应用功能', N'/', N'c', N'0', N'0', N'&#xe638;', N'0', N'根节点', N'', N'0', NULL)
GO

INSERT INTO [dbo].[Module]  VALUES (N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', N'.0.1.8.', N'部门管理', N'/OrgManager/Index', N'', N'0', N'0', N'&#xe613;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'7580672f-a390-4bb6-982d-9a4570cb5199', N'.0.1.', N'基础配置', N' ', N' ', N'1', N'0', N'&#xe620;', N'1', N'根节点', N' ', N'0', NULL)
GO

INSERT INTO [dbo].[Module]  VALUES (N'89c3bfbe-246f-4112-8eb1-b6789da54202', N'.0.2.2.', N'进出库管理', N'/StockManager/Index', N'', N'0', N'0', N'&#xe657;', N'0', N'应用功能', N'', N'1', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Module]  VALUES (N'92b00259-2d15-43e7-9321-adffb29e8bf2', N'.0.1.5.', N'表单设计', N'/forms/index', N'', N'0', N'0', N'&#xe63c;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'9486ff22-b696-4d7f-8093-8a3e53c45453', N'.0.2.3.', N'流程处理', N'/FlowManage/FlowInstances/Index', N'', N'0', N'0', N'&#xe618;', N'0', N'应用功能', N'', N'2', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Module]  VALUES (N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', N'.0.1.7.', N'分类管理', N'/Categories/Index', N'', N'0', N'0', N'&#xe62a;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'bc80478d-0547-4437-9cff-be4b40144bdf', N'.0.1.6.', N'模块管理', N'/ModuleManager/Index', N' ', N'1', N'0', N'&#xe630;', N'0', N'基础配置', N' ', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'bedb41a2-f310-4775-af99-01be08adda93', N'.0.1.1.', N'角色管理', N'/RoleManager/Index', N'', N'1', N'0', N'&#xe627;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', N'.0.1.3.', N'资源管理', N'/ResourceManager/Index', N'', N'0', N'0', N'&#xe64c;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Module]  VALUES (N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', N'.0.1.4.', N'用户管理', N'/UserManager/Index', N'', N'0', N'0', N'&#xe612;', N'0', N'基础配置', N'', N'0', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO


-- ----------------------------
-- Table structure for ModuleElement
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ModuleElement]') AND type IN ('U'))
	DROP TABLE [dbo].[ModuleElement]
GO

CREATE TABLE [dbo].[ModuleElement] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [DomId] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Attr] varchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Script] varchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Icon] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Class] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Remark] varchar(200) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Sort] int DEFAULT ((0)) NOT NULL,
  [ModuleId] [dbo].[PrimaryKey] NOT NULL,
  [TypeName] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[ModuleElement] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'流水号',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'DOM ID',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'DomId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'元素附加属性',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Attr'
GO

EXEC sp_addextendedproperty
'MS_Description', N'元素调用脚本',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Script'
GO

EXEC sp_addextendedproperty
'MS_Description', N'元素图标',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Icon'
GO

EXEC sp_addextendedproperty
'MS_Description', N'元素样式',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Class'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序字段',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'功能模块Id',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'ModuleId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'TypeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类ID',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模块元素表(需要权限控制的按钮)',
'SCHEMA', N'dbo',
'TABLE', N'ModuleElement'
GO


-- ----------------------------
-- Records of [ModuleElement]
-- ----------------------------
INSERT INTO [dbo].[ModuleElement]  VALUES (N'0d25438e-1436-48e0-aedf-0f1690693282', N'btnAccessModule', N'为角色分配模块', N'', N'assignRoleModule(this)', N'', N'layui-btn-normal', N'为角色分配模块', N'4', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736', N'btnAssignRes', N'为角色分配资源', N'', N'openRoleReourceAccess(this)', N'', N'layui-btn-normal', N'为角色分配资源', N'3', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'17ae4fd4-ab4e-439e-ba1d-2a53b46d112b', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', N'2', N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'18cc3217-28a6-49b2-9a20-080230065984', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'', N'1', N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'1a473afd-cbd4-41e9-9471-81f9435aaabe', N'btnEdit', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑分类', N'0', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'1c870438-4260-43a5-8996-a6e1dc8bbf6a', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加部门', N'0', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑角色', N'1', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'2d595a2a-5de5-479e-a331-b53c799a6b10', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加分类', N'0', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'2feefce1-e3d8-42ac-b811-2352679628da', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'刪除用戶', N'2', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'34730f5a-d307-457b-9041-5f7de30abfa9', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑用户', N'1', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'362d1eda-c85e-4b14-a80a-b923291e08de', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加', N'0', N'f0f06b8f-0a86-487c-8b0e-0a12573ccd46', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'38109ca0-32ec-44bd-a243-017e591b532b', N'btnEditStock', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑进出库', N'0', N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'3dc0ec4d-bf86-4bae-9ec0-1d6c2403fb99', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'', N'1', N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'44075557-496e-4dde-bb75-7b69f51ab4fe', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑模块', N'0', N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'4bfa8ea0-6b0d-426f-8687-b654575ca780', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑资源', N'2', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'4f2737db-633f-4946-8a71-b08b9885f151', N'btnEdit', N'编辑', N'', N'edit()', N'&#xe642;', N'layui-btn-normal', N'', N'2', N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'50c9df24-b233-42cb-9a0d-4ce158c75f86', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加用戶', N'0', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'584c7a3b-d28a-47b4-8648-7797d05d83d1', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', N'3', N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae', N'btnAssign', N'为模块分配按钮', N'', N'assignButton()', N'', N'layui-btn-normal', N'为模块分配按钮', N'0', N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'645b40ac-4223-44a7-aab4-66eb56cf9864', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加角色', N'0', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'6839a297-350b-4215-b680-4e5dfdae5615', N'btnAssignReource', N'为用户分配资源', N'', N'openUserReourceAccess(this)', N'', N'layui-btn-normal', N'为用户分配资源', N'4', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'68484265-7802-4f06-b024-33e8b2f2edcf', N'btnAdd', N'新的申请', N'', N'add()', N'', N'layui-btn-normal', N'申请物品', N'0', N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'68fc793f-069f-43e1-a012-42ac2d7c585c', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除角色', N'2', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'6c814946-db5c-48bd-84dd-b1c38196ad74', N'btnAdd', N'添加模版', N'', N'add()', N'', N'layui-btn-normal', N'', N'0', N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'6db928fe-93df-460f-9472-8bb0b6cae52c', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加进出库', N'0', N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'79ccd3eb-3aaf-4e08-83c9-713d8ff446fe', N'btnVerification', N'处理', N'', N'verificationForm()', N'', N'layui-btn-normal', N'', N'5', N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除部门', N'0', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'7f071c63-1620-4486-9264-5806b2e63218', N'btnAccessRole', N'为用户分配角色', N'', N'openUserRoleAccess(this)', N'', N'layui-btn-normal', N'为用户分配角色', N'5', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'816b12b3-e916-446d-a2fa-329cfd13c831', N'btnDetail', N'进度详情', N'', N'detail()', N'', N'layui-btn-normal', N'', N'4', N'9486ff22-b696-4d7f-8093-8a3e53c45453', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'84694ea5-d6e1-4a65-8a59-7b5b779688d4', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加模块', N'0', N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'84e38920-f6e5-499c-bf52-a3c6f8499ff7', N'btnDelStock', N'删除', N' ', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除分类', N'0', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'8966b04f-8e26-4046-8b03-0c64f9f833dd', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'', N'3', N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'9c96e485-84a6-45f0-b6a7-f01dab94b0c6', N'btnPreview', N'预览', N'', N'preview()', N'', N'layui-btn-normal', N'', N'4', N'92b00259-2d15-43e7-9321-adffb29e8bf2', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'9e2c6754-f258-4b14-96a0-b9d981196a65', N'btnAdd', N'添加', N'', N'add()', N'&#xe654;', N'layui-btn-normal', N'添加资源', N'0', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'c0d8505c-061a-467d-862a-c94f27caa208', N'btnAssignElement', N'为角色分配菜单', N'', N'assignRoleElement(this)', N'', N'layui-btn-normal', N'为角色分配菜单', N'5', N'bedb41a2-f310-4775-af99-01be08adda93', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'c3d7b478-21e9-4c1e-b866-a3c80be7909b', N'btnRefresh', N'刷新', N'', N'refresh()', N'', N'layui-btn-normal', N'刷新分类', N'0', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除进出库', N'0', N'89c3bfbe-246f-4112-8eb1-b6789da54202', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'c7123d75-dd86-4cf3-ac71-c11676cd3909', N'btnAddInstance', N'发起流程', N'', N'addInstance()', N'', N'layui-btn-normal', N'', N'3', N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'c7d7daf0-3669-4a22-8bed-b092617deb9c', N'btnDel', N'删除', N'', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除资源', N'3', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'cf7388be-2677-427c-ad78-8f00f1062b96', N'btnAssignElement', N'为用户分配菜单', N'', N'openAssignUserElement(this)', N'', N'layui-btn-normal', N'为用户分配菜单', N'7', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a', N'btnRefresh', N'刷新', N'', N'refresh()', N'', N'layui-btn-normal', N'刷新用户', N'3', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'd352c8ee-3dff-4d28-a0de-903ae68f2533', N'btnPreview', N'预览', N'', N'preview()', N'', N'layui-btn-normal', N'', N'1', N'0031262c-689c-4b96-bae2-2c9d67076ade', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4', N'btnDel', N'删除', N' ', N'del()', N'&#xe640;', N'layui-btn-danger', N'删除模块', N'0', N'bc80478d-0547-4437-9cff-be4b40144bdf', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'ef42721f-d223-4a00-a1d9-80b81121f21a', N'btnEdit', N'编辑', N' ', N'edit()', N'&#xe642;', N'layui-btn-normal', N'编辑部门', N'0', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'f8dde22a-2a37-47c4-8e67-70fb3af5303e', N'btnRefresh', N'刷新', N'', N'refresh()', N'', N'layui-btn-normal', N'刷新部门', N'0', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a', NULL, NULL)
GO

INSERT INTO [dbo].[ModuleElement]  VALUES (N'fa816af1-a28d-47b5-9b8b-c46e18f902e9', N'btnAccessModule', N'为用户分配模块', N'', N'openUserModuleAccess(this)', N'', N'layui-btn-normal', N'为用户分配模块', N'6', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c', NULL, NULL)
GO


-- ----------------------------
-- Table structure for Org
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Org]') AND type IN ('U'))
	DROP TABLE [dbo].[Org]
GO

CREATE TABLE [dbo].[Org] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [CascadeId] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [HotKey] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [ParentName] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [IsLeaf] bit DEFAULT ((1)) NOT NULL,
  [IsAutoExpand] bit DEFAULT ((0)) NOT NULL,
  [IconName] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Status] int DEFAULT ((1)) NOT NULL,
  [BizCode] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [CustomCode] varchar(4000) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [CreateId] int DEFAULT ((0)) NOT NULL,
  [SortNo] int DEFAULT ((0)) NOT NULL,
  [ParentId] [dbo].[PrimaryKey] NULL,
  [TypeName] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Org] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'流水号',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点语义ID',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'CascadeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织名称',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'热键',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'HotKey'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点名称',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'ParentName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否叶子节点',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'IsLeaf'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否自动展开',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'IsAutoExpand'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点图标文件名称',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'IconName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前状态',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务对照码',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'BizCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自定义扩展码',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'CustomCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人ID',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'CreateId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'SortNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点流水号',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'TypeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类ID',
'SCHEMA', N'dbo',
'TABLE', N'Org',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织表',
'SCHEMA', N'dbo',
'TABLE', N'Org'
GO


-- ----------------------------
-- Records of [Org]
-- ----------------------------
INSERT INTO [dbo].[Org]  VALUES (N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b', N'.0.1.3.1.', N'研发小组', N'', N'研发部', N'0', N'0', N'', N'0', N'0', N'', N'2016-10-14 11:40:31.027', N'0', N'1', N'990cb229-cc18-41f3-8e2b-13f0f0110798', NULL, NULL)
GO

INSERT INTO [dbo].[Org]  VALUES (N'543a9fcf-4770-4fd9-865f-030e562be238', N'.0.1.', N'集团总部', N'', N'根节点', N'0', N'0', N'', N'0', N'0', N'', N'2016-10-14 11:37:13.070', N'0', N'0', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Org]  VALUES (N'86449128-d5ac-44bf-b999-f7735b7458fd', N'.0.2.1.', N'汇丰软件部', N'', N'汇丰', N'0', N'0', N'', N'0', N'0', N'', N'2016-05-26 15:11:02.893', N'0', N'1', N'c36e43df-3a99-45da-80d9-3ac5d24f4014', NULL, NULL)
GO

INSERT INTO [dbo].[Org]  VALUES (N'990cb229-cc18-41f3-8e2b-13f0f0110798', N'.0.1.3.', N'研发部', N'', N'集团总部', N'0', N'1', N'', N'0', N'0', N'', N'2016-04-16 13:03:41.093', N'0', N'0', N'543a9fcf-4770-4fd9-865f-030e562be238', NULL, NULL)
GO

INSERT INTO [dbo].[Org]  VALUES (N'c36e43df-3a99-45da-80d9-3ac5d24f4014', N'.0.2.', N'汇丰', N'', N'根节点', N'0', N'0', N'', N'0', N'0', N'', N'2016-05-26 15:10:39.750', N'0', N'1', NULL, NULL, NULL)
GO


-- ----------------------------
-- Table structure for Relevance
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Relevance]') AND type IN ('U'))
	DROP TABLE [dbo].[Relevance]
GO

CREATE TABLE [dbo].[Relevance] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Description] nvarchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Key] varchar(100) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Status] int DEFAULT ((0)) NOT NULL,
  [OperateTime] datetime DEFAULT (getdate()) NOT NULL,
  [OperatorId] [dbo].[PrimaryKey] NULL,
  [FirstId] [dbo].[PrimaryKey] NOT NULL,
  [SecondId] [dbo].[PrimaryKey] NOT NULL
)
GO

ALTER TABLE [dbo].[Relevance] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'流水号',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'映射标识',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'Key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权时间',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'OperateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'授权人',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'OperatorId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第一个表主键ID',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'FirstId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'第二个表主键ID',
'SCHEMA', N'dbo',
'TABLE', N'Relevance',
'COLUMN', N'SecondId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'多对多关系集中映射',
'SCHEMA', N'dbo',
'TABLE', N'Relevance'
GO


-- ----------------------------
-- Records of [Relevance]
-- ----------------------------
INSERT INTO [dbo].[Relevance]  VALUES (N'03be9b5e-38b0-4525-8431-b26d35ce6ce3', N'', N'UserElement', N'0', N'2016-09-07 15:30:42.907', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'816b12b3-e916-446d-a2fa-329cfd13c831')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'06f4c4a2-faa8-4bad-9184-50ceb517f30b', N'', N'ProcessUser', N'0', N'2016-09-08 16:48:14.470', N'0', N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'08ff97f7-17fc-4072-b29a-287135898ece', N'', N'RoleResource', N'0', N'2016-09-04 23:20:21.777', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fdf3aac3-4507-40ad-aa2f-d7f0459de252')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'0e2316ba-8286-45a2-8767-0e01390a3ebb', N'', N'UserOrg', N'0', N'2017-12-11 16:18:54.763', N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'0fd5b371-b010-4846-8833-95cc1e813a32', N'', N'UserElement', N'0', N'2016-09-07 15:31:15.967', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'68484265-7802-4f06-b024-33e8b2f2edcf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'10a76196-ba0c-4294-bb8f-dcd063eb4aab', N'', N'UserOrg', N'0', N'2017-10-12 09:13:37.820', N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'10e58d75-dec1-4b85-882f-9dac79ad1210', N'', N'RoleResource', N'0', N'2016-10-21 18:08:13.220', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'120d7a5d-203c-4261-95f5-0125757fb386', N'', N'UserElement', N'0', N'2016-10-20 17:01:00.790', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'7f071c63-1620-4486-9264-5806b2e63218')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'13433400-a32c-4539-b988-8b417c09bc0e', N'', N'UserModule', N'0', N'2016-09-07 15:30:06.593', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'13612a4c-b20c-4bd0-a2cd-0ae47576364d', N'', N'UserElement', N'0', N'2016-10-20 16:34:12.077', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'16154fc4-d18e-44a3-bcf2-5539b168aba7', N'', N'RoleElement', N'0', N'2016-10-24 17:25:15.280', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'18cc3217-28a6-49b2-9a20-080230065984')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1740ff26-a4d0-44cc-9fab-a0105c2c60b6', N'', N'UserOrg', N'0', N'2017-10-12 13:59:48.843', N'', N'63c9c82a-e0d3-4bde-bbd2-057cda2f5283', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1873ed85-a88a-4236-bd40-2c416aa2576c', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.040', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'19c9621c-3d23-46b7-a841-54d5c82ec8e8', N'', N'UserOrg', N'0', N'2016-09-02 13:56:52.860', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1acec4c4-0136-4e2b-a839-8676dbd6594a', N'', N'ProcessUser', N'0', N'2016-09-14 11:38:22.603', N'0', N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1ced1564-2fea-4c04-8aea-f071fa5bb293', N'', N'UserModule', N'0', N'2016-09-05 16:24:54.810', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1cf19b35-e2c2-436f-99b9-03ac2b232cc6', N'', N'RoleElement', N'0', N'2016-09-04 23:21:04.363', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'44075557-496e-4dde-bb75-7b69f51ab4fe')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'1f1262be-cadf-4959-997a-37d40bb36493', N'', N'UserOrg', N'0', N'2017-12-11 16:19:00.137', N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2014027e-0cff-41cf-974b-56126d6eaa9a', N'', N'RoleElement', N'0', N'2016-09-05 09:22:11.140', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'c4c1acbb-9cbf-4b1e-9cc0-ccf5ff544ec2')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'242e9543-3343-41d4-8816-15ffeeaef551', N'', N'UserElement', N'0', N'2016-09-07 15:31:15.967', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'27c4d50c-32da-4dbc-88a1-84b343cdd649', N'', N'UserElement', N'0', N'2016-10-20 17:01:00.140', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'6839a297-350b-4215-b680-4e5dfdae5615')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'29b06cd6-af0c-4c63-9aba-e5431c5d62ec', N'', N'UserOrg', N'0', N'2017-10-12 09:13:37.820', N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2a36a2b7-41aa-4190-b88c-75d44a56ad6e', N'', N'UserModule', N'0', N'2017-02-06 00:14:18.233', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'92b00259-2d15-43e7-9321-adffb29e8bf2')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2ca288a6-d222-4328-951e-c01c3e77a0c7', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.417', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7f071c63-1620-4486-9264-5806b2e63218')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2d0fcc88-a7c0-4d33-8a08-1d688e9dde83', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.180', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2d15e438-cc3a-41e9-9b13-325bfd5c804a', N'', N'RoleElement', N'0', N'2016-09-04 23:21:09.153', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84e38920-f6e5-499c-bf52-a3c6f8499ff7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'2ebff9a4-b2d5-4a35-a7dd-2cfa2f5b0522', N'', N'ProcessUser', N'0', N'2016-09-07 17:33:38.677', N'0', N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'30c82d18-7892-4e5f-9aee-e4f483a858c2', N'', N'UserModule', N'0', N'2016-09-05 16:24:55.047', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'332a373c-f485-4f85-9af9-7792f7462bf1', N'', N'RoleModule', N'0', N'2016-09-02 17:03:46.813', N'0', N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'340c60fe-8b95-474c-aa04-9197903998d2', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.837', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7580672f-a390-4bb6-982d-9a4570cb5199')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'361feb63-bde2-49c7-86ec-6df3ec6f0fe3', N'', N'RoleElement', N'0', N'2016-09-04 23:21:13.077', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c870438-4260-43a5-8996-a6e1dc8bbf6a')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'3bcaab20-e096-480e-a9bb-0fdb70686714', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.420', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'cf7388be-2677-427c-ad78-8f00f1062b96')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'3de0359b-6331-4dc7-a00e-751f71dbadb5', N'', N'ProcessUser', N'0', N'2016-09-28 09:23:30.037', N'0', N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'460d1c98-2a68-43cf-8d38-d40ceb89916f', N'', N'UserOrg', N'0', N'2017-10-12 09:13:37.820', N'', N'3eacdedd-e93a-4816-b49c-99ba3d5323c2', N'86449128-d5ac-44bf-b999-f7735b7458fd')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'4757bb30-e4bc-4c2d-a824-947ef151d341', N'', N'UserRole', N'0', N'2016-09-07 20:21:15.513', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'4ba3982b-f0ae-4f9a-980e-1eaedc3b5f2e', N'', N'UserElement', N'0', N'2016-09-07 17:48:33.843', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'4e613188-0387-4d17-a60d-703b4a606d75', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.843', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bc80478d-0547-4437-9cff-be4b40144bdf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'4fde1dc6-9d73-4c7c-9238-28981858c5a6', N'', N'RoleModule', N'0', N'2016-09-05 09:21:56.480', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'89c3bfbe-246f-4112-8eb1-b6789da54202')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'5167dbcd-3a32-4ae8-827e-6f381cc58fa2', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.420', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'54b2e9b6-1f7c-4a39-92c9-98f58429c1fc', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.180', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bc80478d-0547-4437-9cff-be4b40144bdf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'55b10ecc-3fb3-4127-b69e-e7a3467d7a1a', N'', N'RoleElement', N'0', N'2016-09-05 09:22:11.140', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'6db928fe-93df-460f-9472-8bb0b6cae52c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'5725ff79-43c6-4778-bbff-131cf364dab6', N'', N'UserElement', N'0', N'2016-10-20 17:01:01.287', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'cf7388be-2677-427c-ad78-8f00f1062b96')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'5903cc95-17fc-423f-9439-bcdf1f808d7b', N'', N'UserOrg', N'0', N'2017-12-12 14:07:05.150', N'', N'229f3a49-ab27-49ce-b383-9f10ca23a9d5', N'86449128-d5ac-44bf-b999-f7735b7458fd')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'5a20d59c-6ee6-4fe2-98fe-7b35b11026ae', N'', N'UserElement', N'0', N'2016-09-07 15:30:19.650', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'68484265-7802-4f06-b024-33e8b2f2edcf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'620b368a-7b56-4c74-ab85-8bc91d08ddc9', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.633', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1c9acc3e-a40d-4d07-b495-6e60eb9b71b9')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'6431a464-6f1f-4ffc-8157-89212b70f09a', N'', N'RoleOrg', N'0', N'2016-09-05 00:00:00.370', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'648500cc-e1e6-426d-9f17-c6061ce606a1', N'', N'UserOrg', N'0', N'2017-12-11 16:19:05.717', N'', N'de8be521-f1ec-4483-b124-0be342890507', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'64e4f5aa-28ef-4690-9b20-5f0b543964f6', N'', N'UserElement', N'0', N'2016-09-07 15:30:19.647', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'816b12b3-e916-446d-a2fa-329cfd13c831')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'66e25fc5-093d-42ab-85dc-a38f6600889b', N'', N'UserOrg', N'0', N'2016-09-02 13:57:32.317', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'c36e43df-3a99-45da-80d9-3ac5d24f4014')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'68912e65-256e-45b6-b48e-036382598d32', N'', N'RoleOrg', N'0', N'2016-10-17 10:03:49.337', N'0', N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'69dae19a-d92c-4fb6-b969-3c7560d999c4', N'', N'UserOrg', N'0', N'2017-12-11 16:19:00.137', N'', N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'6b9c4789-042c-4f6f-a749-ee68ee87462d', N'', N'ProcessUser', N'0', N'2016-10-27 16:47:51.577', N'0', N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'6db5666b-6f8c-4e83-bada-0b45054bd9a4', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.630', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0d25438e-1436-48e0-aedf-0f1690693282')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'715d017a-68b6-468d-aa3f-32ca4cfd4b9e', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.840', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'bedb41a2-f310-4775-af99-01be08adda93')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'72bf4729-af60-42f5-b0d7-717362ffad7f', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.413', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2feefce1-e3d8-42ac-b811-2352679628da')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'7475b0c3-f204-4f95-a22f-80591fe76bc7', N'', N'ProcessUser', N'0', N'2016-10-31 11:52:39.190', N'0', N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'74f4a3a3-b84b-4ad7-bca1-c85494e01e8e', N'', N'UserOrg', N'0', N'2017-12-11 16:18:54.763', N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'75340ad3-fb80-4646-b1de-ba801688ddc2', N'', N'RoleElement', N'0', N'2016-09-04 23:21:04.363', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'5ed1681c-13d2-4c87-8675-a8d95c0b40ae')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'77bd93da-2c2b-4ba8-bf05-3a1382811a6a', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.177', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'7f25286f-246b-4143-98eb-c3e574fe7455', N'', N'ProcessUser', N'0', N'2016-09-07 17:33:38.637', N'0', N'52cc7933-a045-4dcc-8c17-1b618bfa772b', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'7f74fc39-ef66-4b6e-a45d-1048a34de592', N'', N'UserElement', N'0', N'2017-12-15 17:23:40.290', N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'68484265-7802-4f06-b024-33e8b2f2edcf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'7fd7f976-f10e-44aa-a7ba-7ca40d2e8f90', N'', N'RoleOrg', N'0', N'2016-10-17 10:03:30.210', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'80310629-5e52-482c-9a0f-5c5bdfabcd9e', N'', N'RoleOrg', N'0', N'2016-09-05 00:00:00.370', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'832f4a8f-7791-4aa6-bcd2-20dcb6f5ef37', N'', N'UserElement', N'0', N'2016-09-02 14:53:04.370', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'84a52091-08a0-4a46-b661-3cd206771c29', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.840', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'0031262c-689c-4b96-bae2-2c9d67076ade')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'854e0658-ab8a-4869-b157-9941955acdc6', N'', N'RoleElement', N'0', N'2016-09-04 23:21:09.150', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'1a473afd-cbd4-41e9-9471-81f9435aaabe')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'88a4c966-d042-4a2e-b133-ff7eded1c5de', N'', N'RoleElement', N'0', N'2016-09-04 23:21:13.077', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'7b2b1ffb-398b-4f7b-83da-8f484e1bcea0')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'8b633f3c-965b-4e35-8496-c364890d7760', N'', N'RoleElement', N'0', N'2016-09-04 23:21:09.153', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c3d7b478-21e9-4c1e-b866-a3c80be7909b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'92f0b297-96c1-47d4-84dd-571374431bc0', N'', N'RoleElement', N'0', N'2016-09-04 23:21:04.360', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'84694ea5-d6e1-4a65-8a59-7b5b779688d4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'93bcac7a-0ff1-488c-8d1c-3da7e44cbefc', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.413', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'd1ba6a72-ba14-44c0-baba-46d0ad96fe8a')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'960224e6-5910-472b-a5ef-b2aa9a8b106f', N'', N'UserRole', N'0', N'2016-09-06 17:06:15.320', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'965f010b-2fd6-4b34-ba23-3e44c1af2877', N'', N'RoleOrg', N'0', N'2016-09-08 16:19:17.987', N'0', N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'9ad706e3-8e6b-4bc7-a502-371b298ef062', N'', N'RoleElement', N'0', N'2016-09-04 23:21:13.073', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef42721f-d223-4a00-a1d9-80b81121f21a')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'9d568d6d-d78d-47d6-8fb6-b1327cdbe83a', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.843', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'a94d5648-c2a9-405e-ba6f-f1602ec9b807')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'9e46a946-6e81-4f61-bcba-21e4f7fac3df', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.177', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'9edc7b81-2b51-4193-8805-6062e596ccdc', N'', N'UserOrg', N'0', N'2016-09-02 13:57:32.317', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'9fa50449-5d87-4579-9f1f-9cdcd876976b', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.417', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6839a297-350b-4215-b680-4e5dfdae5615')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a051aa08-38da-4b6d-8d90-10b3c2485e4b', N'', N'RoleOrg', N'0', N'2016-09-05 00:00:00.353', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'543a9fcf-4770-4fd9-865f-030e562be238')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a06fe8c6-3f5e-4085-9bbf-e366571a356c', N'', N'RoleElement', N'0', N'2016-09-04 23:21:04.357', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'daddf3b9-71b5-45ac-b85d-5a11c522f2f4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a0904102-e26a-4bc5-9c95-ed5ef977586b', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.180', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a8094b46-de5a-40ea-a8ee-69ea905480ef', N'', N'RoleModule', N'0', N'2016-09-05 09:21:56.227', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a8123b37-ba70-4aab-aef6-1938733b5210', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.633', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c0d8505c-061a-467d-862a-c94f27caa208')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'a9821db0-49bd-49be-a554-afa811c99760', N'', N'RoleResource', N'0', N'2016-09-04 23:20:21.777', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ec99f670-0eca-465c-9f64-d4d5dc510b83')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'aa051096-a23a-431d-9053-bb954f9453a7', N'', N'RoleElement', N'0', N'2016-09-04 23:20:53.647', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'4bfa8ea0-6b0d-426f-8687-b654575ca780')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ab84b111-fb5d-4ddd-99d5-479954d9d521', N'', N'RoleOrg', N'0', N'2016-09-08 16:19:18.000', N'0', N'36094f5d-07e7-40d5-91dc-ff60f98b496a', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ab924ba7-8a74-4804-82b0-ecbbedf4c13e', N'', N'RoleElement', N'0', N'2016-09-05 09:22:11.137', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'38109ca0-32ec-44bd-a243-017e591b532b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ac184827-9899-4b40-8939-61fe9d2b187c', N'', N'UserElement', N'0', N'2016-09-07 17:48:49.470', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'584c7a3b-d28a-47b4-8648-7797d05d83d1')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'acb4d37f-8b45-4a99-b364-99f3881dfcda', N'', N'RoleElement', N'0', N'2016-09-04 23:21:13.047', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'f8dde22a-2a37-47c4-8e67-70fb3af5303e')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'acc51898-5335-4903-83b9-4701a782bc4d', N'', N'UserElement', N'0', N'2016-10-20 17:01:01.787', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'fa816af1-a28d-47b5-9b8b-c46e18f902e9')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ad267296-5eba-4d59-b821-8148d8cfb3c6', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.840', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'e8dc5db6-4fc4-4795-a1cc-681cbcceec91')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ad29467e-eeee-494c-ab82-f6be5d2619d5', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.417', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'50c9df24-b233-42cb-9a0d-4ce158c75f86')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ad5bc7a6-e307-4fa8-a4ef-ce9e09f7e21b', N'', N'RoleModule', N'0', N'2016-09-05 09:21:56.477', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'af263192-daa8-4f29-99b9-1efb96e31627', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.633', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'645b40ac-4223-44a7-aab4-66eb56cf9864')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'b08d7763-a725-406f-a7d5-d144f00d716e', N'', N'UserOrg', N'0', N'2016-09-02 13:56:41.063', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'543a9fcf-4770-4fd9-865f-030e562be238')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'b2edfee4-f980-4aa5-b547-492d677e0674', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.843', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'ef386d5d-cd58-43c0-a4ab-80afd0dbcd6c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'b672a830-c3a5-408b-a746-65608534b24c', N'', N'UserModule', N'0', N'2017-12-15 17:07:05.190', N'', N'49df1602-f5f3-4d52-afb7-3802da619558', N'9486ff22-b696-4d7f-8093-8a3e53c45453')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'bda5f089-64d6-4fb8-9012-d7f3ff36902a', N'', N'UserOrg', N'0', N'2017-10-12 13:59:09.157', N'', N'ffd92ed2-5330-4ec2-a42d-6e0e9005db3b', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'bee6572d-8fb8-4e0e-af15-93aafc989717', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.630', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'68fc793f-069f-43e1-a012-42ac2d7c585c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c14addeb-1812-4a78-9152-1f7115b22d89', N'', N'UserRole', N'0', N'2016-09-05 00:00:47.423', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'db309d88-fd21-4b81-a4d9-ae6276a1d813')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c2d3b7d6-b47d-4bd8-9dc6-d9134d86713f', N'', N'RoleOrg', N'0', N'2016-10-17 10:03:30.210', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'86449128-d5ac-44bf-b999-f7735b7458fd')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c3050d65-d26b-4e46-bece-a212b0cc00ec', N'', N'RoleElement', N'0', N'2016-09-04 23:20:41.627', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'15a4f88c-4fae-4cab-ba2f-0cbd2cca8736')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c4771ac5-3375-4de9-adb8-a603398f0d62', N'', N'RoleElement', N'0', N'2016-09-04 23:21:09.157', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'2d595a2a-5de5-479e-a331-b53c799a6b10')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c50fae2a-b36f-486f-9d53-e58406590101', N'', N'ProcessUser', N'0', N'2016-10-27 16:47:51.577', N'0', N'054ff054-d8ae-4911-a596-8fb1f66b348f', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c58cb482-6ab7-49eb-b5b0-e45424b6e502', N'', N'RoleElement', N'0', N'2016-09-04 23:21:00.420', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'34730f5a-d307-457b-9041-5f7de30abfa9')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c9099371-8d4e-4f5b-9686-2c60a2c1c641', N'', N'ProcessUser', N'0', N'2016-09-08 16:48:14.467', N'0', N'10cc09fb-d469-41e5-ae3f-fdd805a4bd4c', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'c98b3d02-a76b-4ecc-94a5-cfeffd5e29fb', N'', N'RoleModule', N'0', N'2016-09-02 17:03:39.173', N'0', N'211e12c7-e466-496e-8d26-0660a38e24cc', N'bedb41a2-f310-4775-af99-01be08adda93')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ccae4f18-f33b-4656-9e59-93b9e29fc4b4', N'', N'UserOrg', N'0', N'2017-12-12 14:07:11.057', N'', N'1df68dfd-3b6d-4491-872f-00a0fc6c5a64', N'86449128-d5ac-44bf-b999-f7735b7458fd')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'da6c0645-0bf9-4ade-9dd3-1b09e91e504c', N'', N'RoleElement', N'0', N'2016-09-05 09:22:06.583', N'0', N'4980a85b-e3db-4607-bc2c-0baf0140d7df', N'816b12b3-e916-446d-a2fa-329cfd13c831')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'df2d90b3-4e2e-40e9-b406-220009726460', N'', N'RoleModule', N'0', N'2016-09-04 23:20:33.847', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'6a9e1346-0c01-44d2-8eb1-f929fdab542a')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'dfd5430b-3422-465a-be79-05a1e06deed2', N'', N'RoleElement', N'0', N'2016-09-04 23:20:53.643', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'c7d7daf0-3669-4a22-8bed-b092617deb9c')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'e12b77de-b7ce-4f38-b7a3-f3b2d285f33b', N'', N'RoleOrg', N'0', N'2016-10-17 10:03:49.337', N'0', N'2eb423d6-6ad9-4efe-b423-872478a2a434', N'08f41bf6-4388-4b1e-bd3e-2ff538b44b1b')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'e28c0dcd-168a-4b60-a514-7b6eb8026709', N'', N'RoleOrg', N'0', N'2016-10-17 10:03:30.210', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'e785147c-f46b-474f-8fad-73b14fa69822', N'', N'UserRole', N'0', N'2016-09-06 17:06:28.843', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'4980a85b-e3db-4607-bc2c-0baf0140d7df')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'e84f6b9c-716d-4e94-a1aa-7fd0d1a2e23e', N'', N'RoleModule', N'0', N'2016-09-02 17:03:46.810', N'0', N'648b04c4-4ac2-4d69-bef6-07081ef27871', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ec72f6ae-09ee-4db9-99a1-bf15c8e35dda', N'', N'ProcessUser', N'0', N'2016-09-14 11:38:22.583', N'0', N'6c6afe3c-349c-4198-8710-cf19c90f3afd', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ec9c80ce-dbdf-4ba5-9091-82f75392c3b0', N'', N'UserElement', N'0', N'2016-09-07 15:30:42.907', N'0', N'3a95e392-07d4-4af3-b30d-140ca93340f5', N'68484265-7802-4f06-b024-33e8b2f2edcf')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'ee4f39fd-4fbf-4f68-9a70-d6c7d7db9723', N'', N'ProcessUser', N'0', N'2016-10-31 11:52:39.187', N'0', N'b8bcdf59-1e29-4d97-a364-12ac8e8c5c61', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'eec41fcb-61c0-4e56-a5c0-a9f8be6e6fdc', N'', N'UserModule', N'0', N'2016-09-07 15:30:06.453', N'0', N'3b64b643-cb9a-4654-81e4-6dd9b2f8a6f7', N'069475e3-c997-487a-9f29-e6a864c5c1d4')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'f4ba636a-9002-43e6-93eb-95132a3e68c5', N'', N'ProcessUser', N'0', N'2016-09-28 09:23:30.033', N'0', N'68295d2a-4dfd-4c5e-81e3-9c787e2603bc', N'3a95e392-07d4-4af3-b30d-140ca93340f5')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'f579a427-a9ed-4ebe-8411-72e8e6abd01d', N'', N'UserElement', N'0', N'2016-09-05 16:25:26.193', N'0', N'ea25646b-964b-4d41-ab03-d8964e1494fb', N'816b12b3-e916-446d-a2fa-329cfd13c831')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'f6367ca1-0486-46a4-b9c6-65c00936a516', N'', N'RoleElement', N'0', N'2016-09-04 23:20:53.660', N'0', N'db309d88-fd21-4b81-a4d9-ae6276a1d813', N'9e2c6754-f258-4b14-96a0-b9d981196a65')
GO

INSERT INTO [dbo].[Relevance]  VALUES (N'fa7c4d39-b31a-4668-8716-d40a62aa722b', N'', N'UserOrg', N'0', N'2017-10-12 13:59:48.843', N'', N'63c9c82a-e0d3-4bde-bbd2-057cda2f5283', N'990cb229-cc18-41f3-8e2b-13f0f0110798')
GO


-- ----------------------------
-- Table structure for Resource
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Resource]') AND type IN ('U'))
	DROP TABLE [dbo].[Resource]
GO

CREATE TABLE [dbo].[Resource] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [CascadeId] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Key] varchar(200) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Status] int DEFAULT ((1)) NOT NULL,
  [SortNo] int DEFAULT ((0)) NOT NULL,
  [Description] nvarchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [ParentId] [dbo].[PrimaryKey] NULL,
  [AppId] [dbo].[PrimaryKey] NULL,
  [TypeName] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Resource] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源表ID',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'节点语义ID',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'CascadeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源英文唯一标识',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'Key'
GO

EXEC sp_addextendedproperty
'MS_Description', N'名称',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前状态',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'SortNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父节点流水号',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源所属应用',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'AppId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'TypeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类ID',
'SCHEMA', N'dbo',
'TABLE', N'Resource',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'资源表',
'SCHEMA', N'dbo',
'TABLE', N'Resource'
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Status] int DEFAULT ((1)) NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [CreateId] [dbo].[PrimaryKey] NULL,
  [TypeName] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Role] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'Id',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色名称',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前状态',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人ID',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'CreateId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'TypeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类ID',
'SCHEMA', N'dbo',
'TABLE', N'Role',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'角色表',
'SCHEMA', N'dbo',
'TABLE', N'Role'
GO


-- ----------------------------
-- Table structure for Stock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Stock]') AND type IN ('U'))
	DROP TABLE [dbo].[Stock]
GO

CREATE TABLE [dbo].[Stock] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Name] nvarchar(500) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Number] int DEFAULT ((0)) NOT NULL,
  [Price] decimal(10,1) DEFAULT ((0)) NOT NULL,
  [Status] int DEFAULT ((0)) NOT NULL,
  [Viewable] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [User] varchar(50) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Time] datetime DEFAULT (getdate()) NOT NULL,
  [OrgId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[Stock] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据ID',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品名称',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品数量',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'产品单价',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库/入库',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'可见范围',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Viewable'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'User'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作时间',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'Time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'组织ID',
'SCHEMA', N'dbo',
'TABLE', N'Stock',
'COLUMN', N'OrgId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'出入库信息表',
'SCHEMA', N'dbo',
'TABLE', N'Stock'
GO


-- ----------------------------
-- Table structure for User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type IN ('U'))
	DROP TABLE [dbo].[User]
GO

CREATE TABLE [dbo].[User] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Account] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Password] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [Sex] int DEFAULT ((0)) NOT NULL,
  [Status] int DEFAULT ((0)) NOT NULL,
  [BizCode] varchar(255) COLLATE Chinese_PRC_CI_AS DEFAULT (' ') NOT NULL,
  [CreateTime] datetime DEFAULT (getdate()) NOT NULL,
  [CrateId] [dbo].[PrimaryKey] NULL,
  [TypeName] nvarchar(20) COLLATE Chinese_PRC_CI_AS NULL,
  [TypeId] [dbo].[PrimaryKey] NULL
)
GO

ALTER TABLE [dbo].[User] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'流水号',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户登录帐号',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Account'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户姓名',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户状态',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'Status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务对照码',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'BizCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'经办时间',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'CreateTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'CrateId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类名称',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'TypeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分类ID',
'SCHEMA', N'dbo',
'TABLE', N'User',
'COLUMN', N'TypeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户基本信息表',
'SCHEMA', N'dbo',
'TABLE', N'User'
GO


-- ----------------------------
-- Records of [User]
-- ----------------------------
INSERT INTO [dbo].[User]  VALUES (N'1df68dfd-3b6d-4491-872f-00a0fc6c5a64', N'test4', N'test4', N'test4', N'1', N'0', N'', N'2017-12-12 14:07:11.000', N'', N'', N'')
GO

INSERT INTO [dbo].[User]  VALUES (N'229f3a49-ab27-49ce-b383-9f10ca23a9d5', N'test3', N'test3', N'test3', N'1', N'0', N'', N'2017-12-12 14:07:04.787', N'', N'', N'')
GO

INSERT INTO [dbo].[User]  VALUES (N'49df1602-f5f3-4d52-afb7-3802da619558', N'admin', N'admin', N'admin', N'1', N'1', N'', N'2017-12-11 16:18:53.707', N'', N'', N'')
GO

INSERT INTO [dbo].[User]  VALUES (N'6ba79766-faa0-4259-8139-a4a6d35784e0', N'test', N'test', N'test', N'1', N'1', N'', N'2017-12-11 16:19:00.127', N'', N'', N'')
GO

INSERT INTO [dbo].[User]  VALUES (N'de8be521-f1ec-4483-b124-0be342890507', N'test2', N'test2', N'test2', N'1', N'1', N'', N'2017-12-11 16:19:05.707', N'', N'', N'')
GO


-- ----------------------------
-- Table structure for WF_ProcessInstance
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_ProcessInstance]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_ProcessInstance]
GO

CREATE TABLE [dbo].[WF_ProcessInstance] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [Code] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [CustomName] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [ActivityId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ActivityType] int NULL,
  [ActivityName] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [ProcessSchemeId] [dbo].[PrimaryKey] NOT NULL,
  [PreviousId] [dbo].[PrimaryKey] NULL,
  [FrmType] int NULL,
  [SchemeType] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [EnabledMark] int NULL,
  [CreateDate] datetime NULL,
  [CreateUserId] [dbo].[PrimaryKey] NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [wfLevel] int NULL,
  [Description] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [isFinish] int NULL,
  [MakerList] varchar(1000) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[WF_ProcessInstance] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例编号',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'自定义名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'CustomName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前节点ID',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'ActivityId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前节点类型（0会签节点）',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'ActivityType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前节点名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'ActivityName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程实例模板Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'ProcessSchemeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'前一个ID',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'PreviousId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单类型',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'FrmType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程类型',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'SchemeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效标志',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'EnabledMark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户主键',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'等级',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'wfLevel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例备注',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否完成',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'isFinish'
GO

EXEC sp_addextendedproperty
'MS_Description', N'执行人',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance',
'COLUMN', N'MakerList'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流流程实例表',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessInstance'
GO


-- ----------------------------
-- Table structure for WF_ProcessOperationHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_ProcessOperationHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_ProcessOperationHistory]
GO

CREATE TABLE [dbo].[WF_ProcessOperationHistory] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [ProcessId] [dbo].[PrimaryKey] NOT NULL,
  [Content] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateDate] datetime NULL,
  [CreateUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[WF_ProcessOperationHistory] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例进程Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'ProcessId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作内容',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'Content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户主键',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流实例操作记录',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessOperationHistory'
GO


-- ----------------------------
-- Table structure for WF_ProcessScheme
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_ProcessScheme]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_ProcessScheme]
GO

CREATE TABLE [dbo].[WF_ProcessScheme] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [SchemeContent] varchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeInfoId] [dbo].[PrimaryKey] NOT NULL,
  [SchemeVersion] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ProcessType] int NULL
)
GO

ALTER TABLE [dbo].[WF_ProcessScheme] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程模板内容',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme',
'COLUMN', N'SchemeContent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程模板ID',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme',
'COLUMN', N'SchemeInfoId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程内容版本',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme',
'COLUMN', N'SchemeVersion'
GO

EXEC sp_addextendedproperty
'MS_Description', N'类型(0正常,3草稿)',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme',
'COLUMN', N'ProcessType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流实例模板对应表',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessScheme'
GO


-- ----------------------------
-- Table structure for WF_ProcessTransitionHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_ProcessTransitionHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_ProcessTransitionHistory]
GO

CREATE TABLE [dbo].[WF_ProcessTransitionHistory] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [ProcessId] [dbo].[PrimaryKey] NOT NULL,
  [fromNodeId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [fromNodeType] int NULL,
  [fromNodeName] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [toNodeId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [toNodeType] int NULL,
  [toNodeName] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [TransitionSate] int NULL,
  [isFinish] int NULL,
  [CreateDate] datetime NULL,
  [CreateUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[WF_ProcessTransitionHistory] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例进程Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'ProcessId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始节点Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'fromNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始节点类型',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'fromNodeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'开始节点名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'fromNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束节点Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'toNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束节点类型',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'toNodeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'结束节点名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'toNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'转化状态',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'TransitionSate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否结束',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'isFinish'
GO

EXEC sp_addextendedproperty
'MS_Description', N'转化时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'操作人名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流实例流转历史记录',
'SCHEMA', N'dbo',
'TABLE', N'WF_ProcessTransitionHistory'
GO


-- ----------------------------
-- Table structure for WF_SchemeContent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_SchemeContent]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_SchemeContent]
GO

CREATE TABLE [dbo].[WF_SchemeContent] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [SchemeInfoId] [dbo].[PrimaryKey] NOT NULL,
  [SchemeVersion] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeContent] varchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateDate] datetime NULL,
  [CreateUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[WF_SchemeContent] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流模板信息主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'SchemeInfoId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程内容版本',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'SchemeVersion'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程内容',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'SchemeContent'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户主键',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流模板内容表',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeContent'
GO


-- ----------------------------
-- Table structure for WF_SchemeInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WF_SchemeInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[WF_SchemeInfo]
GO

CREATE TABLE [dbo].[WF_SchemeInfo] (
  [Id] [dbo].[PrimaryKey] NOT NULL,
  [SchemeCode] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeName] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeType] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeVersion] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [SchemeCanUser] varchar(max) COLLATE Chinese_PRC_CI_AS NULL,
  [FrmType] int NULL,
  [AuthorizeType] int NULL,
  [SortCode] int NULL,
  [DeleteMark] int NULL,
  [EnabledMark] int NULL,
  [Description] varchar(200) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateDate] datetime NULL,
  [CreateUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [CreateUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ModifyDate] datetime NULL,
  [ModifyUserId] varchar(50) COLLATE Chinese_PRC_CI_AS NULL,
  [ModifyUserName] varchar(50) COLLATE Chinese_PRC_CI_AS NULL
)
GO

ALTER TABLE [dbo].[WF_SchemeInfo] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键Id',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程编号',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SchemeCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SchemeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程分类',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SchemeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程内容版本',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SchemeVersion'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程模板使用者',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SchemeCanUser'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单类型',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'FrmType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'模板权限类型0所有人,1指定成员',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'AuthorizeType'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序码',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'SortCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'删除标记',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'DeleteMark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'有效',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'EnabledMark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'Description'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'CreateDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户主键',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'CreateUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建用户',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'CreateUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改时间',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'ModifyDate'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户主键',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'ModifyUserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'修改用户',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo',
'COLUMN', N'ModifyUserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作流模板信息表',
'SCHEMA', N'dbo',
'TABLE', N'WF_SchemeInfo'
GO


-- ----------------------------
-- Primary Key structure for table Application
-- ----------------------------
ALTER TABLE [dbo].[Application] ADD CONSTRAINT [PK_APPLICATION] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Category
-- ----------------------------
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK_CATEGORY] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table CategoryType
-- ----------------------------
ALTER TABLE [dbo].[CategoryType] ADD CONSTRAINT [PK_CATEGORYTYPE] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Form
-- ----------------------------
ALTER TABLE [dbo].[Form] ADD CONSTRAINT [PK_FORM] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Module
-- ----------------------------
ALTER TABLE [dbo].[Module] ADD CONSTRAINT [PK_MODULE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ModuleElement
-- ----------------------------
ALTER TABLE [dbo].[ModuleElement] ADD CONSTRAINT [PK_MODULEELEMENT] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Org
-- ----------------------------
ALTER TABLE [dbo].[Org] ADD CONSTRAINT [PK_ORG] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Relevance
-- ----------------------------
ALTER TABLE [dbo].[Relevance] ADD CONSTRAINT [PK_RELEVANCE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Resource
-- ----------------------------
ALTER TABLE [dbo].[Resource] ADD CONSTRAINT [PK_RESOURCE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Stock
-- ----------------------------
ALTER TABLE [dbo].[Stock] ADD CONSTRAINT [PK_STOCK] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table User
-- ----------------------------
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_ProcessInstance
-- ----------------------------
ALTER TABLE [dbo].[WF_ProcessInstance] ADD CONSTRAINT [PK_WF_PROCESSINSTANCE] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_ProcessOperationHistory
-- ----------------------------
ALTER TABLE [dbo].[WF_ProcessOperationHistory] ADD CONSTRAINT [PK_WF_PROCESSOPERATIONHISTORY] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_ProcessScheme
-- ----------------------------
ALTER TABLE [dbo].[WF_ProcessScheme] ADD CONSTRAINT [PK_WF_PROCESSSCHEME] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_ProcessTransitionHistory
-- ----------------------------
ALTER TABLE [dbo].[WF_ProcessTransitionHistory] ADD CONSTRAINT [PK_WF_PROCESSTRANSITIONHISTORY] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_SchemeContent
-- ----------------------------
ALTER TABLE [dbo].[WF_SchemeContent] ADD CONSTRAINT [PK_WF_SCHEMECONTENT] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WF_SchemeInfo
-- ----------------------------
ALTER TABLE [dbo].[WF_SchemeInfo] ADD CONSTRAINT [PK_WF_SCHEMEINFO] PRIMARY KEY NONCLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

