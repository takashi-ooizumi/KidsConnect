# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Area.create(
  [
    {
      address: '福島市', 
      address_code: '960-0000'
    },
    {
      address: '伊達市', 
      address_code: '960-0400'
    },
    {
      address: '本宮市', 
      address_code: '969-1100'
    },
    {
      address: '郡山市', 
      address_code: '963-0000'
    },
  ]
)

PlayingType.create(
  [
    {
      name: 'その他'
    },
    {
      name: '室内'
    },
    {
      name: '室外'
    },
    {
      name: '飲食'
    },
    {
      name: '体験'
    }
  ]
)

FavoriteCharacter.create(
  [
    {
      name: 'ディズニー',
      infomation: '世界的キャラクターです。'
    },
    {
      name: 'ポケモン',
      infomation: '日本発の人気キャラクターです。'
    },
    {
      name: '戦隊シリーズ',
      infomation: '５色の変身ヒーロ達が戦います。'
    },
    {
      name: '仮面ライダーシリーズ',
      infomation: '変身して怪人と戦います。'
    },
    {
      name: 'プリキュアシリーズ',
      infomation: '女の子が変身して戦います。'
    },
    {
      name: 'ドラえもん',
      infomation: '秘密道具でなんでも叶えてくれます。'
    },
    {
      name: 'ガンダムシリーズ',
      infomation: 'ロボットが戦います'
    },
    {
      name: 'マインクラフト',
      infomation: '自分だけの世界を作ります。'
    },
    {
      name: 'スーパーマリオ',
      infomation: 'マリオ、ルイージがピーチ姫を助けます。'
    },
    {
      name: 'シルバニアファミリー',
      infomation: 'かわいい動物の家族です。'
    }
  ]
)

User.create(
  avatar_name: 'admin',
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  role: :admin
)

