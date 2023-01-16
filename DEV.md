# 开发指南

## 版本号规范

我们以如下形式作为版本号：

> v```[et.ver]```-```[addition.ver]```

其中 ```[et.ver]``` 应为当前整合的 Extended Timeline 的版本，如 ```1.14.4```。而 ```[addition.ver]``` 应为本模组的修订版本，格式如 ```[extra][1-∞]```。我们约定，```[extra]``` 可为 ```b``` (beta)或 ```r``` (release)。```[1-∞]``` 表示在 ```[extra]``` 下的修订次数。例：```[addition.ver]``` 为 ```r1```。

```[extra]``` 为 ```b``` 时，表示本模组在测试（不完善）阶段；为 ```r``` 时，表示本模组在发布（接近完善）阶段。

版本号例子：```v1.14.4-b8```、```v1.14.4-r1```

## 更新流程

正常情况下的更新流程如下：

若 [ParaTranz 项目](https://paratranz.cn/projects/5342/)的汉化已有一定程度的更新，则由管理员（目前也只有 [@Cccc_](https://paratranz.cn/users/23550/profile) 我了）于[项目下载处](https://paratranz.cn/projects/5342/artifact)下载压缩包，提取本地化文件并解压至 git 仓库内的 [cn_text](cn_text) 文件夹下，进行 ```commit```。

在此之后，修改任何需要修改的其他文件（如修改脚本、[更新字体贴图、增加额外文件](addition)等），完成后进行 ```commit```。

然后更新[版本号](mod_descriptor\ETCLP.mod)和[更新日志](CHANGELOG.md)，进行 ```commit``` 并 ```push``` 至[远程仓库（GitHub）](https://github.com/Cccc-owo/Extended-Timeline-Chinese-Localisation-Project/)。

完成以上操作之外，还要在 [Releases](https://github.com/Cccc-owo/Extended-Timeline-Chinese-Localisation-Project/releases/) 中发布[新 Release](https://github.com/Cccc-owo/Extended-Timeline-Chinese-Localisation-Project/releases/new)，```tag```应与版本号相同，其余的不需要动，直接 ```Publish Release``` 即可。

以及 Steam 创意工坊更新，则由 [@Cccc_](https://paratranz.cn/users/23550/profile) 我手动完成。目前还没有实现工坊自动发布。:(
