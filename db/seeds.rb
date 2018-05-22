# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#管理者1
Admin.create(:email => "kanri1@cp.com", :password => "111111")
#管理者1の情報一覧
Infomation.create(:admin_id => 1, :info_title => "メンテナンスの実施について", :info_body => "メンテナンスを実施します")
Infomation.create(:admin_id => 1, :info_title => "サービス開始について", :info_body => "本日より正式にサービスを開始します")
Infomation.create(:admin_id => 1, :info_title => "クローズドβテストについて", :info_body => "本日からクローズドβテストを実施します")

#テーマ1
Theme.create(:theme_name => "black", :text_color => "white", :background_color => "black")

#ユーザー１
User.create(:theme_id => 1, :user_name => "夏目漱石", :email => "1@cp.com", :password => "111111", :user_img_id => nil, :quit_flg => 0)
#ジャンル１
Genre.create(:genre_name => "近代文学")

##本1
Book.create(:user_id => 1,:genre_id => 1, :book_title => "吾輩は猫である", :cover_img => File.open("./app/assets/images/wagahai.jpg"), :status => 1, :book_delete_flg => 0 )
#本１のエピソード１
Episode.create(:book_id => 1, :epi_title => "吾輩は猫である。",
:epi_body => "　吾輩は猫である。名前はまだ無い。
　どこで生れたかとんと見当けんとうがつかぬ。何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪どうあくな種族であったそうだ。この書生というのは時々我々を捕つかまえて煮にて食うという話である。しかしその当時は何という考もなかったから別段恐しいとも思わなかった。ただ彼の掌てのひらに載せられてスーと持ち上げられた時何だかフワフワした感じがあったばかりである。掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始みはじめであろう。この時妙なものだと思った感じが今でも残っている。第一毛をもって装飾されべきはずの顔がつるつるしてまるで薬缶やかんだ。その後ご猫にもだいぶ逢あったがこんな片輪かたわには一度も出会でくわした事がない。のみならず顔の真中があまりに突起している。そうしてその穴の中から時々ぷうぷうと煙けむりを吹く。どうも咽むせぽくて実に弱った。これが人間の飲む煙草たばこというものである事はようやくこの頃知った。
　この書生の掌の裏うちでしばらくはよい心持に坐っておったが、しばらくすると非常な速力で運転し始めた。書生が動くのか自分だけが動くのか分らないが無暗むやみに眼が廻る。胸が悪くなる。到底とうてい助からないと思っていると、どさりと音がして眼から火が出た。それまでは記憶しているがあとは何の事やらいくら考え出そうとしても分らない。
　ふと気が付いて見ると書生はいない。たくさんおった兄弟が一疋ぴきも見えぬ。肝心かんじんの母親さえ姿を隠してしまった。その上今いままでの所とは違って無暗むやみに明るい。眼を明いていられぬくらいだ。はてな何でも容子ようすがおかしいと、のそのそ這はい出して見ると非常に痛い。吾輩は藁わらの上から急に笹原の中へ棄てられたのである。
　ようやくの思いで笹原を這い出すと向うに大きな池がある。吾輩は池の前に坐ってどうしたらよかろうと考えて見た。別にこれという分別ふんべつも出ない。しばらくして泣いたら書生がまた迎に来てくれるかと考え付いた。ニャー、ニャーと試みにやって見たが誰も来ない。そのうち池の上をさらさらと風が渡って日が暮れかかる。腹が非常に減って来た。泣きたくても声が出ない。仕方がない、何でもよいから食物くいもののある所まであるこうと決心をしてそろりそろりと池を左ひだりに廻り始めた。どうも非常に苦しい。そこを我慢して無理やりに這はって行くとようやくの事で何となく人間臭い所へ出た。ここへ這入はいったら、どうにかなると思って竹垣の崩くずれた穴から、とある邸内にもぐり込んだ。縁は不思議なもので、もしこの竹垣が破れていなかったなら、吾輩はついに路傍ろぼうに餓死がししたかも知れんのである。一樹の蔭とはよく云いったものだ。この垣根の穴は今日こんにちに至るまで吾輩が隣家となりの三毛を訪問する時の通路になっている。さて邸やしきへは忍び込んだもののこれから先どうして善いいか分らない。そのうちに暗くなる、腹は減る、寒さは寒し、雨が降って来るという始末でもう一刻の猶予ゆうよが出来なくなった。仕方がないからとにかく明るくて暖かそうな方へ方へとあるいて行く。今から考えるとその時はすでに家の内に這入っておったのだ。ここで吾輩は彼かの書生以外の人間を再び見るべき機会に遭遇そうぐうしたのである。第一に逢ったのがおさんである。これは前の書生より一層乱暴な方で吾輩を見るや否やいきなり頸筋くびすじをつかんで表へ抛ほうり出した。いやこれは駄目だと思ったから眼をねぶって運を天に任せていた。しかしひもじいのと寒いのにはどうしても我慢が出来ん。吾輩は再びおさんの隙すきを見て台所へ這はい上あがった。すると間もなくまた投げ出された。吾輩は投げ出されては這い上り、這い上っては投げ出され、何でも同じ事を四五遍繰り返したのを記憶している。その時におさんと云う者はつくづくいやになった。この間おさんの三馬さんまを偸ぬすんでこの返報をしてやってから、やっと胸の痞つかえが下りた。吾輩が最後につまみ出されようとしたときに、この家うちの主人が騒々しい何だといいながら出て来た。下女は吾輩をぶら下げて主人の方へ向けてこの宿やどなしの小猫がいくら出しても出しても御台所おだいどころへ上あがって来て困りますという。主人は鼻の下の黒い毛を撚ひねりながら吾輩の顔をしばらく眺ながめておったが、やがてそんなら内へ置いてやれといったまま奥へ這入はいってしまった。主人はあまり口を聞かぬ人と見えた。下女は口惜くやしそうに吾輩を台所へ抛ほうり出した。かくして吾輩はついにこの家うちを自分の住家すみかと極きめる事にしたのである。")
Episode.create(:book_id => 1, :epi_title => "吾輩の主人は",
 :epi_body => "吾輩の主人は滅多めったに吾輩と顔を合せる事がない。職業は教師だそうだ。学校から帰ると終日書斎に這入ったぎりほとんど出て来る事がない。家のものは大変な勉強家だと思っている。当人も勉強家であるかのごとく見せている。しかし実際はうちのものがいうような勤勉家ではない。吾輩は時々忍び足に彼の書斎を覗のぞいて見るが、彼はよく昼寝ひるねをしている事がある。時々読みかけてある本の上に涎よだれをたらしている。彼は胃弱で皮膚の色が淡黄色たんこうしょくを帯びて弾力のない不活溌ふかっぱつな徴候をあらわしている。その癖に大飯を食う。大飯を食った後あとでタカジヤスターゼを飲む。飲んだ後で書物をひろげる。二三ページ読むと眠くなる。涎を本の上へ垂らす。これが彼の毎夜繰り返す日課である。吾輩は猫ながら時々考える事がある。教師というものは実に楽らくなものだ。人間と生れたら教師となるに限る。こんなに寝ていて勤まるものなら猫にでも出来ぬ事はないと。それでも主人に云わせると教師ほどつらいものはないそうで彼は友達が来る度たびに何とかかんとか不平を鳴らしている。
　吾輩がこの家へ住み込んだ当時は、主人以外のものにははなはだ不人望であった。どこへ行っても跳はね付けられて相手にしてくれ手がなかった。いかに珍重されなかったかは、今日こんにちに至るまで名前さえつけてくれないのでも分る。吾輩は仕方がないから、出来得る限り吾輩を入れてくれた主人の傍そばにいる事をつとめた。朝主人が新聞を読むときは必ず彼の膝ひざの上に乗る。彼が昼寝をするときは必ずその背中せなかに乗る。これはあながち主人が好きという訳ではないが別に構い手がなかったからやむを得んのである。その後いろいろ経験の上、朝は飯櫃めしびつの上、夜は炬燵こたつの上、天気のよい昼は椽側えんがわへ寝る事とした。しかし一番心持の好いのは夜よに入いってここのうちの小供の寝床へもぐり込んでいっしょにねる事である。この小供というのは五つと三つで夜になると二人が一つ床へ入はいって一間ひとまへ寝る。吾輩はいつでも彼等の中間に己おのれを容いるべき余地を見出みいだしてどうにか、こうにか割り込むのであるが、運悪く小供の一人が眼を醒さますが最後大変な事になる。小供は――ことに小さい方が質たちがわるい――猫が来た猫が来たといって夜中でも何でも大きな声で泣き出すのである。すると例の神経胃弱性の主人は必かならず眼をさまして次の部屋から飛び出してくる。現にせんだってなどは物指ものさしで尻ぺたをひどく叩たたかれた。
　吾輩は人間と同居して彼等を観察すればするほど、彼等は我儘わがままなものだと断言せざるを得ないようになった。ことに吾輩が時々同衾どうきんする小供のごときに至っては言語同断ごんごどうだんである。自分の勝手な時は人を逆さにしたり、頭へ袋をかぶせたり、抛ほうり出したり、へっついの中へ押し込んだりする。しかも吾輩の方で少しでも手出しをしようものなら家内かない総がかりで追い廻して迫害を加える。この間もちょっと畳で爪を磨といだら細君が非常に怒おこってそれから容易に座敷へ入いれない。台所の板の間で他ひとが顫ふるえていても一向いっこう平気なものである。吾輩の尊敬する筋向すじむこうの白君などは逢あう度毎たびごとに人間ほど不人情なものはないと言っておらるる。白君は先日玉のような子猫を四疋産うまれたのである。ところがそこの家うちの書生が三日目にそいつを裏の池へ持って行って四疋ながら棄てて来たそうだ。白君は涙を流してその一部始終を話した上、どうしても我等猫族ねこぞくが親子の愛を完まったくして美しい家族的生活をするには人間と戦ってこれを剿滅そうめつせねばならぬといわれた。一々もっともの議論と思う。また隣りの三毛みけ君などは人間が所有権という事を解していないといって大おおいに憤慨している。元来我々同族間では目刺めざしの頭でも鰡ぼらの臍へそでも一番先に見付けたものがこれを食う権利があるものとなっている。もし相手がこの規約を守らなければ腕力に訴えて善よいくらいのものだ。しかるに彼等人間は毫ごうもこの観念がないと見えて我等が見付けた御馳走は必ず彼等のために掠奪りゃくだつせらるるのである。彼等はその強力を頼んで正当に吾人が食い得べきものを奪うばってすましている。白君は軍人の家におり三毛君は代言の主人を持っている。吾輩は教師の家に住んでいるだけ、こんな事に関すると両君よりもむしろ楽天である。ただその日その日がどうにかこうにか送られればよい。いくら人間だって、そういつまでも栄える事もあるまい。まあ気を永く猫の時節を待つがよかろう。")
Episode.create(:book_id => 1, :epi_title => "我儘で思い出した",
 :epi_body => "我儘わがままで思い出したからちょっと吾輩の家の主人がこの我儘で失敗した話をしよう。元来この主人は何といって人に勝すぐれて出来る事もないが、何にでもよく手を出したがる。俳句をやってほととぎすへ投書をしたり、新体詩を明星へ出したり、間違いだらけの英文をかいたり、時によると弓に凝こったり、謡うたいを習ったり、またあるときはヴァイオリンなどをブーブー鳴らしたりするが、気の毒な事には、どれもこれも物になっておらん。その癖やり出すと胃弱の癖にいやに熱心だ。後架こうかの中で謡をうたって、近所で後架先生こうかせんせいと渾名あだなをつけられているにも関せず一向いっこう平気なもので、やはりこれは平たいらの宗盛むねもりにて候そうろうを繰返している。みんながそら宗盛だと吹き出すくらいである。この主人がどういう考になったものか吾輩の住み込んでから一月ばかり後のちのある月の月給日に、大きな包みを提さげてあわただしく帰って来た。何を買って来たのかと思うと水彩絵具と毛筆とワットマンという紙で今日から謡や俳句をやめて絵をかく決心と見えた。果して翌日から当分の間というものは毎日毎日書斎で昼寝もしないで絵ばかりかいている。しかしそのかき上げたものを見ると何をかいたものやら誰にも鑑定がつかない。当人もあまり甘うまくないと思ったものか、ある日その友人で美学とかをやっている人が来た時に下しものような話をしているのを聞いた。
 「どうも甘うまくかけないものだね。人のを見ると何でもないようだが自みずから筆をとって見ると今更いまさらのようにむずかしく感ずる」これは主人の述懐じゅっかいである。なるほど詐いつわりのない処だ。彼の友は金縁の眼鏡越めがねごしに主人の顔を見ながら、「そう初めから上手にはかけないさ、第一室内の想像ばかりで画えがかける訳のものではない。昔むかし以太利イタリーの大家アンドレア・デル・サルトが言った事がある。画をかくなら何でも自然その物を写せ。天に星辰せいしんあり。地に露華ろかあり。飛ぶに禽とりあり。走るに獣けものあり。池に金魚あり。枯木こぼくに寒鴉かんああり。自然はこれ一幅の大活画だいかつがなりと。どうだ君も画らしい画をかこうと思うならちと写生をしたら」
 「へえアンドレア・デル・サルトがそんな事をいった事があるかい。ちっとも知らなかった。なるほどこりゃもっともだ。実にその通りだ」と主人は無暗むやみに感心している。金縁の裏には嘲あざけるような笑わらいが見えた。
　その翌日吾輩は例のごとく椽側えんがわに出て心持善く昼寝ひるねをしていたら、主人が例になく書斎から出て来て吾輩の後うしろで何かしきりにやっている。ふと眼が覚さめて何をしているかと一分いちぶばかり細目に眼をあけて見ると、彼は余念もなくアンドレア・デル・サルトを極きめ込んでいる。吾輩はこの有様を見て覚えず失笑するのを禁じ得なかった。彼は彼の友に揶揄やゆせられたる結果としてまず手初めに吾輩を写生しつつあるのである。吾輩はすでに十分じゅうぶん寝た。欠伸あくびがしたくてたまらない。しかしせっかく主人が熱心に筆を執とっているのを動いては気の毒だと思って、じっと辛棒しんぼうしておった。彼は今吾輩の輪廓をかき上げて顔のあたりを色彩いろどっている。吾輩は自白する。吾輩は猫として決して上乗の出来ではない。背といい毛並といい顔の造作といいあえて他の猫に勝まさるとは決して思っておらん。しかしいくら不器量の吾輩でも、今吾輩の主人に描えがき出されつつあるような妙な姿とは、どうしても思われない。第一色が違う。吾輩は波斯産ペルシャさんの猫のごとく黄を含める淡灰色に漆うるしのごとき斑入ふいりの皮膚を有している。これだけは誰が見ても疑うべからざる事実と思う。しかるに今主人の彩色を見ると、黄でもなければ黒でもない、灰色でもなければ褐色とびいろでもない、さればとてこれらを交ぜた色でもない。ただ一種の色であるというよりほかに評し方のない色である。その上不思議な事は眼がない。もっともこれは寝ているところを写生したのだから無理もないが眼らしい所さえ見えないから盲猫めくらだか寝ている猫だか判然しないのである。吾輩は心中ひそかにいくらアンドレア・デル・サルトでもこれではしようがないと思った。しかしその熱心には感服せざるを得ない。なるべくなら動かずにおってやりたいと思ったが、さっきから小便が催うしている。身内みうちの筋肉はむずむずする。最早もはや一分も猶予ゆうよが出来ぬ仕儀しぎとなったから、やむをえず失敬して両足を前へ存分のして、首を低く押し出してあーあと大だいなる欠伸をした。さてこうなって見ると、もうおとなしくしていても仕方がない。どうせ主人の予定は打ぶち壊こわしたのだから、ついでに裏へ行って用を足たそうと思ってのそのそ這い出した。すると主人は失望と怒りを掻かき交ぜたような声をして、座敷の中から「この馬鹿野郎」と怒鳴どなった。この主人は人を罵ののしるときは必ず馬鹿野郎というのが癖である。ほかに悪口の言いようを知らないのだから仕方がないが、今まで辛棒した人の気も知らないで、無暗むやみに馬鹿野郎呼よばわりは失敬だと思う。それも平生吾輩が彼の背中せなかへ乗る時に少しは好い顔でもするならこの漫罵まんばも甘んじて受けるが、こっちの便利になる事は何一つ快くしてくれた事もないのに、小便に立ったのを馬鹿野郎とは酷ひどい。元来人間というものは自己の力量に慢じてみんな増長している。少し人間より強いものが出て来て窘いじめてやらなくてはこの先どこまで増長するか分らない。")



##本２
Book.create(:user_id => 1,:genre_id => 1, :book_title => "こころ", :cover_img => File.open("./app/assets/images/kokoro.jpg"), :status => 1, :book_delete_flg => 0 )
#本２のエピソード１
Episode.create(:book_id => 2, :epi_title => "１話",
 :epi_body => "　私わたくしはその人を常に先生と呼んでいた。だからここでもただ先生と書くだけで本名は打ち明けない。これは世間を憚はばかる遠慮というよりも、その方が私にとって自然だからである。私はその人の記憶を呼び起すごとに、すぐ「先生」といいたくなる。筆を執とっても心持は同じ事である。よそよそしい頭文字かしらもじなどはとても使う気にならない。
　私が先生と知り合いになったのは鎌倉かまくらである。その時私はまだ若々しい書生であった。暑中休暇を利用して海水浴に行った友達からぜひ来いという端書はがきを受け取ったので、私は多少の金を工面くめんして、出掛ける事にした。私は金の工面に二に、三日さんちを費やした。ところが私が鎌倉に着いて三日と経たたないうちに、私を呼び寄せた友達は、急に国元から帰れという電報を受け取った。電報には母が病気だからと断ってあったけれども友達はそれを信じなかった。友達はかねてから国元にいる親たちに勧すすまない結婚を強しいられていた。彼は現代の習慣からいうと結婚するにはあまり年が若過ぎた。それに肝心かんじんの当人が気に入らなかった。それで夏休みに当然帰るべきところを、わざと避けて東京の近くで遊んでいたのである。彼は電報を私に見せてどうしようと相談をした。私にはどうしていいか分らなかった。けれども実際彼の母が病気であるとすれば彼は固もとより帰るべきはずであった。それで彼はとうとう帰る事になった。せっかく来た私は一人取り残された。
　学校の授業が始まるにはまだ大分だいぶ日数ひかずがあるので鎌倉におってもよし、帰ってもよいという境遇にいた私は、当分元の宿に留とまる覚悟をした。友達は中国のある資産家の息子むすこで金に不自由のない男であったけれども、学校が学校なのと年が年なので、生活の程度は私とそう変りもしなかった。したがって一人ひとりぼっちになった私は別に恰好かっこうな宿を探す面倒ももたなかったのである。
　宿は鎌倉でも辺鄙へんぴな方角にあった。玉突たまつきだのアイスクリームだのというハイカラなものには長い畷なわてを一つ越さなければ手が届かなかった。車で行っても二十銭は取られた。けれども個人の別荘はそこここにいくつでも建てられていた。それに海へはごく近いので海水浴をやるには至極便利な地位を占めていた。
　私は毎日海へはいりに出掛けた。古い燻くすぶり返った藁葺わらぶきの間あいだを通り抜けて磯いそへ下りると、この辺へんにこれほどの都会人種が住んでいるかと思うほど、避暑に来た男や女で砂の上が動いていた。ある時は海の中が銭湯せんとうのように黒い頭でごちゃごちゃしている事もあった。その中に知った人を一人ももたない私も、こういう賑にぎやかな景色の中に裹つつまれて、砂の上に寝ねそべってみたり、膝頭ひざがしらを波に打たしてそこいらを跳はね廻まわるのは愉快であった。
　私は実に先生をこの雑沓ざっとうの間あいだに見付け出したのである。その時海岸には掛茶屋かけぢゃやが二軒あった。私はふとした機会はずみからその一軒の方に行き慣なれていた。長谷辺はせへんに大きな別荘を構えている人と違って、各自めいめいに専有の着換場きがえばを拵こしらえていないここいらの避暑客には、ぜひともこうした共同着換所といった風ふうなものが必要なのであった。彼らはここで茶を飲み、ここで休息する外ほかに、ここで海水着を洗濯させたり、ここで鹹しおはゆい身体からだを清めたり、ここへ帽子や傘かさを預けたりするのである。海水着を持たない私にも持物を盗まれる恐れはあったので、私は海へはいるたびにその茶屋へ一切いっさいを脱ぬぎ棄すてる事にしていた。")
#本２のエピソード２
Episode.create(:book_id => 2, :epi_title => "２話",
 :epi_body => "　私わたくしがその掛茶屋で先生を見た時は、先生がちょうど着物を脱いでこれから海へ入ろうとするところであった。私はその時反対に濡ぬれた身体からだを風に吹かして水から上がって来た。二人の間あいだには目を遮さえぎる幾多の黒い頭が動いていた。特別の事情のない限り、私はついに先生を見逃したかも知れなかった。それほど浜辺が混雑し、それほど私の頭が放漫ほうまんであったにもかかわらず、私がすぐ先生を見付け出したのは、先生が一人の西洋人を伴つれていたからである。
　その西洋人の優れて白い皮膚の色が、掛茶屋へ入るや否いなや、すぐ私の注意を惹ひいた。純粋の日本の浴衣ゆかたを着ていた彼は、それを床几しょうぎの上にすぽりと放ほうり出したまま、腕組みをして海の方を向いて立っていた。彼は我々の穿はく猿股さるまた一つの外ほか何物も肌に着けていなかった。私にはそれが第一不思議だった。私はその二日前に由井ゆいが浜はままで行って、砂の上にしゃがみながら、長い間西洋人の海へ入る様子を眺ながめていた。私の尻しりをおろした所は少し小高い丘の上で、そのすぐ傍わきがホテルの裏口になっていたので、私の凝じっとしている間あいだに、大分だいぶ多くの男が塩を浴びに出て来たが、いずれも胴と腕と股ももは出していなかった。女は殊更ことさら肉を隠しがちであった。大抵は頭に護謨製ゴムせいの頭巾ずきんを被かぶって、海老茶えびちゃや紺こんや藍あいの色を波間に浮かしていた。そういう有様を目撃したばかりの私の眼めには、猿股一つで済まして皆みんなの前に立っているこの西洋人がいかにも珍しく見えた。
　彼はやがて自分の傍わきを顧みて、そこにこごんでいる日本人に、一言ひとこと二言ふたこと何なにかいった。その日本人は砂の上に落ちた手拭てぬぐいを拾い上げているところであったが、それを取り上げるや否や、すぐ頭を包んで、海の方へ歩き出した。その人がすなわち先生であった。
　私は単に好奇心のために、並んで浜辺を下りて行く二人の後姿うしろすがたを見守っていた。すると彼らは真直まっすぐに波の中に足を踏み込んだ。そうして遠浅とおあさの磯近いそちかくにわいわい騒いでいる多人数たにんずの間あいだを通り抜けて、比較的広々した所へ来ると、二人とも泳ぎ出した。彼らの頭が小さく見えるまで沖の方へ向いて行った。それから引き返してまた一直線に浜辺まで戻って来た。掛茶屋へ帰ると、井戸の水も浴びずに、すぐ身体からだを拭ふいて着物を着て、さっさとどこへか行ってしまった。
　彼らの出て行った後あと、私はやはり元の床几しょうぎに腰をおろして烟草タバコを吹かしていた。その時私はぽかんとしながら先生の事を考えた。どうもどこかで見た事のある顔のように思われてならなかった。しかしどうしてもいつどこで会った人か想おもい出せずにしまった。
　その時の私は屈托くったくがないというよりむしろ無聊ぶりょうに苦しんでいた。それで翌日あくるひもまた先生に会った時刻を見計らって、わざわざ掛茶屋かけぢゃやまで出かけてみた。すると西洋人は来ないで先生一人麦藁帽むぎわらぼうを被かぶってやって来た。先生は眼鏡めがねをとって台の上に置いて、すぐ手拭てぬぐいで頭を包んで、すたすた浜を下りて行った。先生が昨日きのうのように騒がしい浴客よくかくの中を通り抜けて、一人で泳ぎ出した時、私は急にその後あとが追い掛けたくなった。私は浅い水を頭の上まで跳はねかして相当の深さの所まで来て、そこから先生を目標めじるしに抜手ぬきでを切った。すると先生は昨日と違って、一種の弧線こせんを描えがいて、妙な方向から岸の方へ帰り始めた。それで私の目的はついに達せられなかった。私が陸おかへ上がって雫しずくの垂れる手を振りながら掛茶屋に入ると、先生はもうちゃんと着物を着て入れ違いに外へ出て行った。")
#本２のエピソード３
Episode.create(:book_id => 2, :epi_title => "３話",
 :epi_body => "私は次の日も同じ時刻に浜へ行って先生の顔を見た。その次の日にもまた同じ事を繰り返した。けれども物をいい掛ける機会も、挨拶あいさつをする場合も、二人の間には起らなかった。その上先生の態度はむしろ非社交的であった。一定の時刻に超然として来て、また超然と帰って行った。周囲がいくら賑にぎやかでも、それにはほとんど注意を払う様子が見えなかった。最初いっしょに来た西洋人はその後ごまるで姿を見せなかった。先生はいつでも一人であった。
　或ある時先生が例の通りさっさと海から上がって来て、いつもの場所に脱ぬぎ棄すてた浴衣ゆかたを着ようとすると、どうした訳か、その浴衣に砂がいっぱい着いていた。先生はそれを落すために、後ろ向きになって、浴衣を二、三度振ふるった。すると着物の下に置いてあった眼鏡が板の隙間すきまから下へ落ちた。先生は白絣しろがすりの上へ兵児帯へこおびを締めてから、眼鏡の失なくなったのに気が付いたと見えて、急にそこいらを探し始めた。私はすぐ腰掛こしかけの下へ首と手を突ッ込んで眼鏡を拾い出した。先生は有難うといって、それを私の手から受け取った。
　次の日私は先生の後あとにつづいて海へ飛び込んだ。そうして先生といっしょの方角に泳いで行った。二丁ちょうほど沖へ出ると、先生は後ろを振り返って私に話し掛けた。広い蒼あおい海の表面に浮いているものは、その近所に私ら二人より外ほかになかった。そうして強い太陽の光が、眼の届く限り水と山とを照らしていた。私は自由と歓喜に充みちた筋肉を動かして海の中で躍おどり狂った。先生はまたぱたりと手足の運動を已やめて仰向けになったまま浪なみの上に寝た。私もその真似まねをした。青空の色がぎらぎらと眼を射るように痛烈な色を私の顔に投げ付けた。「愉快ですね」と私は大きな声を出した。
　しばらくして海の中で起き上がるように姿勢を改めた先生は、「もう帰りませんか」といって私を促した。比較的強い体質をもった私は、もっと海の中で遊んでいたかった。しかし先生から誘われた時、私はすぐ「ええ帰りましょう」と快く答えた。そうして二人でまた元の路みちを浜辺へ引き返した。
　私はこれから先生と懇意になった。しかし先生がどこにいるかはまだ知らなかった。
　それから中なか二日おいてちょうど三日目の午後だったと思う。先生と掛茶屋かけぢゃやで出会った時、先生は突然私に向かって、「君はまだ大分だいぶ長くここにいるつもりですか」と聞いた。考えのない私はこういう問いに答えるだけの用意を頭の中に蓄えていなかった。それで「どうだか分りません」と答えた。しかしにやにや笑っている先生の顔を見た時、私は急に極きまりが悪くなった。「先生は？」と聞き返さずにはいられなかった。これが私の口を出た先生という言葉の始まりである。
　私はその晩先生の宿を尋ねた。宿といっても普通の旅館と違って、広い寺の境内けいだいにある別荘のような建物であった。そこに住んでいる人の先生の家族でない事も解わかった。私が先生先生と呼び掛けるので、先生は苦笑いをした。私はそれが年長者に対する私の口癖くちくせだといって弁解した。私はこの間の西洋人の事を聞いてみた。先生は彼の風変りのところや、もう鎌倉かまくらにいない事や、色々の話をした末、日本人にさえあまり交際つきあいをもたないのに、そういう外国人と近付ちかづきになったのは不思議だといったりした。私は最後に先生に向かって、どこかで先生を見たように思うけれども、どうしても思い出せないといった。若い私はその時暗あんに相手も私と同じような感じを持っていはしまいかと疑った。そうして腹の中で先生の返事を予期してかかった。ところが先生はしばらく沈吟ちんぎんしたあとで、「どうも君の顔には見覚みおぼえがありませんね。人違いじゃないですか」といったので私は変に一種の失望を感じた。")
#本２のエピソード４
Episode.create(:book_id => 2, :epi_title => "４話",
 :epi_body => "　私は月の末に東京へ帰った。先生の避暑地を引き上げたのはそれよりずっと前であった。私は先生と別れる時に、「これから折々お宅たくへ伺っても宜よござんすか」と聞いた。先生は単簡たんかんにただ「ええいらっしゃい」といっただけであった。その時分の私は先生とよほど懇意になったつもりでいたので、先生からもう少し濃こまやかな言葉を予期して掛かかったのである。それでこの物足りない返事が少し私の自信を傷いためた。
　私はこういう事でよく先生から失望させられた。先生はそれに気が付いているようでもあり、また全く気が付かないようでもあった。私はまた軽微な失望を繰り返しながら、それがために先生から離れて行く気にはなれなかった。むしろそれとは反対で、不安に揺うごかされるたびに、もっと前へ進みたくなった。もっと前へ進めば、私の予期するあるものが、いつか眼の前に満足に現われて来るだろうと思った。私は若かった。けれどもすべての人間に対して、若い血がこう素直に働こうとは思わなかった。私はなぜ先生に対してだけこんな心持が起るのか解わからなかった。それが先生の亡くなった今日こんにちになって、始めて解って来た。先生は始めから私を嫌っていたのではなかったのである。先生が私に示した時々の素気そっけない挨拶あいさつや冷淡に見える動作は、私を遠ざけようとする不快の表現ではなかったのである。傷いたましい先生は、自分に近づこうとする人間に、近づくほどの価値のないものだから止よせという警告を与えたのである。他ひとの懐かしみに応じない先生は、他ひとを軽蔑けいべつする前に、まず自分を軽蔑していたものとみえる。
　私は無論先生を訪ねるつもりで東京へ帰って来た。帰ってから授業の始まるまでにはまだ二週間の日数ひかずがあるので、そのうちに一度行っておこうと思った。しかし帰って二日三日と経たつうちに、鎌倉かまくらにいた時の気分が段々薄くなって来た。そうしてその上に彩いろどられる大都会の空気が、記憶の復活に伴う強い刺戟しげきと共に、濃く私の心を染め付けた。私は往来で学生の顔を見るたびに新しい学年に対する希望と緊張とを感じた。私はしばらく先生の事を忘れた。
　授業が始まって、一カ月ばかりすると私の心に、また一種の弛たるみができてきた。私は何だか不足な顔をして往来を歩き始めた。物欲しそうに自分の室へやの中を見廻みまわした。私の頭には再び先生の顔が浮いて出た。私はまた先生に会いたくなった。
　始めて先生の宅うちを訪ねた時、先生は留守であった。二度目に行ったのは次の日曜だと覚えている。晴れた空が身に沁しみ込むように感ぜられる好いい日和ひよりであった。その日も先生は留守であった。鎌倉にいた時、私は先生自身の口から、いつでも大抵たいてい宅にいるという事を聞いた。むしろ外出嫌いだという事も聞いた。二度来て二度とも会えなかった私は、その言葉を思い出して、理由わけもない不満をどこかに感じた。私はすぐ玄関先を去らなかった。下女げじょの顔を見て少し躊躇ちゅうちょしてそこに立っていた。この前名刺を取り次いだ記憶のある下女は、私を待たしておいてまた内うちへはいった。すると奥さんらしい人が代って出て来た。美しい奥さんであった。
　私はその人から鄭寧ていねいに先生の出先を教えられた。先生は例月その日になると雑司ヶ谷ぞうしがやの墓地にある或ある仏へ花を手向たむけに行く習慣なのだそうである。「たった今出たばかりで、十分になるか、ならないかでございます」と奥さんは気の毒そうにいってくれた。私は会釈えしゃくして外へ出た。賑にぎやかな町の方へ一丁ちょうほど歩くと、私も散歩がてら雑司ヶ谷へ行ってみる気になった。先生に会えるか会えないかという好奇心も動いた。それですぐ踵きびすを回めぐらした。
 ")

#ユーザー２
User.create(:theme_id => 1, :user_name => "坂本龍馬", :email => "2@cp.com", :password => "111111", :user_img_id => nil, :quit_flg => 0)
##本３
Book.create(:user_id => 2,:genre_id => 1, :book_title => "坂本龍馬手記", :cover_img => File.open("./app/assets/images/sakamoto.jpg"), :status => 1, :book_delete_flg => 0 )
#本３のエピソード１
Episode.create(:book_id => 3, :epi_title => "１話",
 :epi_body => "四月廿三日夜危難之後明光丸ニ移り鞆の港ニ上陸ス。時に廿四日朝五ツ時頃也。市太郎、英四郎に命じて士官水夫の宿をとらしむ。独り梅太郎、高柳楠之助のまねきによりて道越町魚屋万蔵の家にいたりて高柳ニ会ス。（但、高柳ハ明光丸頭取）高柳曰ク此度明光丸ハ於ママ長崎ニ、船の求め方ニ付て急ニ参らねバ数万金にかゝわり候事なれバ、御気毒ながら此度の論議ハ長崎まで御まち被レ下候や、かく申せバ御うたがひ被レ成候べけれども申上候事ハ間違あるまじく。梅太郎曰ク御うたがひ不二申上一候、とても紀の国を引てにげ候事ハ無レ之候得バ、御うたがひ申不レ上候。私方老主人も急用有て上京、夫ニ付て兵器等日を限りて運送仕候事に御座候得バ、船の士官のミ申付てもよろしく候得ども、非常の急用故ニ、私をさしそへ上坂仕候。惣じて此度の義論ハ此処ニて双方士官を出し論じて是非を辨じても宜候得ども、左様致し候得バ必争論難レ止相成候べし。当時朝廷之御様子及幕府ニもいまだ長州の義かた付不レ申、其上今年ハ外国人摂海へ定約開港の申立ニも相成、実ニ神州之大事此時にあたりて紀土の争を生じ候バ尤可レ恐事ニ在レ之候間、何卒都合宜きよふ仕度候。然レ共私し此儘長崎に帰り唯双方間違より船を失ひしとて、主人の急用をかぎ候事ハ、実に命の在かぎりハ申兼事ニ御座候。此危難ハ是非なき事に御座候得ども、何卒紀州御政府の論土佐重役の論の定まるまでハ、御船明光丸を此港に御止メ可レ被レ下候哉。昨夜も海上ニて申上候通りニ御座候。此度双方の船共に沈没致し候時ハ御同様ニ上ミの急用をかぎ候事に御座候。高柳が曰クあつき御思召難レ有此度ハ勘定局重役も船ニ乗組在レ之候得バ、一同申レ談御返答申上候。当時土佐出崎の御重役ハ何と御申候哉。梅太郎が曰ク後藤庄次郎ト申候。夫より我士官の宿石井町桝屋清左衛門方ニ帰ル。夕方ニ至りて明光丸士官両人来ル。梅太郎昼ねしたり、小谷耕蔵面会ス。」かの両人曰ク、高柳の御頼の如ク又急ニ出帆仕度候得バ御論決の処受たまはりたしと申入て帰ル。廿五日朝昨夕の両士来りて吾論決を聞ク。」梅太郎曰ク紀州侯は［＃「紀州侯は」は底本では「紀州候は」］別段重キ御家、其上御主人の御急用の御事、私方ニおゐてハもはや沈没して跡なき船ニて在レ之候。是を大キ成る眼を以て見れバ今日なきものハ仕方なけれども猶存するものハ其用をなす（とも）事世間の道理ニも相叶候べく、此儀ハ後刻彼の道越町魚屋万蔵方まで罷出高柳先生御旅宿まで使さし出候。」両士帰ル夫より魚屋ニ行高柳来ル」高柳曰ク昨日より暖々ママ相願候事ハ御聞取被レ下候や」梅太郎曰ク御尤ニ承候。然ルニ御相談の事ハ誠ニ御和談の御事ニ候得バ、私よりも相願候事有レ之候。")
#本３のエピソード２
Episode.create(:book_id => 3, :epi_title => "２話",
 :epi_body => "惣じて私の論ハ外ニ無レ之御同様ニ公論を相尋義のある所に順ひ申度、夫故先生よりも何べんとなく御申直し可レ被レ遣候。私よりも折返して申上候。其内自然公論ハ出来可レ申存候。此度の事ハ御船明光丸も与ともに沈没致候得ば如何被レ成候哉。御主用をかぎ候のみならず、人命多く失ひ可レ申候。御船ハ長崎ヘ御廻しニ相成候ヘバ一両日おくれながらも御主用ハ相達可レ申、私義ハ要用を被レ命船を海に沈ミしと斗ニてハ、とても此儘ニは居られ申間敷、然ルニ双方の士官の当番水夫小頭の面々ニは、長崎ニて義論致候ヘバ航海者の集り候処ニて則公論（然）の是非相顕れ可レ申候ヘ共、私之一身実に困窮仕候ヘバ猶一ト事御頼申上候。故ハ此度出崎仕候事も主人より被レ命候用物を相辨候中に手間どれ可レ申無二余義一所御憐察被レ遊紀伊侯の［＃「紀伊侯の」は底本では「紀伊候の」］御金借用仕度。然れバ御便船相願出崎の上、機械早速相求メ主用相達し可レ申、此義相叶候ヘバ私においても日数少々おくれながらも、用向事足り御同様一ト安心仕候。何卒御重役ニ宜御願可レ被レ遣［＃「遣」は底本では「遺」］候。其上ニて双方士官を集めて徐々論じ、公法をてらし私方曲なれバ自然ウらむところ無レ之、若し又貴方曲なれバ公法におゐても其所置可レ有レ之奉レ存候。上許相願候を約し申せば両船の危難に明光丸が残りたれバ此御船をして半バ御わかち被レ下候ても、可レ然かと相願候事ニ御座候。上ニ申候金ハわづかに壱万金余の事ニて御座候。此儀相叶候事なれバ御便船相願出崎仕度、此儀も相不レ叶猶御船を此処に御止メ置キ無レ之候時ハも早御相談ニは預り申間敷候。此儀御重役へも御達可二申遣一候様奉レ願候。高柳が曰ク、御論御尤よく承候得ども、何分道中の事御返答申上兼候得バ、猶重役のものども上陸いたし候得バ、早々申達べく、其上又御面会も申上候。梅太郎曰ク、間違ぬよふ此儀宜御達可レ被レ遣［＃「遣」は底本では「遺」］候。夫より又右桝屋へ帰る。
同廿五日夜五ツ時頃高柳楠之助が家来来ル。則魚屋万蔵方ニ行て高柳と面会ス。時ニ士官岡本覚十郎、成瀬国助側ニ在ル。楠之助曰ク、先刻御申の儀ハ夫々重役のものニも申達候処、甚ダ御尤の御事と申居候へども、只今ハ何分道中の事、其上金持合不レ申無二余儀一御断申上候。此義ハ長崎表ニてハ奉行所ニも相達し、又此地ニ公儀御役人御出も相頼べく哉。然ニ此船行合の事ハ夫ニも及申まじく候。梅太郎曰ク、唯今御申の事ハ私申上候事能御聞分相成候哉、今又新たに申上べく候。諸君ニも御主君の御用向、私も主君の用向ニ而御座候。猶此危難も御同意之御事ニ御座候処、諸君ハ日数ハ少しおくれながらも上々の御用相達し申候。私ハ此まゝニて出崎仕候得バ両国之重役立合、其上ニて議論相定り候得バ、日数も相掛り主人の急用ニ付而私ニ命候事は無易ママの事と相成申候。共に危難に合候事なれバ、今幸ニ諸君の御船ハなんなく在レ之候事ニ候得バ、其御船ニ而小弟の危難御すくひ被レ遣候御心積ニて上に申壱万余金を御貸被レ下候時ハ臣下之君を思ふ情御察し可レ被レ下候。□□不明にて御座候［＃「御座候」は底本では「御座侯」］。諸国ともママ臣の君を思ひ子の父を思ふハ同じ御事ニ御座候。」高柳及両士官とも気の毒なる顔色に而言葉もともにして曰ク実ニ御尤の御事ニ御座候。先刻承り候□不明此処ニて金特出候事と存候。其儀なれバ早々重役の者ニ申達、然ニ壱万金と申てハ正金ニ而ハ余程六ヶ敷ク、品ものニて御取被レ下候哉。」梅太郎曰ク御重役此儀御聞取被レ下候時ハ右よふの事ハ会計方の者、差出可レ申候。惣じて金の事を彼是申ハ実ニ御同よフニいやな事ニて御座候。」高柳曰ク、其通ニ而御座候。」梅太郎曰ク其儀もしいてハ頼不二申上一候。諸君の小弟を御憐ミ被レ遣候事ハ御談じ中にも能分り申候。夫計ニても私ハ十分難レ有奉レ存候。」是より先、紙ニ包し金を楠之助が懐中より出し気の毒げにして重役より心付とて持出しものあり。」梅太郎曰ク、御重役の御心付の金子難レ有候得共私荷物ハ皆失ない候得共、たま／＼会計役□□□不明を取出しけれバ、当時差かゝり金入用無レ之候。万々御礼申上候間先此金高柳君御預り可レ被レ下候」と申事再三ニ及で、高柳又懐ニ納ム。」梅太郎又曰ク御三人の御思召の程万々難レ有御同意被レ遣候ても又御重役の御承知不二相成一事も在レ之候ヘバ決而私よりの御頼の筋ハ成就仕候事を御心配被レ遣まじく、只私より申上候義理情実能御達可レ被レ遣候。」高柳の両士曰、□□不明御同意申ても何分重役の者之心中ハ難レ計候。然れバ早々宿にかへり又船ニも行詮義仕候。しばらく御待可レ被レ遣候。」梅太郎曰ク御尤の御事ニ御座候。惣じて近年亡命致候人諸国ニ不レ少候故ハ、下情上ニ連兼候所よりの事ニ御座候。」三士曰ク御申通ニ御座候。夫より三士宿ニかへる。我又桝屋清左衛門が宿ニかへる。")
