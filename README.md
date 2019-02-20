# Fire Overhaul System
# 2019-02-20 10:00:00



## 消防设备检修需求文档

### 项目简介
* 能够通过扫描贴在消防栓上面的二维码查看当前消防栓的检修状态（故障、过期、维护中、正常等）
* 检修人员（或管理人员）扫码之后，除了可以查看之外，还可以修改消防栓的状态
* 另外需要有一个后台用于录入消防栓的二维码，以及超级管理员可以查看所有消防栓的状态（列表形式展示）
* 区分公司，不同公司不同的管理人员（权限控制）


#### 一、前台部分
* 扫描二维码，直接展示当前消防栓的状态，包含字段信息



字段 | 释义
---|---
hydrant_name | 消火栓标识名称
hydrant_sn| 消火栓编码
status| 消火栓状态（故障、维护中、正常）
merchant_id| 所属公司
overhaul_desc| 检修描述
overhaul_staff| 检修员
updated_at| 更新时间（检修时间）

* 检修人员可以修改当前消火栓状态

#### 二、后台部分
* 超级管理员账号，所有账号需要使用超级管理员账号去后台录入（必须分配好所属公司且后期不可更改）
* 我们把权限分为4个，我公司管理，我公司员工，业主方管理，普通群众 我公司管理在任何一个公司的二维码扫描后可以查看所有的信息或者编辑，业主方管理职能查看信息，我公司员工只能查看和检修所负责的位置，普通群众扫描可以查看近期的点检信息或者维修信息就行了
* 针对每个系统进行一套点检任务，例如消火栓，一个月为一个点检周期，在本点检周期内完成点检任
务的，则显示在已点检中，并显示点检信息，未完成的则显示在未点检内
* 设置检修条目以及检修周期（每个公司的每一种设备需要检查的内容是相同的）
* 检修项目可以自行配置，不能影响检修报表的统计数据
* 每一个设备有三个层级字段 公司----楼号----楼层


#### 三、异步脚本
* 月度报表
* 湿式报警阀 的数据 不放到检修报表里面 我单独再给你提供一个 湿式报警阀的数据报表