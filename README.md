# jenkins-test

[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/koiusa/jenkins-test)](https://github.com/koiusa/jenkins-test/graphs/commit-activity)
[![GitHub issues](https://img.shields.io/github/issues/koiusa/jenkins-test)](https://github.com/koiusa/jenkins-test/issues)
[![GitHub license](https://img.shields.io/github/license/koiusa/jenkins-test)](https://github.com/koiusa/jenkins-test/blob/main/LICENSE)


## docker-compose up

```
cd path/to/jenkins-test/jenkins
```

```
./compose.sh
```

### 環境変数を設定

PipeLlneのDeploy処理でDiscordへ通知をしているので、環境変数を設定する

```
discordSend(description: 'Jenkins Pipeline Build', footer: 'Footer Text', webhookURL: WEBHOOK)
```

ダッシュボード>Jenkinsの管理>システムの設定

![jenkinsENV](https://user-images.githubusercontent.com/71818379/217328882-5823e086-9c8b-421b-8f46-d1bfa80ea348.jpg)
