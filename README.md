# KidsConnect
育児仲間作りSNS　キッズコネクト

■ サービス概要
子育てで孤立しがちな人や、子供と遊ぶのが苦手な人に
育児仲間を作る機会を提供する
マッチングサービスです。

公共の育児支援サービスはサービス側に利用者が合わせる形で、
利用者個人の細かい都合にサービス側が合わせることはできません。
本サービス利用者は利用者同士の状況（休日や時間帯等、地域）
や子供の属性（外で体を動かすのが好き、室内でおもちゃで遊ぶのが好き。等）
からより最適にマッチする育児に協力してくれる仲間を探すことができます。
※初期は自分の地元範囲での運用を想定。

■メインのターゲットユーザー
子育て世代、未就学児の子育て中の人

保護者であるユーザーおよびユーザーの子供情報はハンドルネームでの運用となります。
子供の属性は性格面（どちらかといえば内向的、または外交的等）
好きなキャラクターやYoutubeチャンネル、遊び方等の趣味嗜好に関するもので、
個人を特定できるような情報（名前や顔写真等）は登録しません。
また子供情報は会員である保護者が公開範囲を非会員、会員のみ、グループ内（フォロワーのようなもの）
＋本人確認登録済みユーザー　など選択することができます。

■ユーザーが抱える課題
子供と１対１で遊ぶのが苦手な人、住んでる地域に親族や知り合いがいない人
男の子の遊びが苦手なママ（戦いごっこ等）
女の子との遊びが苦手なパパ（お人形遊び、ままごと等）
平日の休みなど既存の子育て世代の友人と時間が合わない保護者
※SNSのため、基本的には保護者の監視の元個人の責任で利用していただくことになります。

■解決方法
年齢や地域、性別、子供の性格、習い事、趣味、時間等、
子供の属性でマッチした育児仲間を作ることで、
子供同士を遊ばせることで育児のストレスを低減することが期待できる。

■実装予定の機能
「非会員の機能」
　会員登録
　　子供情報の登録
　　本人確認登録（免許証や保険証などの本人確認画像）
　会員情報の閲覧
　　許可している会員の子ども情報の閲覧
　子供の遊び場情報の閲覧
　イベント情報の閲覧

「会員の機能」
　会員登録削除
　会員情報の閲覧
　会員情報の編集
　子供情報の登録
　子供情報の編集
　子供情報の削除
　本人確認情報の登録
　本人確認情報の閲覧
　本人確認情報の編集
　本人確認情報の削除
　会員へのメッセージの作成
　会員からのメッセージの閲覧
　会員へのメッセージの編集
　会員へのメッセージの削除
　子供の遊び場情報の登録申請
　子供の遊び場情報の
　子供の遊び場情報の登録
　子供の遊び場情報の閲覧
　子供の遊び場情報の編集
　子供の遊び場情報の削除
　イベント情報の登録
　イベント情報の閲覧
　イベント情報の編集
　イベント除法の削除
　会員グループの登録
　会員グループの閲覧
　会員グループの編集
　会員グループの削除
　管理者への意見要望情報の登録
  ユーザーのブロックリストの閲覧
  ユーザーのブロックリストの作成
  ユーザーのブロックリストの削除

「管理者の機能」
　管理者への意見要望情報の登録
　管理者への意見要望情報の更新（回答）

　全機能へのアクセス権
　アプリの利用者状況など統計情報の閲覧
　会員のログイン数、イベント閲覧数、参加数等の
　アプリ内の利用情報
　
　※サービスの改善、機能追加等の参考情報として利用する予定
　

定期バッチ
アプリの利用情報の集計

■なぜこのサービスを作りたいのか？
一人っ子のため、いつもパパママと遊んで欲しがり駄々をこねたり付き纏われてしまう。
同じ年代の子供がいる友人や親族といると子供同士で遊んでくれるため、その間は大人同士の会話もできるため、
子育ての負担が軽くなる。
子供同士で遊ぶことで積極性や社会性を身につけて成長しているように感じる。
少し上のお兄ちゃんやお姉ちゃんがいると一緒に遊びならがら面倒を見てもらえたりする。
そのような育児体験から、共働きで一人っ子、両親が遠方など子育てが閉じた世界になりがちな未就学児の育児で、
地域のコミュニティ全体で子育てをしていく昔のやり方の良いところを提案していきたい。
特に未就学児など学校に通う前の子供の子育て世代を支援したい。
学校に通うようになると自分で世界を広げていくので、
親の手助けが必要な未就学児の育児を支援できるのでは？と考えた。

■スケジュール
企画〜技術調査：1/23〆切
　README〜ER図作成：1/27 〆切
　メイン機能実装：1/28 - 2/20
　β版をRUNTEQ内リリース（MVP）：2/21〆切
　本番リリース：2月末

■URL
 /top [top画面の表示]
 /login [ログイン]
 /logout [ログアウト]
 /users [会員情報一覧表示]
 /users/new [新規会員登録画面表示]
 /users/create [新規会員登録]
 /users{user_id} [会員情報画面表示]
 /users{user_id}/edit [会員情報編集画面表示]
 /users{user_id}/update [会員情報更新]
 /users{user_id}/delete [会員情報削除]
 /users{user_id}/childs [子供情報一覧表示]
 /users{user_id}/childs/new [子供情報の新規登録画面表示]
 /users{user_id}/childs/create [子供情報の新規登録]
 /users{user_id}/childs/{child_id} [子供情報画面の表示]
 /users{user_id}/childs/{child_id}/edit [子供情報編集画面の表示]
 /users{user_id}/childs/{child_id}/update [子供情報の更新]
 /users{user_id}/childs/{child_id}/delete [子供情報の削除]
 /users/{user_id}/identification [本人確認情報表示]
 /users/{user_id}/identification/create [本人確認情報登録]
 /users/{user_id}/identification/edit [本人確認情報編集]
 /users/{user_id}/identification/delete [本人確認情報削除]
 /users/user_id}/messages [メッセージの一覧表示]
 /users/{user_id}/message/{user_id} [メッセージの画面の表示]　※チャット画面
 users/{user_id}/messages/create [メッセージの作成]
 users/{user_id}/messages/edit [メッセージの編集]
 users/{user_id}/messages/delete [メッセージの削除]

/playgrounds [遊び場情報の表示]
/playgrounds/{playground_id} [遊び場情報の詳細表示]
/playgrounds/{playground_id}/new [遊び場情報の新規作成画面表示]
/playgrounds/{playground_id}/create [遊び場情報の作成]
/playgrounds/{playground_id}/edit [遊び場情報の編集画面表示]
/playgrounds/{playground_id}/update [遊び場情報の更新]
/playgrounds/{playground_id}/delete [遊び場情報の削除]

/users/{user_id}/groups [ユーザーグループ一覧の表示] 
/users/{user_id}/groups/create [ユーザーグループへの追加]
/users/{user_id}/groups/delete [ユーザーグループからの削除]
/users/{user_id}/blocklist [ブロック一覧表示]
/users/{user_id}/blocklist/new [ブロックリスト追加]
/users/{user_id}/blocklist/delete [ブロックリスト削除]

■画面遷移図
https://www.figma.com/file/ZLbF0iTnPz15WBt2Vs9SOw/Untitled?node-id=0%3A1&t=6HczNTCmNKHmjXgf-1



