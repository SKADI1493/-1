# KVM/QEMU 虚拟化操作记录

## 环境
- 宿主机: CentOS 7 (Linux 内核 3.10+)
- 工具: KVM / QEMU / libvirt / virt-manager

## 关键命令
```bash
# 创建 qcow2 虚拟磁盘
qemu-img create -f qcow2 centos7.qcow2 20G

# 导出虚拟机 XML 配置
virsh dumpxml centos7 > centos7.xml

# 修改 UUID 与 MAC 后克隆
uuidgen  # 生成新 UUID
virsh define centos7-clone.xml  # 导入克隆机

# 虚拟机生命周期管理
virsh list --all
virsh start centos7
virsh shutdown centos7
```

## 关键理解
- qcow2 支持写时复制(CoW)与快照, 比 raw 节省磁盘
- 克隆虚拟机必须修改 UUID 与 MAC 地址, 否则 libvirt 管理冲突、网络 IP 重复
- virt-manager 负责日常图形化运维, virsh 负责命令行管理
