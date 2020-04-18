lady = Category.create(:name=>"レディース")
lady_tops = lady.children.create(:name=>"トップス")
lady_tops.children.create([
{:name=>"Tシャツ/カットソー(半袖/袖なし) "},
{:name=>"Tシャツ/カットソー(七分/長袖) "},
{:name=>"シャツ/ブラウス(半袖/袖なし) "},
{:name=>"シャツ/ブラウス(七分/長袖) "},
{:name=>"ポロシャツ "},
{:name=>"キャミソール "},
{:name=>"タンクトップ "},
{:name=>"ホルターネック "},
{:name=>"ニット/セーター "},
{:name=>"チュニック "},
{:name=>"カーディガン/ボレロ "},
{:name=>"アンサンブル "},
{:name=>"ベスト/ジレ "},
{:name=>"パーカー "},
{:name=>"トレーナー/スウェット "},
{:name=>"ベアトップ/チューブトップ "},
{:name=>"ジャージ "},
{:name=>"その他 "}])
lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
lady_jacket.children.create([
{:name=>"テーラードジャケット "},
{:name=>"ノーカラージャケット "},
{:name=>"Gジャン/デニムジャケット "},
{:name=>"レザージャケット "},
{:name=>"ダウンジャケット "},
{:name=>"ライダースジャケット "},
{:name=>"ミリタリージャケット "},
{:name=>"ダウンベスト "},
{:name=>"ジャンパー/ブルゾン "},
{:name=>"ポンチョ "},
{:name=>"ロングコート "},
{:name=>"トレンチコート "},
{:name=>"ダッフルコート "},
{:name=>"ピーコート "},
{:name=>"チェスターコート "},
{:name=>"モッズコート "},
{:name=>"スタジャン "},
{:name=>"毛皮/ファーコート "},
{:name=>"スプリングコート "},
{:name=>"スカジャン "},
{:name=>"その他"}])
lady_pants = lady.children.create(:name=>"パンツ")
lady_pants.children.create([
{:name=>"デニム/ジーンズ "},
{:name=>"ショートパンツ "},
{:name=>"カジュアルパンツ "},
{:name=>"ハーフパンツ "},
{:name=>"チノパン "},
{:name=>"ワークパンツ/カーゴパンツ "},
{:name=>"クロップドパンツ "},
{:name=>"サロペット/オーバーオール "},
{:name=>"オールインワン "},
{:name=>"サルエルパンツ "},
{:name=>"ガウチョパンツ "},
{:name=>"その他 "}])
lady_skirt = lady.children.create(:name=>"スカート")
lady_skirt.children.create([
{:name=>"スカート"},
{:name=>"ミニスカート "},
{:name=>"ひざ丈スカート "},
{:name=>"ロングスカート "},
{:name=>"キュロット "},
{:name=>"その他 "}])
lady_onepiece = lady.children.create(:name=>"ワンピース")
lady_onepiece.children.create([
{:name=>"ミニワンピース "},
{:name=>"ひざ丈ワンピース "},
{:name=>"ロングワンピース "},
{:name=>"その他 "}])
lady_shoes = lady.children.create(:name=>"靴")
lady_shoes.children.create([
{:name=>"ハイヒール/パンプス "},
{:name=>"ブーツ "},
{:name=>"サンダル "},
{:name=>"スニーカー "},
{:name=>"ミュール "},
{:name=>"モカシン "},
{:name=>"ローファー/革靴 "},
{:name=>"フラットシューズ/バレエシューズ "},
{:name=>"長靴/レインシューズ"},
{:name=>"その他 "}])
lady_roomwear = lady.children.create(:name=>"ルームウェア/パジャマ")
lady_roomwear.children.create([
{:name=>"パジャマ "},
{:name=>"ルームウェア"},
{:name=>"その他 "}])
lady_legwear = lady.children.create(:name=>"レッグウェア")
lady_roomwear.children.create([
{:name=>"ソックス "},
{:name=>"スパッツ/レギンス "},
{:name=>"ストッキング/タイツ "},
{:name=>"レッグウォーマー "},
{:name=>"その他 "}])
lady_hat = lady.children.create(:name=>"帽子")
lady_hat.children.create([
{:name=>"ニットキャップ/ビーニー "},
{:name=>"ハット "},
{:name=>"ハンチング/ベレー帽 "},
{:name=>"キャップ "},
{:name=>"キャスケット "},
{:name=>"麦わら帽子 "},
{:name=>"その他 "}])
lady_bag = lady.children.create(:name=>"バッグ")
lady_bag.children.create([
{:name=>"ハンドバッグ "},
{:name=>"トートバッグ "},
{:name=>"エコバッグ "},
{:name=>"リュック/バックパック "},
{:name=>"ボストンバッグ "},
{:name=>"スポーツバッグ "},
{:name=>"ショルダーバッグ "},
{:name=>"クラッチバッグ "},
{:name=>"ポーチ/バニティ "},
{:name=>"ボディバッグ/ウェストバッグ "},
{:name=>"マザーズバッグ "},
{:name=>"メッセンジャーバッグ "},
{:name=>"ビジネスバッグ "},
{:name=>"旅行用バッグ/キャリーバッグ "},
{:name=>"ショップ袋 "},
{:name=>"和装用バッグ "},
{:name=>"かごバッグ "},
{:name=>"その他 "}])
lady_accessories = lady.children.create(:name=>"アクセサリー")
lady_accessories.children.create([
{:name=>"ネックレス "},
{:name=>"ブレスレット "},
{:name=>"バングル/リストバンド "},
{:name=>"リング "},
{:name=>"ピアス(片耳用) "},
{:name=>"ピアス(両耳用) "},
{:name=>"イヤリング "},
{:name=>"アンクレット "},
{:name=>"ブローチ/コサージュ "},
{:name=>"チャーム "},
{:name=>"その他 "}])
lady_hairaccessories = lady.children.create(:name=>"ヘアアクセサリー")
lady_hairaccessories.children.create([
{:name=>"ヘアゴム/シュシュ "},
{:name=>"ヘアバンド/カチューシャ "},
{:name=>"ヘアピン "},
{:name=>"その他 "}])
lady_smallarticle = lady.children.create(:name=>"小物")
lady_smallarticle.children.create([
{:name=>"長財布 "},
{:name=>"折り財布 "},
{:name=>"コインケース/小銭入れ "},
{:name=>"名刺入れ/定期入れ "},
{:name=>"キーケース "},
{:name=>"キーホルダー "},
{:name=>"手袋/アームカバー "},
{:name=>"ハンカチ "},
{:name=>"ベルト "},
{:name=>"マフラー/ショール "},
{:name=>"ストール/スヌード "},
{:name=>"バンダナ/スカーフ "},
{:name=>"ネックウォーマー "},
{:name=>"サスペンダー "},
{:name=>"サングラス/メガネ "},
{:name=>"モバイルケース/カバー "},
{:name=>"手帳 "},
{:name=>"イヤマフラー "},
{:name=>"傘 "},
{:name=>"レインコート/ポンチョ "},
{:name=>"ミラー "},
{:name=>"タバコグッズ "},
{:name=>"その他 "}])
lady_clock = lady.children.create(:name=>"時計")
lady_clock.children.create([
{:name=>"腕時計(アナログ) "},
{:name=>"腕時計(デジタル) "},
{:name=>"ラバーベルト "},
{:name=>"レザーベルト "},
{:name=>"金属ベルト "},
{:name=>"その他 "}])
men = Category.create(:name=>"メンズﾞ")
men_tops = men.children.create(:name=>"トップス")
men_tops.children.create([
{:name=>"Tシャツ/カットソー(半袖/袖なし) "},
{:name=>"Tシャツ/カットソー(七分/長袖) "},
{:name=>"シャツ "},
{:name=>"ポロシャツ "},
{:name=>"タンクトップ "},
{:name=>"ニット/セーター "},
{:name=>"パーカー "},
{:name=>"カーディガン "},
{:name=>"スウェット "},
{:name=>"ジャージ "},
{:name=>"ベスト "},
{:name=>"その他 "}])
men_jacket = men.children.create(:name=>"ジャケット/アウター")
men_jacket.children.create([
{:name=>"テーラードジャケット "},
{:name=>"ノーカラージャケット "},
{:name=>"Gジャン/デニムジャケット "},
{:name=>"レザージャケット "},
{:name=>"ダウンジャケット "},
{:name=>"ライダースジャケット "},
{:name=>"ミリタリージャケット "},
{:name=>"ナイロンジャケット "},
{:name=>"フライトジャケット "},
{:name=>"ダッフルコート "},
{:name=>"ピーコート "},
{:name=>"ステンカラーコート "},
{:name=>"トレンチコート "},
{:name=>"モッズコート "},
{:name=>"チェスターコート "},
{:name=>"スタジャン "},
{:name=>"スカジャン "},
{:name=>"ブルゾン "},
{:name=>"マウンテンパーカー "},
{:name=>"ダウンベスト "},
{:name=>"ポンチョ "},
{:name=>"カバーオール "},
{:name=>"その他 "}])
men_pants = men.children.create(:name=>"パンツ")
men_pants.children.create([
{:name=>"デニム/ジーンズ "},
{:name=>"ワークパンツ/カーゴパンツ "},
{:name=>"スラックス "},
{:name=>"チノパン "},
{:name=>"ショートパンツ "},
{:name=>"ペインターパンツ "},
{:name=>"サルエルパンツ "},
{:name=>"オーバーオール "},
{:name=>"その他 "}])
men_shoes = men.children.create(:name=>"靴")
men_shoes.children.create([
{:name=>"スニーカー "},
{:name=>"サンダル "},
{:name=>"ブーツ "},
{:name=>"モカシン "},
{:name=>"ドレス/ビジネス "},
{:name=>"長靴/レインシューズ "},
{:name=>"デッキシューズ "},
{:name=>"その他 "}])
men_bag = men.children.create(:name=>"バッグ")
men_bag.children.create([
{:name=>"ショルダーバッグ "},
{:name=>"トートバッグ "},
{:name=>"ボストンバッグ "},
{:name=>"リュック/バックパック "},
{:name=>"ウエストポーチ "},
{:name=>"ボディーバッグ "},
{:name=>"ドラムバッグ "},
{:name=>"ビジネスバッグ "},
{:name=>"トラベルバッグ "},
{:name=>"メッセンジャーバッグ "},
{:name=>"エコバッグ "},
{:name=>"その他 "}])
men_suit = men.children.create(:name=>"スーツ")
men_suit.children.create([
{:name=>"スーツジャケット "},
{:name=>"スーツベスト "},
{:name=>"スラックス "},
{:name=>"セットアップ "},
{:name=>"その他 "}])
men_hat = men.children.create(:name=>"帽子")
men_hat.children.create([
{:name=>"キャップ "},
{:name=>"ハット "},
{:name=>"ニットキャップ/ビーニー "},
{:name=>"ハンチング/ベレー帽 "},
{:name=>"キャスケット "},
{:name=>"サンバイザー "},
{:name=>"その他 "},
{:name=>"アクセサリー"},
{:name=>"すべて "},
{:name=>"ネックレス "},
{:name=>"ブレスレット "},
{:name=>"バングル/リストバンド "},
{:name=>"リング "},
{:name=>"ピアス(片耳用) "},
{:name=>"ピアス(両耳用) "},
{:name=>"アンクレット "},
{:name=>"その他 "}])
men_smallarticle = men.children.create(:name=>"小物")
men_smallarticle.children.create([
{:name=>"長財布 "},
{:name=>"折り財布 "},
{:name=>"マネークリップ "},
{:name=>"コインケース/小銭入れ "},
{:name=>"名刺入れ/定期入れ "},
{:name=>"キーケース "},
{:name=>"キーホルダー "},
{:name=>"ネクタイ "},
{:name=>"手袋 "},
{:name=>"ハンカチ "},
{:name=>"ベルト "},
{:name=>"マフラー "},
{:name=>"ストール "},
{:name=>"バンダナ "},
{:name=>"ネックウォーマー "},
{:name=>"サスペンダー "},
{:name=>"ウォレットチェーン "},
{:name=>"その他 "}])
men_clock = men.children.create(:name=>"時計")
men_clock.children.create([
{:name=>"腕時計(アナログ) "},
{:name=>"腕時計(デジタル) "},
{:name=>"ラバーベルト "},
{:name=>"レザーベルト "},
{:name=>"金属ベルト "},
{:name=>"その他 "},
{:name=>"その他 "}])
men_swimwear = men.children.create(:name=>"水着")
men_swimwear.children.create([
{:name=>"一般水着 "},
{:name=>"スポーツ用 "},
{:name=>"アクセサリー "},
{:name=>"その他 "}])
men_legwear = men.children.create(:name=>"レッグウェア")
men_legwear.children.create([
{:name=>"ソックス "},
{:name=>"レギンス/スパッツ "},
{:name=>"レッグウォーマー "},
{:name=>"その他 "}])
men_underwear = men.children.create(:name=>"アンダーウェア")
men_underwear.children.create([
{:name=>"トランクス "},
{:name=>"ボクサーパンツ "},
{:name=>"その他"},
{:name=>"レッグウォーマー "},
{:name=>"その他 "}])
kids = Category.create(:name=>"ベビー・キッズﾞ")
baby_girls = kids.children.create(:name=>"ベビー服(女の子用) 〜95cm")
baby_girls.children.create([
{:name=>"トップス "},
{:name=>"アウター "},
{:name=>"パンツ "},
{:name=>"スカート "},
{:name=>"ワンピース "},
{:name=>"ベビードレス "},
{:name=>"おくるみ "},
{:name=>"下着/肌着 "},
{:name=>"パジャマ "},
{:name=>"ロンパース "},
{:name=>"その他 "}])
baby_boys = kids.children.create(:name=>"ベビー服(男の子用)〜95cm")
baby_boys.children.create([
{:name=>"トップス "},
{:name=>"アウター "},
{:name=>"パンツ "},
{:name=>"おくるみ "},
{:name=>"下着/肌着 "},
{:name=>"パジャマ "},
{:name=>"ロンパース "},
{:name=>"その他 "}])
baby_boys = kids.children.create(:name=>"ベビー服(男女兼用)〜95cm")
baby_boys.children.create([
{:name=>"トップス "},
{:name=>"アウター "},
{:name=>"パンツ "},
{:name=>"おくるみ "},
{:name=>"下着/肌着 "},
{:name=>"パジャマ "},
{:name=>"ロンパース "},
{:name=>"その他 "}])
kids_girls = kids.children.create(:name=>"キッズ服(女の子用) 100cm〜")
kids_girls.children.create([
{:name=>"コート "},
{:name=>"ジャケット/上着 "},
{:name=>"トップス(Tシャツ/カットソー) "},
{:name=>"トップス(トレーナー) "},
{:name=>"トップス(チュニック) "},
{:name=>"トップス(タンクトップ) "},
{:name=>"トップス(その他) "},
{:name=>"スカート "},
{:name=>"パンツ "},
{:name=>"ワンピース "},
{:name=>"セットアップ "},
{:name=>"パジャマ "},
{:name=>"フォーマル/ドレス "},
{:name=>"和服 "},
{:name=>"浴衣 "},
{:name=>"甚平 "},
{:name=>"水着 "},
{:name=>"その他 "}])
kids_boys = kids.children.create(:name=>"キッズ服(男の子用) 100cm〜")
kids_boys.children.create([
{:name=>"コート "},
{:name=>"ジャケット/上着 "},
{:name=>"トップス(Tシャツ/カットソー) "},
{:name=>"トップス(トレーナー) "},
{:name=>"トップス(その他) "},
{:name=>"パンツ "},
{:name=>"セットアップ "},
{:name=>"パジャマ "},
{:name=>"フォーマル/ドレス "},
{:name=>"和服 "},
{:name=>"浴衣 "},
{:name=>"甚平 "},
{:name=>"水着 "},
{:name=>"その他 "}])
kids_unisex = kids.children.create(:name=>"キッズ服(男女兼用) 100cm〜")
kids_unisex.children.create([
{:name=>"コート "},
{:name=>"ジャケット/上着 "},
{:name=>"トップス(Tシャツ/カットソー) "},
{:name=>"トップス(トレーナー) "},
{:name=>"トップス(その他) "},
{:name=>"ボトムス "},
{:name=>"パジャマ "},
{:name=>"その他 "}])
kids_shoes = kids.children.create(:name=>"キッズ靴")
kids_shoes.children.create([
{:name=>"スニーカー "},
{:name=>"サンダル "},
{:name=>"ブーツ "},
{:name=>"長靴 "},
{:name=>"その他 "}])
kids_accessories = kids.children.create(:name=>"子ども用ファッション小物")
kids_accessories.children.create([
{:name=>"靴下/スパッツ "},
{:name=>"帽子 "},
{:name=>"エプロン "},
{:name=>"サスペンダー "},
{:name=>"タイツ "},
{:name=>"ハンカチ "},
{:name=>"バンダナ "},
{:name=>"ベルト "},
{:name=>"マフラー "},
{:name=>"傘 "},
{:name=>"手袋 "},
{:name=>"スタイ "},
{:name=>"バッグ "},
{:name=>"その他 "}])
diapers = kids.children.create(:name=>"おむつ/トイレ/バス小物")
diapers.children.create([
{:name=>"おむつ用品 "},
{:name=>"おまる/補助便座 "},
{:name=>"トレーニングパンツ "},
{:name=>"ベビーバス "},
{:name=>"お風呂用品 "},
{:name=>"その他 "}])
outing = kids.children.create(:name=>"外出/移動用品")
outing.children.create([
{:name=>"ベビーカー "},
{:name=>"抱っこひも/スリング "},
{:name=>"チャイルドシート "},
{:name=>"その他 "}])
interior = Category.create(:name=>"インテリア・住まい・小物ﾞ")
kitchen = interior.children.create(:name=>"キッチン/食器")
kitchen.children.create([
{:name=>"食器 "},
{:name=>"調理器具 "},
{:name=>"収納/キッチン雑貨 "},
{:name=>"弁当用品 "},
{:name=>"カトラリー(スプーン等) "},
{:name=>"テーブル用品 "},
{:name=>"容器 "},
{:name=>"エプロン "},
{:name=>"アルコールグッズ "},
{:name=>"浄水機 "},
{:name=>"その他 "}])
bed = interior.children.create(:name=>"ベッド/マットレス")
bed.children.create([
{:name=>"セミシングルベッド "},
{:name=>"シングルベッド "},
{:name=>"セミダブルベッド "},
{:name=>"ダブルベッド "},
{:name=>"ワイドダブルベッド "},
{:name=>"クイーンベッド "},
{:name=>"キングベッド "},
{:name=>"脚付きマットレスベッド "},
{:name=>"マットレス "},
{:name=>"すのこベッド "},
{:name=>"ロフトベッド/システムベッド "},
{:name=>"簡易ベッド/折りたたみベッド "},
{:name=>"収納付き "},
{:name=>"その他 "}])
sofa = interior.children.create(:name=>"ソファ/ソファベッド")
sofa.children.create([
{:name=>"ソファセット "},
{:name=>"シングルソファ "},
{:name=>"ラブソファ "},
{:name=>"トリプルソファ "},
{:name=>"オットマン "},
{:name=>"コーナーソファ "},
{:name=>"ビーズソファ/クッションソファ "},
{:name=>"ローソファ/フロアソファ "},
{:name=>"ソファベッド "},
{:name=>"応接セット "},
{:name=>"ソファカバー "},
{:name=>"リクライニングソファ "},
{:name=>"その他 "}])
chair = interior.children.create(:name=>"椅子/チェア")
chair.children.create([
{:name=>"スツール "},
{:name=>"ダイニングチェア "},
{:name=>"ハイバックチェア "},
{:name=>"ロッキングチェア "},
{:name=>"座椅子 "},
{:name=>"折り畳みイス "},
{:name=>"デスクチェア "},
{:name=>"その他 "}])
desk = interior.children.create(:name=>"机/テーブル")
desk.children.create([
{:name=>"こたつ "},
{:name=>"カウンターテーブル "},
{:name=>"サイドテーブル "},
{:name=>"センターテーブル "},
{:name=>"ダイニングテーブル "},
{:name=>"座卓/ちゃぶ台 "},
{:name=>"アウトドア用 "},
{:name=>"パソコン用 "},
{:name=>"事務机/学習机 "},
{:name=>"その他 "}])
furniture = interior.children.create(:name=>"収納家具")
furniture.children.create([
{:name=>"リビング収納 "},
{:name=>"キッチン収納 "},
{:name=>"玄関/屋外収納 "},
{:name=>"バス/トイレ収納 "},
{:name=>"本収納 "},
{:name=>"本/CD/DVD収納 "},
{:name=>"洋服タンス/押入れ収納 "},
{:name=>"電話台/ファックス台 "},
{:name=>"ドレッサー/鏡台 "},
{:name=>"棚/ラック "},
{:name=>"ケース/ボックス "},
{:name=>"その他 "}])
books = Category.create(:name=>"本・音楽・ゲームﾞ")
book = books.children.create(:name=>"本")
book.children.create([
{:name=>"文学/小説 "},
{:name=>"人文/社会 "},
{:name=>"ノンフィクション/教養 "},
{:name=>"地図/旅行ガイド "},
{:name=>"ビジネス/経済 "},
{:name=>"健康/医学 "},
{:name=>"コンピュータ/IT "},
{:name=>"趣味/スポーツ/実用 "},
{:name=>"住まい/暮らし/子育て "},
{:name=>"アート/エンタメ "},
{:name=>"洋書 "},
{:name=>"絵本 "},
{:name=>"参考書 "},
{:name=>"その他 "}])
cartoon = books.children.create(:name=>"漫画")
cartoon.children.create([
{:name=>"全巻セット "},
{:name=>"少年漫画 "},
{:name=>"少女漫画 "},
{:name=>"青年漫画 "},
{:name=>"女性漫画 "},
{:name=>"同人誌 "},
{:name=>"その他 "}])
magazine = books.children.create(:name=>"雑誌")
magazine.children.create([
{:name=>"アート/エンタメ/ホビー "},
{:name=>"ファッション "},
{:name=>"ニュース/総合 "},
{:name=>"趣味/スポーツ "},
{:name=>"その他 "}])
cd = books.children.create(:name=>"CD")
cd.children.create([
{:name=>"邦楽 "},
{:name=>"洋楽 "},
{:name=>"アニメ "},
{:name=>"クラシック "},
{:name=>"K-POP/アジア "},
{:name=>"キッズ/ファミリー "},
{:name=>"その他 "}])
dvd = books.children.create(:name=>"DVD/ブルーレイ")
dvd.children.create([
{:name=>"外国映画 "},
{:name=>"日本映画 "},
{:name=>"アニメ "},
{:name=>"TVドラマ "},
{:name=>"ミュージック "},
{:name=>"お笑い/バラエティ "},
{:name=>"スポーツ/フィットネス "},
{:name=>"キッズ/ファミリー "},
{:name=>"その他 "}])
record = books.children.create(:name=>"レコード")
record.children.create([
{:name=>"邦楽 "},
{:name=>"洋楽 "},
{:name=>"その他 "}])
game = books.children.create(:name=>"テレビゲーム")
game.children.create([
{:name=>"家庭用ゲーム本体 "},
{:name=>"家庭用ゲームソフト "},
{:name=>"携帯用ゲーム本体 "},
{:name=>"携帯用ゲームソフト "},
{:name=>"その他 "}])
