# 我的作品 · 云计算 / 运维

> 云计算 / 运维方向 · 2026

本仓库记录在校期间完成的运维、虚拟化与部署实践项目，含操作截图、配置文件与关键命令说明。

## 项目清单

### 1. Docker Swarm 三节点集群部署
- **技术栈**：Docker / Docker Swarm / overlay 网络
- **内容**：初始化 Swarm 集群（manager + worker），以服务方式部署 3 副本 Nginx，验证负载分发。
- **文件**：
  - 编排文件：[docker-stack.yml](docker-stack.yml)
  - 集群初始化截图：[docker-swarm-cluster-init.png](docker-swarm-cluster-init.png)
  - 多副本运行截图：[docker-swarm-service-replica.png](docker-swarm-service-replica.png)

### 2. Docker Compose Web 服务容器化
- **技术栈**：Docker / Docker Compose / Nginx / MySQL
- **内容**：编写 Dockerfile 构建 Nginx 镜像，Compose 编排 Web + MySQL，数据卷持久化。
- **文件**：
  - [Dockerfile](Dockerfile) · [docker-compose.yml](docker-compose.yml) · [default.conf](default.conf) · [index.html](index.html)

### 3. 阿里云 ECS + 宝塔 LNMP 部署
- **技术栈**：阿里云 ECS / 宝塔面板 / Nginx / PHP / MySQL
- **内容**：从购买 ECS 到部署 WordPress 站点的完整链路，安全组最小化配置。
- **文件**：
  - 部署笔记：[aliyun-lnmp-notes.md](aliyun-lnmp-notes.md)
  - ECS 实例截图：[aliyun-ecs-instance.jpg](aliyun-ecs-instance.jpg)
  - 安全组截图：[aliyun-security-group.jpg](aliyun-security-group.jpg)
  - 宝塔 LNMP 截图：[baota-lnmp-deploy.jpg](baota-lnmp-deploy.jpg)

### 4. KVM/QEMU 虚拟化
- **技术栈**：KVM / QEMU / libvirt / virsh / virt-manager
- **内容**：qemu-img 创建 qcow2 磁盘，virsh 导出 XML 修改 UUID/MAC 完成克隆。
- **文件**：
  - 操作笔记：[kvm-notes.md](kvm-notes.md)
  - 虚拟化截图：[kvm-qemu-virtualization.png](kvm-qemu-virtualization.png)

## 技能关键词

Linux · VMware 虚拟化 · Docker / Docker Swarm / Compose · KVM/QEMU · 阿里云 ECS · 安全组 · Nginx · MySQL · Shell · 宝塔 LNMP
