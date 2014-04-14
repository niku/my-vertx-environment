vertx-environment-sample
========================

これは何ですか？(What is this?)
-------------------------------

Vert.xを動かせる環境をChef-soloで構築したものです．
Vagrantに対応しており，設定不要ですぐに試せます．

必要なものは何ですか？(What is required?)
-----------------------------------------

- Ruby (1.9 or later)
  - To use bundler
- Opscode Community User account
  - To use berkshelf
- VirtualBox
- Vagrant
- Box of vagrant (I have used box that built by [my-packer-and-vagrant-example](https://github.com/niku/my-packer-and-vagrant-example))

どうやって使いますか？(How to use it?)
--------------------------------------

```
gem install bundler
git clone https://github.com/niku/vertx-environment-sample.git
cd vertx-environment-sample
bundle install
bundle exec berks vendor vendor/cookbooks
vagrant up --provision
```

サーバーが起動するまで数秒(最初のアクセスのときは数分)待ってからアクセスします

Waiting several seconds(several minutes at first access) for launching server, and then access

```
curl http://localhost:18080/
```

こんな感じのレスポンスが取得できるはずです

you will get response following like

```
<html>
<body>
Hello world!
</body>
</html>
```
