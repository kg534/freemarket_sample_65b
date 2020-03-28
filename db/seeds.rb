lady = Category.create(:name=>"レディース")
lady_tops = lady.children.create(:name=>"トップス")
lady_tops.children.create([{:name=>"すべて"},{:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"},{:name=>"シャツ/ブラウス(半袖/袖なし)"},
{:name=>"シャツ/ブラウス(七分/長袖)"},{:name=>"ポロシャツ"}])
lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
lady_jacket.children.create([{:name=>"すべて"},{:name=>"テーラードジャケット"},{:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},
{:name=>"レザージャケット"},{:name=>"ダウンジャケット"}])
lady_pants = lady.children.create(:name=>"パンツ")
lady_pants.children.create([{:name=>"すべて"},{:name=>"デニム/ジーンズ"},{:name=>"ショートパンツ"},{:name=>"カジュアルパンツ"},
{:name=>"ハーフパンツ"},{:name=>"チノパン"}])
lady_skirt = lady.children.create(:name=>"スカート")
lady_skirt.children.create([{:name=>"すべて"},{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングスカート"},
{:name=>"キュロット"},{:name=>"その他"}])

men = Category.create(:name=>"メンズ")
men_tops = men.children.create(:name=>"トップス")
men_tops.children.create([{:name=>"すべて"},{:name=>"Tシャツ/カットソー（半袖/袖なし）"},{:name=>"Tシャツ/カットソー（七分/長袖）"},{:name=>"シャツ"},
{:name=>"ポロシャツ"},{:name=>"タンクトップ"}])
men_jacket = men.children.create(:name=>"ジャケット/アウター")
men_jacket.children.create([{:name=>"すべて"},{:name=>"テーラードジャケット"},{:name=>"ノーカラージャケット"},{:name=>"Gジャン/デニムジャケット"},
{:name=>"レザージャケット"},{:name=>"ダウンジャケット"}])
men_pants = men.children.create(:name=>"パンツ")
men_pants.children.create([{:name=>"すべて"},{:name=>"デニム/ジーンズ"},{:name=>"ショートパンツ"},{:name=>"カジュアルパンツ"},
{:name=>"ハーフパンツ"},{:name=>"チノパン"}])
men_pants = men.children.create(:name=>"靴")
men_pants.children.create([{:name=>"すべて"},{:name=>"スニーカ"},{:name=>"サンダル"},{:name=>"ブーツ"},
{:name=>"モカシン"},{:name=>"ドレス/ビジネス"}])

kid = Category.create(:name=>"ベビー・キッズ")
kid_tops = kid.children.create(:name=>"ベビー服(女の子用) ~95cm")
kid_tops.children.create([{:name=>"すべて"},{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},
{:name=>"スカート"},{:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"}])
kid_tops = kid.children.create(:name=>"ベビー服(男の子用) ~95cm")
kid_tops.children.create([{:name=>"すべて"},{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},
{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])
kid_tops = kid.children.create(:name=>"ベビー服(男女兼用) ~95cm")
kid_tops.children.create([{:name=>"すべて"},{:name=>"トップス"},{:name=>"アウター"},{:name=>"パンツ"},
{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])

interior = Category.create(:name=>"インテリア・住まい・小物")
interior_kitchen = interior.children.create(:name=>"キッチン/食器")
interior_kitchen.children.create([{:name=>"すべて"},{:name=>"食器"},{:name=>"調理器具"},{:name=>"収納/キッチン雑貨"},
{:name=>"弁当用品"},{:name=>"カトラリー(スプーン等)"},{:name=>"テーブル用品"},{:name=>"容器"}])
interior_bed = interior.children.create(:name=>"ベッド/マットレス")
interior_bed.children.create([{:name=>"すべて"},{:name=>"セミシングルベッド"},{:name=>"シングルベッド"},{:name=>"セミダブルベッド"},
{:name=>"ダブルベッド"},{:name=>"ワイドダブルベッド"},{:name=>"クイーンベッド"},{:name=>"キングベッド"}])
interior_sofa = interior.children.create(:name=>"ソファ/ソファベッド")
interior_sofa.children.create([{:name=>"すべて"},{:name=>"ソファセット"},{:name=>"シングルソファ"},{:name=>"ラブソファ"},
{:name=>"トリプルソファ"},{:name=>"オットマン"},{:name=>"コーナーソファ"},{:name=>"ビーズソファ/クッションソファ"}])

book = Category.create(:name=>"本・音楽・ゲーム")
book_book = book.children.create(:name=>"本")
book_book.children.create([{:name=>"すべて"},{:name=>"文学/小説"},{:name=>"人文/社会"},{:name=>"ノンフィクション/教養"},
{:name=>"地図/旅行ガイド"},{:name=>"ビジネス/経済"},{:name=>"健康/医学"},{:name=>"コンピュータ/IT"}])
book_comic = book.children.create(:name=>"漫画")
book_comic.children.create([{:name=>"すべて"},{:name=>"全巻セット"},{:name=>"少年漫画"},{:name=>"少女漫画"},
{:name=>"青年漫画"},{:name=>"女性漫画"},{:name=>"同人誌"},{:name=>"その他"}])
book_magazine = book.children.create(:name=>"雑誌")
book_magazine.children.create([{:name=>"すべて"},{:name=>"文学/小説"},{:name=>"人文/社会"},{:name=>"ノンフィクション/教養"},
{:name=>"地図/旅行ガイド"},{:name=>"ビジネス/経済"},{:name=>"健康/医学"},{:name=>"コンピュータ/IT"}])

