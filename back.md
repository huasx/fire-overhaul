## 后台功能文档

### 一、权限控制

> 1.整个后台有一个超级管理员账号，所有员工账号只能使用超管账号进行开通、授权</br>
> 2.后台可以自行录入公司、员工信息，其中，一个员工可以负责多个公司；一个公司也可以有多个员工</br>
> 3.员工权限包含 【点检】、【维修或维护】、【状态更改】三个权限</br>
> 4.大部分员工只有【点检】、【维修或维护】，部分管理层人员可以【状态更改】</br>
> 5.外来人员，仅仅能查看设备信息</br>

### 二、数据录入

> 1.超级管理员可以录入设备信息，设备信息包含【设备名称】【设备种类】【设备序号】【所属公司】【楼栋号】【楼层位置】【备注信息】</br>
> 2.超级管理员账号可以给每个公司的每一种设备设置【点检项目】【点检周期】</br>
> 3.针对每一个设备，可以生成一个独立二维码，用于贴在设备上面</br>


### 三、数据查看

> 1.超级管理员可以选择公司后，查看该公司下的所有设备的当前状态,后台也可以直接修改某一个设备的状态</br>

### 四、报表
> 1.报表都以公司维度区分</br>
> 2.点检报表：后台选择公司之后还需要选择设备种类，每一种种类的设备单独一个报表文件</br>
> 3.维修或维护数据：单独给出链接，直接打开访问到维修或维护的数据</br>


-------------------------


## 员工使用

> 1.员工扫描设备上的二维码，选择【点检】【维修或维护】【更改状态】 </br>
> 2.根据后台设置的点检项目，合格的 需要勾选，然后提交</br>
> 3.【维修或维护】需要先选择【维修/维护】并且填写【维修材料】【数量】【备注】</br>
> 4.【更改状态】直接将正常的设备修改为【待维修】</br>
> 5.每次点检提交，有系统的自动判定状态，以及员工认为的一个设备状态</br>
> 6.灭火器有单独的报警（不需要点检）【有效期到期前一个月】</br>
> 7.外来人员，扫码只能查看，包含设备信息，点检信息，以及维修信息(数据就展示近一年的)