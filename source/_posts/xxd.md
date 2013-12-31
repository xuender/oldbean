title: 使用VIM编辑二进制文件
date: 2013-12-31 11:13:34
tags: [vim, linux]
---
使用vim编辑二进制文件需要使用-b参数打开文件

`vi -b filename`

在Ex模式执行xxd命令进入xxd模式

`:%!xxd`

编辑完毕后推出xxd模式再保存

`:%!xxd -r`
