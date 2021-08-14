# ローカルにFirestoreをインストール

### WSLにJDKをインストール

```
sudo apt install default-jdk-headless -y
```

```
npm install -g firebase-tools
npx firebase init
```

```
firebase serve --only firestore
```

#### エミュレータを起動する

```
npx firebase emulators:start
```

┌───────────┬────────────────┬─────────────────────────────────┐
│ Emulator  │ Host:Port      │ View in Emulator UI             │
├───────────┼────────────────┼─────────────────────────────────┤
│ Firestore │ 127.0.0.1:8888 │ http://127.0.0.1:4001/firestore │
└───────────┴────────────────┴─────────────────────────────────┘

#### 指定のポート番号でエミュレータを起動

* PowerShellで管理者権限で実行する

https://qiita.com/castaneai/items/c7d68cbee1a6e3655247

```
gcloud beta emulators firestore start --host-port=localhost:8812
```

```
すると、FIRESTORE_EMULATOR_HOST=localhost:8812 をGoリポジトリのDockerfileの環境にセットする
```