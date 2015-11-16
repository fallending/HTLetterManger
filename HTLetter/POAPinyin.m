//
//  POAPinyin.m
//  POA
//
//  Created by haung he on 11-7-18.
//  Copyright 2011年 huanghe. All rights reserved.
//

#import "POAPinyin.h"

#define pyCount 475

typedef  struct pinyinTableCell{
    NSString *pinyin;
    NSString *hanzi;
} pinyinTableCell;

const pinyinTableCell  pinyinTable[] = {
{@"A",@"啊阿呵吖嗄腌锕錒"},
{@"Ai",@"爱矮挨哎碍癌艾唉哀蔼隘埃皑呆嗌嫒瑷暧捱砹嗳锿霭乂乃伌僾儗凒剀剴叆呃呝啀嘊噫噯堨塧壒奇娭娾嬡嵦愛懓懝敱敳昹曖欬欸毐溰溾濭烠焥璦皚皧瞹硋磑礙絠薆藹諰譪譺賹躷醷鎄鑀閡阂阨阸隑靄靉餲馤騃鯦鱫鴱崖"},
{@"An",@"按安暗岸俺案鞍氨胺厂广庵揞犴铵桉谙鹌埯黯侒儑匼厈咹唵啽垵垾堓婩媕屽峖干晻洝玵痷盒盦盫碪罯腤荌菴萻葊蓭裺誝諳豻貋遃鉗銨錌钳闇陰隂隌雸鞌韽頇頞顸馣鮟鴳鵪鶕"},
{@"Ang",@"昂肮盎仰卬岇昻枊醃醠骯"},
{@"Ao",@"袄凹傲奥熬懊敖翱澳嚣拗媪廒骜嗷坳遨聱螯獒鏊鳌鏖岙厫嗸噢嚻囂垇墺墽奡奧媼嫯岰嶅嶴慠扷抝摮擙柪梎棍泑浇滶澆澚熝爊獓璈眑磝磽礉翶翺芺蔜蝹襖謷謸軪郩鏕镺隞驁鰲鴁鴢鷔鼇"},
{@"Ba",@"把八吧爸拔罢跋巴芭扒坝霸叭靶笆疤耙捌粑茇岜鲅钯魃菝灞仈伯叐哱哵坺垻墢壩夿妭峇弝抜抪捭朳杷柭欛湃炦犮玐癹皅矲笩紦罷羓胈茷萆蚆覇詙豝跁軷釛釟鈀颰魞鮁鮊鲃鲌鼥"},
{@"Bai",@"百白摆败柏拜佰伯稗捭呗掰唄庍扒拝挀排擺敗栢派猈竡粨粺絔薜薭襬贁鞁鞴韛"},
{@"Ban",@"半办班般拌搬版斑板伴扳扮瓣颁绊癍坂钣舨阪瘢並分坢埿姅岅彬怑搫攽斒昄朌柈湴瓪秚籓粄絆肦蝂螁螌褩覂豳跘辦辧辨辩辬辯鈑鉡闆靽頒魬鳻"},
{@"Bang",@"帮棒绑磅镑邦榜蚌傍梆膀谤浜蒡並嗙垹埲塝嫎峀崗幇幚幫彭徬挷捠搒旁棓牓玤硥稖紡綁縍纺艕蚄蛖蜯螃謗邫鎊鞤騯髈"},
{@"Bao",@"包抱报饱保暴薄宝爆剥豹刨雹褒堡苞胞鲍炮瀑龅孢煲褓鸨趵葆佨儤剝勹勽呆嘐嚗堢報媬嫑寚寳寶忁怉曓枹珤砲窇笣簿緥菢蕔藵虣蚫袌袍裒裦襃賲鉋鑤铇闁靌靤飹飽駂骲髱鮑鳵鴇齙宀"},
{@"Be",@"萡"},
{@"Bei",@"被北倍杯背悲备碑卑贝辈钡焙狈惫臂褙悖蓓鹎鐾呗邶鞴孛陂碚俻俾偝偹備僃哱唄喺垻埤怫愂憊揹昁杮柸桮梖棑棓椑波牬犕狽珼琲痺盃禙箃糒苝茀菩萆萯葡藣蛽蜚襬誖諀貝跋軰輩鄁鉳鋇錍鐴骳鵯"},
{@"Ben",@"本奔苯笨夯锛贲畚坌体倴喯夲奙捹撪桳楍泍渀炃燌犇獖翉蟦賁輽逩錛鐼"},
{@"Beng",@"蹦绷甭崩迸蚌泵甏嘣伻俸傍傰唪嗙埄埲堋塴奟嵭平抨挷搒旁榜漨熢琣琫痭祊絣綳繃菶跰逬錋鏰镚閍鞛"},
{@"Bi",@"比笔闭鼻碧必避逼毕臂彼鄙壁蓖币弊辟蔽毙庇敝陛毖痹秘泌秕薜荸芘萆匕裨畀俾嬖狴筚箅篦舭荜襞庳铋跸吡愎贲滗濞璧哔髀弼妣婢仳佊佖佛偪匂卑咇啚嗶坒埤堛复夶奰妼娝媲嬶屄崥幅幣幤庀廦弻彃怭怶悂愊拂捭斃旇服朼枇枈柀柲梐椑楅檗殍毴沘波湢滭潷煏熚獘獙珌畁畐畢疕疪痺皀皕瞥禆稫笓筆箃箄箆篳粃粊紕紴綼縪繴纰罷罼翍聛肶肸胇脾腗腷苾萞蓽蘗虑蜌螕袐被襅襣觱詖诐豍貏貱費賁贔赑跛踾蹕躃躄邲鄨鄪鈚鉍錍鎞鏎鐴鐾閇閈閉閟闬陂陴鞁鞞鞸韠飶饆馝馥駜驆髲魓魮鮅鮩鰏鲾鴓鵖鶝鷝鷩鸊鼊"},
{@"Bia",@"髟"},
{@"Bian",@"边变便遍编辩扁贬鞭卞辨辫忭砭匾汴碥蝙褊鳊笾苄窆弁缏煸変封峅徧惼抃拚揙昪汳炞牑猵獱甂疺稨稹箯籩糄編緶臱艑萹藊覍覵變豍貶辡辦辧辮辯邉邊邲釆鍽閞鞕頨鯾鯿鴘鶣髟"},
{@"Biao",@"表标彪膘杓婊飑飙鳔瘭飚镳裱骠镖俵僄儦剽墂嫖幖徱摽標檦淲滮漂瀌灬熛爂猋穮篻脿膔臕苞蔈藨褾諘謤贆錶鏖鏢鑣颮颷飆飇飈飊驃驫骉鰾麃髟"},
{@"Bie",@"别憋鳖瘪蹩別咇彆徶扒拔捌撆撇柭柲猰癟秘穪苾莂蔽虌蛂蟞襒鱉鼈龞"},
{@"Bin",@"宾濒摈彬斌滨豳膑殡缤髌傧槟鬓镔玢份儐擯椕殯氞汃浜濱濵瀕瑸璸砏繽臏虨蠙訜豩賓賔贇赟邠鑌霦頻顮频髕髩鬂鬢"},
{@"Bing",@"并病兵冰丙饼屏秉柄炳摒槟禀邴並仌併倂偋傡冫垪寎平幷庰怲抦拼掤昞昺枋栟栤梹棅檳氷燷燹琕痭癛癝眪稟窉竝絣綆绠苪蛃誁跰鈵鉼鋲陃靐鞆鞞鞸餅餠鮩疒"},
{@"Bo",@"拨波播泊博伯驳玻剥薄勃菠钵搏脖帛般柏舶渤铂箔膊魄卜礴跛檗亳鹁踣啵蕃簸钹饽擘仢佛侼僠僰剝募哱噃嚗壆妭孛孹嶓帗彴怕愽懪拍拔挬撥擗暴服柭桲榑檘欂殕泼浡淿湐潑潘瀑煿爆牔犦犻狛猼瓝瓟番癶發白百皪盋砵碆磻礡秡穛笩箥簙簿糪紴缽肑胉艊艴苩茀茷菩葧蒲蔔蔢薜蘖蘗蚾袚袯袹襎襏襮詙譒豰趵跑蹳郣鈸鉑鉢鋍鎛鑮镈餑餺馎馛馞駁駮驋髆髉鮁鮊鱍鲅鲌鵓掰"},
{@"Bu",@"不步补布部捕卜簿哺堡埠怖埔瓿逋晡钸钚醭卟佈僕勏吥咘埗婄尃峬庯廍悑抪拊捗捬撲擈柨歨歩溥獛秿箁篰荹蔀薄補誧踄輹轐郶鈈鈽附陠鞴餔餢鯆鳪鵏鸔"},
{@"Ca",@"擦拆礤嚓傪囃攃橴磣礸蔡遪"},
{@"Cai",@"才菜采材财裁猜踩睬蔡彩倸偲啋埰婇寀戝扐採揌棌綵縩纔財跴"},
{@"Can",@"蚕残掺参惨惭餐灿骖璨孱黪粲傪儏參叄叅喰嘇噆囋嬠嬱嵾慘慙慚憯戔摲朁殘淺湌澯燦爘穇篸薒蝅蠶蠺謲蹔鏒飡飱驂鯵鰺鲹黲"},
{@"Cang",@"藏仓沧舱苍伧仺倉傖凔匨嵢欌滄濸獊瑲篬罉臧艙蒼蔵螥賶鑶鶬鸧"},
{@"Cao",@"草操曹槽糙嘈艚螬漕傮屮嶆愺慅慒懆撡曺澡肏艸艹蓸褿襙造鄵鏪鐰騲鼜"},
{@"Ce",@"册侧策测厕恻側冊厠墄嫧帻幘廁惻憡拺敇柵栅測畟笧筞筴箣簎粣荝萗萴蓛赦齰刂"},
{@"Cen",@"参岑涔參叄叅嵾梣汵硶穇笒篸膥"},
{@"Ceng",@"曾层蹭噌僧增層嶒橧竲繒缯驓"},
{@"Ceok",@"硛硳"},
{@"Ceom",@"岾"},
{@"Ceon",@"猠"},
{@"Ceor",@"乽"},
{@"Cha",@"查插叉茶差岔搽察茬碴刹诧楂槎镲衩汊馇檫姹杈锸嚓仛侘偛剎嗏土垞奼岎嵖扠扱挿捈捷接揷摖斜査梌猹疀秅紁肞臿艖芆苴荖荼褨訍詧詫蹅釵銟鍤鎈鑔钗靫餷喳"},
{@"Chai",@"柴拆差豺钗瘥虿侪儕勑叉喍囆扠搓查犲祡茈茝蔕蠆袃訍釵齜龇"},
{@"Chan",@"产缠掺搀阐颤铲谗蝉馋觇婵蒇谄冁廛孱蟾羼镡忏潺禅骣躔澶丳亶佔僝僤儃儳兎兔刬剗剷劖単厘啴單嘽嚵囅團墠壥嬋嬗崭嵼嶃嶄巉幝幨憚懴懺掸摌摲摻撣攙斺旵梴棎榐欃毚沾浐渐湹滻漸潹瀍瀺灛煘燀獑產産硟磛禪簅緂緾繟繵纏纒胀脠艬苫蕆螹蟬蟺袩裣裧襌襜襝覘誗諂譂讇讒讖谶蹍辿鄽酁醦鉆鋋鋓鏟鑱镵閳闡韂顫饞"},
{@"Chang",@"长唱常场厂尝肠畅昌敞倡偿猖裳鲳氅菖惝嫦徜鬯阊怅伥昶苌娼仧倀倘僘償儻兏厰嘗嚐場塲尙尚廠悵晿暢棖椙淌淐焻玚琩瑒瑺瓺甞畼脹腸膓萇蟐裮誯鋹鋿錩鏛锠長镸閶闛韔鯧鱨鲿鼚"},
{@"Chao",@"朝抄超吵潮巢炒嘲剿绰钞怊焯耖晁仦仯劋勦唠嘮巐巣弨摷槱樔欩涛漅濤焣煼牊眧窲粆紹綤綽縐繛绉绍罺觘訬謅謿诌趠趫轈鄛鈔麨鼂鼌"},
{@"Che",@"车撤扯掣彻尺澈坼砗伡俥偖勶呫唓喢多夛奲宅屮徹揊摰撦斥池烢烲焎爡瞮硨硩聅莗蛼詀謵車迠頙"},
{@"Chen",@"趁称辰臣尘晨沉陈衬橙忱郴榇抻谌碜谶宸龀嗔伧琛侲傖儭嚫堪塡填塵墋夦帘愖捵揨敐曟枕桭棧棽樄櫬沈湛瀋烥煁疢疹瘎瘨眈瞋硶磣稱綝縝缜肜胂茞莀莐蔯薼螴襯訦諃諶謓謲讖賝贂趂趻跈踸軙迧醦鈂鍖闖闯陳霃鷐麎齓齔秤"},
{@"Cheng",@"成乘盛撑称城程呈诚惩逞骋澄橙承塍柽埕铖噌铛酲晟裎枨蛏丞瞠乗伥侱倀偁僜净呛嗆埩堘塖娍宬峸嵊庱徎徴徵悜憆憕懲抢挰掁搶摚摤撐撜敞朾棖棦椉槍樘橕橖檉檙氶泟洆浈浧浾淨溗澂瀓瀞爯牚珵珹琤瑲畻盯睈矃碀稱穪窚竀筬絾緽脀脭荿虰蟶觕誠赪赬趟踜蹦郕郢醒鋮鎗鏳鏿鐺阷靗頳饓騁騬鯎黨秤"},
{@"Chi",@"吃尺迟池翅痴赤齿耻持斥侈弛驰炽匙踟坻茌墀饬媸豉褫敕哧瘛蚩啻鸱眵螭篪魑叱彳笞嗤傺佁侙俿剟勅卙卶叺呎呬呮呹哆啸喜喫嘨嘯噄噭坘垑奓她妛屟岻彨彲徲恜恥慗慸憏懘扡抬抶拆拕拖拸捇提搋摛摴攡杘柅柢樆欼歗歭歯汖沱沶治泜淔湁滞滯漦灻烾熾狋瓻痓痸瘈癡眙瞝祇离移竾筂箈箎粚糦絺翄翤翨耛肔胝胣胵脪腟芪茬荎莉菭蚇蚳蛇蝭袲袳裭訵誀誃誺謘謻貾赿趍趐趩跅跢跮踅踶軧迡迣遅遟遫遲邌鉓鉹銐鍉離雴飭飾餝饎饰馳騺驪骊鳷鴟鵄鵣鶒鶗鶙鷘麶黐齒齝郗"},
{@"Chong",@"冲重虫充宠崇涌种艟忡舂铳憧茺偅傭僮喠嘃埫寵崈徸憃揰摏樁沖浺漴潼烛爞珫痋盅祌種緟罿翀茧蝩蟲衝褈蹖蹱酮銃隀"},
{@"Chou",@"抽愁臭仇丑稠绸酬筹踌畴瞅惆俦帱瘳雠丒侴偢儔吜嚋圳妯婤媿嬦幬怞懤扭掫揄搊擣杻杽栦椆檮殠溴燽牰犨犫畤疇皗盩眣矁篘籌紬絒綢臰菗薵裯詶謅譸讎讐诌诪跾躊遚酧醔醜醻鈕钮雔魗鮘鯈鲋"},
{@"Chu",@"出处初锄除触橱楚础储畜滁矗搐躇厨雏楮杵刍怵绌亍憷蹰黜蜍樗俶傗儊儲処助嘼埱媰岀幮廚慉懨拀摢摴敊斶柠椘榋槒橻檚櫉櫖櫥欪歜涂淑滀濋炪犓珿琡璴硫礎禇竌竐篨絀絮耝耡臅芻菆著蒢蒭蓫蕏藸處蟵蠩褚觕觸詘諔諸诎诸豖豠貙趎跦踀踰躕鄐鉏鋤閦雛鶵鸀齣齭齼屮"},
{@"Chua",@"撮欻歘"},
{@"Chuai",@"揣膪啜嘬搋踹欼腄膗"},
{@"Chuan",@"穿船传串川喘椽氚遄钏舡舛巛傳僢剶圌堾惴掾暷歂汌猭玔瑏甎篅膞舩荈賗踳踹輲釧镩鶨"},
{@"Chuang",@"窗床闯创疮幢怆仓仺倉傸刅刱剏剙創噇囪囱愴戧摐朣橦漴漺牀牎牕瘡磢窓窻膧舂葱蔥闖"},
{@"Chui",@"吹垂炊锤捶椎槌棰陲倕圌埀惙搥桘箠腄菙郵錘鎚顀鬌魋龡"},
{@"Chun",@"春唇纯蠢醇淳椿蝽莼鹑偆僢堾媋惷旾暙朐杶楯槆橁櫄沌浱湻滣漘犉瑃睶箺純肫胊脣膞芚萅萶蒓蓴賰踳輇輴辁醕錞陙鯙鰆鶉鶞"},
{@"Chuo",@"戳绰踔啜龊辍促吷嚽娕娖婥婼孎惙拺擉斫歠涰淖焯磭箹簇綴綽繛缀腏荃蔟趠趵跿踱躇輟辵辶逴酫醛鋜錣鏃鑡镞齪齱"},
{@"Ci",@"次此词瓷慈雌磁辞刺茨伺疵赐差兹呲鹚祠糍佌佽偨刾厕厠司呰啙垐堲姕嬨嵯嵳庛廁措朿枱柌柴栜栨泚滋澬濨玼珁甆皉礠粢絘縒胔茈茦茲荠莿萕薋薺蚝蛓螅螆蠀詞賜赼趀趑跐辝辤辭鈶飺餈骴髊鮆鴜鶿鷀齹"},
{@"Cis",@"嗭"},
{@"Cong",@"从丛葱匆聪囱琮枞淙璁骢苁偬叢囪婃孮従徖從忩怱悤悰慒憁暰棇楤樅樬樷欉漎漗潀潈潨灇焧熜燪爜瑽瞛碂窗篵総緫縦縱總繱纵聡聦聰茐菆蓯蔥藂蟌誴謥賨賩鏦騘驄"},
{@"Cou",@"凑楱辏腠奏揍族湊玼簇蔟薮藪趋趣趨輳"},
{@"Cu",@"粗醋簇促卒徂猝蔟蹙酢殂蹴且卆噈娕娖媨怚憱戚捽瘄瘯皻縐縬绉脨蔍蔖觕誎趋趗趣趥趨踀踓踤踧蹵錯错顣麁麄麆麤鼀"},
{@"Cuan",@"窜蹿篡攒汆爨镩撺僔巑攅攛攢昕櫕欑殩濽灒熶穳窾竄篹簒菆襸躥鋑鑹"},
{@"Cui",@"催脆摧翠崔淬衰瘁粹璀啐悴萃毳榱乼伜体倅凗啛墔察崒崪嶉忰慛椊槯漼濢焠熣獕琗疩皠磪竁粋紣綷縗繀缞翆脃脺膬膵臎襊趡踤鏙隹顇"},
{@"Cun",@"村寸存蹲忖皴侟刌吋墫拵洊浚澊竴籿踆邨"},
{@"Cuo",@"错撮搓挫措磋嵯厝鹾脞痤蹉瘥锉矬剉剒夎嵳庴摧昔最棤澨營瑳睉縒莝莡蒫蓌蔖虘襊諎躜躦逪遳酂酇醝銼錯髊鹺齹"},
{@"Da",@"大答达打搭瘩塔笪耷哒褡疸怛靼妲沓嗒鞑亣剳匒呾咑噠垯塌墶憚搨撘橽毼汏溚炟燵畗畣眔矺笚繨羍胆荅荙薘蟽觰詚跶躂迏迖迭逹達鎉鎝鐽韃龖龘"},
{@"Dai",@"带代呆戴待袋逮歹贷怠傣大殆呔玳迨岱甙黛骀绐埭侢叇嘚垈帒帯帶廗懛曃柋棣毒汏瀻獃瑇箉簤紿緿艜蔕蚮蝳螮襶詒诒貸跢蹛軑軚軩轪逯遞遰隶霴靆馱駄駘驮鮘鴏黱"},
{@"Dan",@"但单蛋担弹掸胆淡丹耽旦氮诞郸惮石疸澹瘅萏殚眈聃箪赕儋啖丼亶伔倓僤儃冄冉刐勯匰単呾唌啗啿單嘾噉噡嚪坛壇妉娊媅帎弾彈忱怛惔愖憚憺憾抌撢撣擔柦檐欿殫沊泹湛潭澶澸燀狚玬瓭甔疍癉癚皽砃禫窞簞紞繵耼聸腅膻膽蜑蜒蟺衴褝襌襜覘觇觛訑誕譂贉贍赡蹛躭鄲酖醈霮頕餤饏馾駳髧鴠黕黮黵卩亻"},
{@"Dang",@"当党挡档荡谠铛宕菪凼裆砀偒儅噹圵场垱場壋婸崵嵣愓擋攩檔欓氹潒澢灙烫燙珰瑒璗璫瓽當瘍盪瞊碭礑筜簜簹艡蕩蘯蟷襠譡讜趤逿鐺闣雼黨"},
{@"Dao",@"到道倒刀岛盗稻捣悼导蹈祷帱纛忉焘氘叨俦儔受啁嘄噵壔宲導屶島嶋嶌嶹幬忑惆捯搗擣朷椡槝檤檮洮涛濤燾瓙盜禂禱稲箌絩翢翿舠菿薵虭衜衟裯軇醻釖陦陶隝隯魛鱽鳥鸟刂"},
{@"De",@"的地得德底锝嘚徳恴悳惪棏淂登鍀陟"},
{@"Dei",@"得哋"},
{@"Dem",@"揼"},
{@"Den",@"扥扽"},
{@"Deng",@"等灯邓登澄瞪凳蹬磴镫噔嶝戥簦僜墱嬁憕橙櫈燈璒竳艠覴豋鄧鐙隥"},
{@"Di",@"地第底低敌抵滴帝递嫡弟缔堤的涤提笛迪狄翟蒂觌邸谛诋嘀柢骶羝氐棣睇娣荻碲镝坻籴砥仾俤偙僀儥勺厎呧唙啇啲啻嚁坔坘埅埊埞墆墑墬奃媂嵽嶳廸弔弚弤彽怟慸扚拞掋揥摕敵旳杓杕枤梊梑楴樀浟渧滌焍牴玓珶甋疐眱碮磾祶禘篴糴約締约聜肑胝腣芍苐苖莜菂菧蓧蔋蔐蔕藋藡蚳蝃螮袛覿觝詆諟諦豴赿趆踧踶蹄蹏蹢軧逐逓逮遞適遰釱鉪鍉鏑阺隄隶靮鞮頔題题馰髢鬄魡鯳鸐"},
{@"Dia",@"嗲"},
{@"Dian",@"点电店殿淀掂颠垫碘惦奠典佃靛滇甸踮钿坫阽癫簟玷巅癜佔傎厧唸埝墊壂奌婝婰嵮巓巔扂拈攧敁敟椣槇槙橂橝沾涎湺澱琔痶瘨癲磹腍蒧蕇蜓蜔詀蹎鈿電頕顚顛驔點齻丶"},
{@"Diao",@"掉钓叼吊雕调刁碉凋鸟铞铫鲷貂伄佻倜刀刟奝嬥屌弔弴彫扚挑椆殦汈淍琱瘹瞗矵稠窎窵竨簓粜糶絩綢绸莜蓧藋虭蛁蜩訋誂調踔軺轺釣鈟銱鋽錭鑃雿颩骠魡鮉鯛鳥鳭鵃鵰鸼鼦"},
{@"Die",@"爹跌叠碟蝶迭谍牒堞瓞揲蹀耋鲽垤喋佚咥哋啑峌崼嵽幉怢恎惵戜挃挕昳曡柣楪槢殜氎泆涉渉渫牃畳疂疉疊眣眰窒絰绖耊胅至臷艓苵蜨螲褋褶褺詄諜趃跕跮踢蹛軼轶鐡鐵镻鞢鮙鰈鰨鳎踮"},
{@"Dim",@"嚸"},
{@"Ding",@"顶定盯订叮丁钉鼎锭町玎铤腚碇疔仃耵酊啶奠奵嵿帄忊掟椗汀濎灯甼矴碠磸聢艼萣葶薡虰訂釘鋌錠鐤靪頂顁飣饤"},
{@"Diu",@"丢铥丟銩颩"},
{@"Dong",@"动东懂洞冻冬董栋侗恫峒鸫垌胨胴硐氡岽咚倲働凍動勭埬墥姛娻嬞峝崠崬戙挏揰昸東桐棟氭涷湩烔燑狫甬笗筒筩箽絧腖苳菄蕫蝀衕詷諌迵酮霘駧騆鮗鯟鶇鶫鼕夂"},
{@"Dou",@"都斗豆逗陡抖痘兜读蚪窦篼蔸乧侸兠凟剅吺唗投斣枓梪橷毭氀浢渎瀆瞗窬竇脰艔荳讀逾郖酘酡鈄鋀钭閗闘阧餖饾鬥鬦鬪鬬鬭"},
{@"Du",@"读度毒渡堵独肚镀赌睹杜督都犊妒顿蠹笃嘟渎椟牍黩髑芏儥凟剢剫匵厾噣土塗妬嬻宅帾斁晵暏樚樞橐櫝殬殰涜瀆牘犢獨琽瓄皾睪秺竇竺笁篤纛荰蝳螙蠧裻襡襩覩詫読讀讟诧豄賭贕醏錖鍍鍺鑟锗闍阇陼靯韇韣韥頓騳黷"},
{@"Duan",@"段短断端锻缎椴煅簖偳剬塅媏彖斷毈瑖碫篅籪緞耑腶葮褍踹躖鍛鍴"},
{@"Dui",@"对队堆兑敦镦碓怼憝兊兌垖埻塠夺奪対對嵟憞懟搥杸濧濻瀢瀩痽磓祋綐膭薱謉譈譵追鈗銳鋭錞鎚鐓鐜锐陮隊頧鴭"},
{@"Dul",@"乧"},
{@"Dun",@"吨顿蹲墩敦钝盾囤遁不趸沌盹镦礅炖砘伅俊噸墪壿庉忳惇憞撉撴楯橔潡燉犜獤碷腞腯蜳豚踲蹾躉逇遯鈍鐓鐜頓驐"},
{@"Duo",@"多朵夺舵剁垛跺惰堕掇哆驮度躲踱沲咄铎裰哚缍亸仛兊兌兑凙刴剟剫吋喥嚉嚲垜埵墮墯夛奪奲媠嫷尮崜嶞憜挅挆捶揣敓敚敠敪朶杂杕枤柁柂柮桗棰椯橢毲沰沱澤痥硾綞茤袳詑誃貀趓跢跥跿躱軃郸鄲鈬錞鍺鐸锗陀陊陏隋隓飿饳馱駄鬌鮵鵽點"},
{@"E",@"饿哦额鹅蛾扼俄讹阿遏峨娥恶厄鄂锇谔垩锷阏萼苊轭婀莪鳄颚腭愕呃噩鹗屙亚亜亞伪佮侉偔偽僞僫匎匼卾吪呝咢咹哑唖啈啊啐啞噁囐囮垭埡堊堨堮妸妿姶娾娿媕屵岋峉峩崿庵廅悪惡戹搕搤搹擜曷枙椏櫮欸歞歹歺洝涐湂玀珴琧痷皒睋砈砐砨砵硆硪磀礘胺蒍蕚蘁蚅蝁覨訛詻誐諤譌讍豟軛軶輵迗遌遻邑鈋鋨鍔鑩閜閼阨阸隘頞頟額顎餓餩騀鬲魤魥鰐鰪鱷鴳鵈鵝鵞鶚齃齶齾"},
{@"En",@"恩摁蒽嗯奀峎煾饐唔"},
{@"Eng",@"鞥"},
{@"Eo",@"仒"},
{@"Eol",@"乻"},
{@"Eom",@"欕"},
{@"Eos",@"旕"},
{@"Er",@"而二耳儿饵尔贰洱珥鲕鸸佴迩铒侕児兒刵咡唲嬭尒尓峏弍弐杒栭栮樲毦洏渪濡爾粫耏聏胹臑荋薾衈袻誀貮貳趰輀輭轜邇鉺陑陾隭餌駬髵髶鮞鴯"},
{@"Fa",@"发法罚伐乏筏阀珐垡砝佱傠姂廢彂拔拨撥栰橃汎沷泛灋琺疺発發瞂笩罰罸茷蕟藅貶贬醗醱鍅閥髪髮"},
{@"Fan",@"反饭翻番犯凡帆返泛繁烦贩范樊藩矾钒燔蘩畈蕃蹯梵幡仮伋凢凣勫匥噃墦奿婏嬎嬏嬔忛憣払拚旙旛杋柉棥楓橎氾汎渢滼瀪瀿煩犿璠畨盕礬笲笵範籓籵緐繙羳膰舤舧舩薠蟠蠜袢襎訉販軓軬轓辺釩鐇颿飜飯飰鱕鷭攵犭"},
{@"Fang",@"放房防纺芳方访仿坊妨肪钫彷邡枋舫鲂倣匚埅堏旊昉昘昞汸淓牥瓬眆眪祊紡蚄訪趽鈁錺雱髣魴鰟鳑鴋鶭"},
{@"Fei",@"非飞肥费肺废匪吠沸菲诽啡篚蜚腓扉妃斐狒芾悱镄霏翡榧淝鲱绯痱俷剕厞墢奜婓婔屝廃廢怫拂昲暃曊朏杮柹棐橃橨櫠渄濷犻猆琲疿癈砩祓笰紼緋绋胇胏胐茀茇萉蕜蕟蕡蜰蟦裴裵裶襏誹費鐨陫靅靟飛飝餥馡騑騛髴鯡鼣鼥"},
{@"Fen",@"分份芬粉坟奋愤纷忿粪酚焚吩氛汾棼瀵鲼玢偾鼢僨匪喷噴坆坋墳奔奮妢岎帉幩弅愍憤扮拚敃昐朆朌枌梤棻橨歕濆炃燌燓燔獖盼瞓砏秎竕糞紛羒羵翂肦膹葐蒶蕡蚠蚡衯訜豮豶賁贲躮轒鈖錀鐼隫雰頒颁餴饙馚馩魵鱝鳻黂黺鼖"},
{@"Feng",@"风封逢缝蜂丰枫疯冯奉讽凤峰锋烽砜俸酆葑沣唪仹偑僼凨凬凮埄堸夆妦寷峯崶捀捧摓桻楓檒沨泛浲渢湗溄漨灃炐焨煈熢犎猦琒甮瘋盽碸篈綘縫肨舽艂莑蘕蘴蚌覂諷豊豐賵赗逄鄷鋒鎽鏠靊風飌馮鳯鳳鴌鵬鹏麷覅"},
{@"Fo",@"佛仏仸坲梻"},
{@"Fou",@"否缶不垺妚炰紑缹缻芣衃雬鴀"},
{@"Fu",@"副幅扶浮富福负伏付复服附俯斧赴缚拂夫父符孵敷赋辅府腐腹妇抚覆辐肤氟佛俘傅讣弗涪袱市甫釜脯腑阜咐黼砩苻趺跗蚨芾鲋幞茯滏蜉拊菔蝠鳆蝮绂绋赙罘稃匐麸凫桴莩孚馥驸怫祓呋郛芙艴黻不乀仅伕俌俛偩偪冨冹刜包呒咈哹哺嘸坿垘垺報妋姇娐婏婦媍嬎嬔宓尃岪峊巿帗弣彳彿復怀怤懯抙捊捬掊撫旉枎枹柎柫柭栿棴椨椱榑汱沕沸泭洑溥澓炥烰焤玞玸琈璷甶畉畐畗癁盙砆祔禣秿稪竎笰筟箁箙簠粰糐紨紱紼絥綍綒緮縛纀罦翇胕膚艀芣茀荂荴莆萉萯葍蓲蕧虙蚥蚹蛗蜅蝜衭袚袝複褔襆襥覄訃詂諨豧負費賦賻费踾軵輔輹輻还邚邞郍郙鄜酜酻釡鈇鉘鉜錇鍑鍢锫阝陚鞴韍韛韨頫颫颰駙髴鬴鮄鮒鮲鰒鳧鳬鳺鴔鵩鶝麩麬麱"},
{@"Ga",@"噶胳夹嘎咖轧钆伽旮尬尕尜呷嘠玍軋釓錷魀"},
{@"Gad",@"甴"},
{@"Gai",@"该改盖概钙芥溉戤垓丐陔赅乢侅匃匄咳姟峐忋摡晐杚核槩槪汽漑瓂畡磑祴絠絯胲荄葢蓋該豥賅賌郂鈣鎅閡阂阣隑骸"},
{@"Gan",@"赶干感敢竿甘肝柑杆赣秆旰酐矸疳泔苷擀绀橄澉淦尴坩个乹乾亁仠佄倝凎凲咁奸尲尶尷幹忓扞捍攼桿榦檊汗汵浛漧灨玕玵皯盰稈笴筸篢簳粓紺芉虷衦詌諴豃贑贛趕迀釬錎飦骭魐鰔鱤鳡鳱"},
{@"Gang",@"刚钢纲港缸岗杠冈肛扛筻罡戆亢伉冮剛堈堽岡崗戅戇抗掆棡槓溝焵牨犅犺疘矼碙綱罁罓肮釭鋼鎠阬頏颃"},
{@"Gao",@"高搞告稿膏篙羔糕镐皋郜诰杲缟睾槔锆槁藁勂吿咎夰峼暠槀槹橰檺櫜浩滜澔獋獔皐睪祮祰禞稁稾筶縞羙臯菒蒿藳誥鋯鎬韟餻髙鷎鷱鼛"},
{@"Ge",@"个各歌割哥搁格阁隔革咯胳葛蛤戈鸽疙盖屹合铬硌骼颌袼塥虼圪镉仡舸鬲嗝膈搿纥哿介佫佮個匌可吤呄嘅嘢噶彁愅戓戨扢挌擱敋杚槅櫊浩滆滒澔牫牱犵猲獦砝秴箇紇肐臈臵茖菏蓋蛒裓觡詥諽謌輵轕鉀鉻鉿鎑鎘鎶钾铪閘閣閤闸鞈鞷韐韚頜騔髂魺鮥鮯鰪鲄鴐鴚鴿鵅"},
{@"Gei",@"给"},
{@"Gen",@"跟根哏茛亘艮揯搄"},
{@"Geng",@"更耕颈梗耿庚羹埂赓鲠哽绠亙亢刯堩峺恆挭掶暅椩浭焿畊硬絙絚綆緪縆羮莄菮賡郉郠頸骾鯁鶊鹒"},
{@"Gib",@"喼"},
{@"Go",@"嗰"},
{@"Gong",@"工公功共弓攻宫供恭拱贡躬巩汞龚红肱觥珙蚣匑匔厷咣唝嗊塨宮幊廾愩慐拲杛杠栱渱熕碽篢糼紅羾虹蛩觵貢贑贛赣躳輁銾鞏髸魟龏龔"},
{@"Gou",@"够沟狗钩勾购构苟垢句岣彀枸鞲觏缑笱诟遘媾篝佝傋冓区區呴坸夠姤抅拘搆撀構泃溝煹玽簼緱耇耈耉茩蚼袧褠覯訽詬豰豿購軥鈎鉤雊韝鮈鴝鸜鸲"},
{@"Gu",@"古股鼓谷故孤箍姑顾固雇估咕骨辜沽蛊贾菇梏鸪汩轱崮菰鹄鹘钴臌酤呱鲴诂牯瞽毂锢牿痼觚蛄罟嘏傦僱凅劷告哌唂唃啒嗀嗗堌夃嫴尳峠崓怘愲扢抇枯柧棝榖榾橭櫎泒淈滑濲瀔焸瓠皋皷盬硲磆祻稒穀笟箛篐糓縎罛羖胍脵臯苦苽蓇薣蛌蠱角詁賈軱軲轂逧鈲鈷錮頋顧餶馉骰鮕鯝鴣鵠鶻鼔"},
{@"Gua",@"挂刮瓜寡剐褂卦呱胍鸹栝诖冎剮劀叧咶咼啩坬惴掛歄焻煱絓緺罣罫舌苽詿諣趏踻銛銽铦颪颳騧鴰括"},
{@"Guai",@"怪拐乖掴叏哙噲夬恠枴柺箉罫"},
{@"Guan",@"关管官观馆惯罐灌冠贯棺纶盥矜莞掼涫鳏鹳倌丱串卝婠悹悺慣懽摜斡果桄樌櫬權毌沦泴淉淪潅爟琯瓘痯瘝癏矔礶祼窤筦綸罆舘菅萖蒄覌観觀貫躀輨遦錧鏆鑵閞関闗關雚館鰥鱞鱹鳤鵍鸛"},
{@"Guang",@"光广逛桄犷咣胱侊俇僙垙姯広廣恍扩挄撗擴横櫎欟洸潢灮炗炚炛烡獷珖硄臦臩茪趪輄迋銧黆"},
{@"Gui",@"归贵鬼跪轨规硅桂柜龟诡闺瑰圭刽傀癸炔庋宄桧刿鳜鲑皈匦妫晷簋炅亀伪佹偽僞劊劌匭匮匱厬哇垝姽娃媯嫢嬀嶡嶲巂帰庪廆恑摫撌攰攱昋朹桅椝椢概槣槶槻槼檜櫃櫰櫷歸氿沩洼湀溎潙珪璝瓌癐瞆瞡瞶硊祈祪禬窐筀簂絵繪绘胿膭茥蓕蘬蛫螝蟡袿襘規觖觤詭謉貴赽趹蹶軌邽郌閨陒隗雟鞼騩鬶鬹鮭鱖鱥鳺鴂鴃龜"},
{@"Gun",@"滚棍辊鲧衮磙绲丨惃棞浑混渾滾琯璭睔睴緄緷蓘蔉袞裷謴輥錕锟鮌鯀鰥鳏"},
{@"Guo",@"过国果裹锅郭涡埚椁聒馘猓崞掴帼呙虢蜾蝈划咶咼唬啯嘓囗囯囶囻圀國埻堝墎幗彉彍惈慖搓摑敋枸楇槨櫎活淉渦漍濄瘑矌簂粿綶聝腂腘膕菓蔮蜮蝸蟈蠃褁輠過鈛錁鍋鐹锞餜馃"},
{@"Ha",@"哈蛤虾铪丷吓呵奤妎為獬蝦鉿"},
{@"Hai",@"还海害咳氦孩骇骸亥嗨醢胲侅咍咴嗐嚡塰拸欬烸猲絯還郂酼閡阂頦颏餀饚駭駴嘿"},
{@"Hal",@"乤"},
{@"Han",@"喊含汗寒汉旱酣韩焊涵函憨翰罕撼捍憾悍邯邗菡撖瀚阚顸蚶焓颔晗鼾仠佄傼兯凾厂厈咁哻唅嚂圅垾娢嫨屽崡嵅嵌忓感扞攼旰晘晥暵桿梒椷榦欦歛汵泔浛浫涆淊淦滩漢澉澏澣灘熯爳猂琀甘甝皔睅矸笒筨糮肣莟蔊蘫虷蛿蜬蜭螒譀谽豃軒轩釬鈐銲鋎鋡钤閈闞闬雗靬韓頇頜頷顄顩馠馯駻鬫魽鳱鶾"},
{@"Hang",@"行巷航夯杭吭颃沆绗珩垳妔忼斻桁炕狼笐筕絎肮苀蚢貥迒邟酐頏魧"},
{@"Hao",@"好号浩嚎壕郝毫豪耗貉镐昊颢灏嚆蚝嗥皓蒿濠薅傐儫呺哠唬嘷噑妞恏悎昦晧暠暤暭曍椃淏滈滜澔灝獆獋皋皜皞皡皥睾秏竓籇翯聕膠臯茠薃薧藃號虠蠔諕譹鄗鎒鎬鐞顥鰝"},
{@"He",@"和喝合河禾核何呵荷贺赫褐盒鹤菏貉阂涸吓嗬劾盍翮阖颌壑诃纥曷佫呙呼咊咼哈哬啝喛嗃嗑噈嚇垎姀害寉峆惒愒抲挌揭敆柇格楁欱毼洽渇渮渴湼澕焃煂熆熇燺爀犵狢癋皬盇盉硅碋礉秴篕籺粭紇繳缴翯苛萂藃藿蚵蝎螛蠚袔覈訶訸詥謞貈賀輅轄辂辖郃鉌鑉閡闔阋隺霍靍靎靏鞨頜餄餲饸鬩魺鲄鵠鶡鶮鶴鸖鹄鹖麧齃齕龁龢"},
{@"Hei",@"黑嗨嬒潶黒嘿"},
{@"Hen",@"很狠恨痕佷哏噷拫掀艮詪鞎"},
{@"Heng",@"横恒哼衡亨行桁珩蘅佷啈堼姮恆悙橫涥烆狟胻脝訇鑅鴴鵆鸻"},
{@"Ho",@"乊"},
{@"Hol",@"乥"},
{@"Hong",@"红轰哄虹洪宏烘鸿弘讧訇蕻闳薨黉荭泓仜厷叿吰吽哅唝嗊嚝垬妅娂宖屸巆彋愩揈撔晎汪汯浤浲港渱渹潂澋澒灴焢玒玜瓨硔硡竑竤篊粠紅紘紭綋纮羾翃翝耾舼苰葒葓訌謍谹谼谾軣輷轟鈜鉷銾鋐鍧閎閧闀闂霐霟鞃鬨魟鴻黌"},
{@"Hou",@"后厚吼喉侯候猴鲎篌堠後逅糇骺瘊吽呴垕帿洉犼睺矦翭翵腄葔詬诟豞郈鄇銗鍭餱鮜鯸鱟鲘齁"},
{@"Hu",@"湖户呼虎壶互胡护糊弧忽狐蝴葫沪乎戏核和瑚唬鹕冱怙鹱笏戽扈鹘浒祜醐琥囫烀轷瓠煳斛鹄猢惚岵滹觳唿槲乕俿冴匢匫喖嗀嗃嘑嘝嚛垀壷壺姱婟媩嫭嫮寣帍幠弖怘恗戯戱戲戶戸抇搰摢擭昈昒曶枑楛楜槴歑殻汩汻沍泘洿淈淲淴滬滸濩瀫焀熩瓡瓳礐穫箎箶簄粐絗綔縎縏縠羽胍膴舗芐芔芦芴苦苸萀蔛蔰虍虖虝螜衚觷許謼護许豰軤鄠鈷鋘錿鍙鍸钴隺雇雐雽韄頀頶餬鬍魱鯱鰗鱯鳠鳸鴩鵠鶘鶦鶮鶻鸌"},
{@"Hua",@"话花化画华划滑哗猾豁铧桦骅砉侉劃劐吪哇嘩埖姡婲婳嫿嬅学學崋找搳摦撶敌杹椛槬樺檴浍澅澮獪璍畫畵硴磆稞粿糀繣腂舙芲華蒍蕐蘤蘳螖觟話誮諙諣譁譮輠釪釫鋘錵鏵驊魤鮭鲑鷨黊"},
{@"Huai",@"坏怀淮槐徊划踝佪咶喟嘳圳坯壊壞懐懷櫰瀤耲蘹蘾褢褱"},
{@"Huan",@"换还唤环患缓欢幻宦涣焕豢桓痪漶獾擐逭鲩郇鬟寰奂锾圜洹萑缳浣喚喛嚾圂垸堚奐孉寏峘嵈巜愌懁懽換援攌梙槵欥歓歡汍渙潅澣澴灌烉煥犿狟瑍瑗環瓛瘓皖眩睆睔瞏瞣糫絙綄緩繯羦肒脘荁萈蒝藧螌蠸讙豩豲貆貛輐轘還酄鉮鍰鐶镮闤阛雈雚驩鯇鯶鰀鴅鵍鸛鹮鹳"},
{@"Huang",@"黄慌晃荒簧凰皇谎惶蝗磺恍煌幌隍肓潢篁徨鳇遑癀湟蟥璜偟兤喤堭塃墴奛媓宺崲巟怳愰揘晄曂朚楻榥櫎汻洸滉炾熀熿爌獚瑝皝皩穔縨艎芒茫葟衁詤諻謊趪鍠鎤鐄锽韹餭騜鰉鱑鷬黃"},
{@"Hui",@"回会灰绘挥汇辉毁悔惠晦徽恢秽慧贿蛔讳徊卉烩诲彗浍珲蕙喙恚哕晖隳麾诙蟪茴洄咴虺荟缋佪僡儶匯叀嘒噅噕噦嚖囘囬圚堕墮壞婎媈孈寭屷幑廆廻廽彙彚徻恛恵憓懳拻揮撝暉暳會桧椲楎槥橞檅檓檜櫘毀毇沬泋洃涣湏滙潓澮濊瀈灳烜烠烣煇煒燬燴獩琿璤璯痐瘣皓眭睢睳瞺禈穢篲絵繢繪翙翚翬翽芔蒐蔧薈薉藱蘬蘳虫蚘蛕蜖螝袆褘襘詯詼誨諱譓譭譮譿豗賄輝輠违迴逥違銊鏸鐬闠阓隓靧鞼韋韢韦頮顪餯鮰鰴鼿齀溃"},
{@"Hun",@"混昏荤浑婚魂阍珲馄溷诨俒倱圂婫忶惛惽慁挥捆掍揮昆昬梡梱棍棔殙涽渾湣湷焄焝琿眃睧睯緄緍緡繉绲缗葷蔒觨諢轋閽顐餛餫鼲"},
{@"Huo",@"或活火伙货和获祸豁霍惑嚯镬耠劐藿攉锪蠖钬夥佸俰剨化吙咊咟嗀嚄嚿奯姡扮捇掝搉擭旤曤楇檴沎湱漷濊濩瀖灬焃獲瓠癨眓矆矐礊禍秮秳穫篧耯腘膕臛艧萿蒦諕謋豰貨越趏過邩鈥鍃鑊閄隻雘靃騞魊"},
{@"Hwa",@"夻"},
{@"I",@"乁"},
{@"Ji",@"几及急既即机鸡积记级极计挤己季寄纪系基激吉脊际汲肌嫉姬绩缉饥迹棘蓟技冀辑伎祭剂悸济籍寂期其奇忌齐妓继集给革击圾箕讥畸稽疾墼洎鲚屐齑戟鲫嵇矶稷戢虮诘笈暨笄剞叽蒺跻嵴掎跽霁唧畿荠瘠玑羁丌偈芨佶赍楫髻咭蕺觊麂骥殛岌亟犄乩芰哜丮乁亼伋倚偮僟兾刉刏剤劑勣卙卟卽厝叝吇呰喞嗘嘰嚌坖垍堲塉墍妀姞姼尐居屰岋峜嵆嶯帺幾庴廭彐彑彶徛忣惎愱憿懠懻揖揤撃撠撽擊擠攲敧旡旣暩曁枅梞棋楖極槉槣樭機橶檕檝檵櫅櫭毄汥泲洁淁済湒漃漈潗濈濟瀱焏犱狤猗璂璣璾畟疵痵瘵癠癪皀皍睽瞉瞿磯禝禨秸稘稩穄穊積穖穧筓箿簊簎粢糭紀紒級結給継緝縘績繋繫繼结罽羇羈耤耭胔脔脨膌臮艥艻芶苙茍茤莋萁萕葪蒩蔇蕀蕲薊薺藉蘄蘎蘮蘻虀蜡蝍螏蟣蟻蟿蠀裚褀襀襋覉覊覘覬覿觇觌觙觭計訐記誋諅諔譏譤讦谻谿賫賷趌趞跂跡踑踖踦蹐蹟躋躤躸輯轚郅郆鄿銈銡錤鍓鏶鐖鑇鑙隔際隮雞雦雧霵霽鞊鞿韲颳飢饑騎驥骑鬾魝魢魥鮆鯚鯯鯽鰶鰿鱀鱭鱾鳮鵋鶏鶺鷄鷑鸄鹡齊齌齍齎齏"},
{@"Jia",@"家加假价架甲佳夹嘉驾嫁枷荚颊钾稼茄贾铗葭迦戛浃镓痂恝岬跏嘏伽胛笳珈瘕郏袈蛱傢價叚呷咖唊圿埉夓夾婽宊幏徦忦戞扴抸押拁拮挈挟挾揩揳擖斚斝暇梜椵榎榢槚檟毠泇浹犌猰猳玾筴糘耞脥腵莢蛺蝦袷裌豭貑賈跲郟鉀鉫鉿鋏鎵铪頡頬頰颉餄饸駕駱骆骱鴶鵊麚"},
{@"Jian",@"见件减尖间键贱肩兼建检箭煎简剪歼监坚奸健艰荐剑渐溅涧鉴浅践捡柬笺俭碱硷拣舰槛缄茧饯翦鞯戋谏牮枧腱趼缣搛戬毽菅鲣笕谫楗囝蹇裥踺睑謇鹣蒹僭锏湔侟俴倹偂傔僣儉冿前剣剱劍劎劒劔喊囏堅堑堿塹墹姦姧孱寋帴幵弿彅徤惤戔戩挸揀揃揵撿擶攕旔暕朁柙栫梘検椷椾榗樫橌橏橺檢檻櫼殱殲洊涀淺減湕滥漸澗濫濺瀐瀳瀸瀽熞熸牋犍猏玪珔瑊瑐監睷瞯瞷瞼碊磵礀礆礛稴筧箋箴篯簡籈籛糋絸緘縑繝繭纎纖纤聻臶艦艱茛菺葌葏葥蔪蕑蕳薦藆虃螹蠒袸襇襉襺見覵覸詃諓諫謭譖譼譾谮豜豣賎賤趝跈踐轞醎醶釰釼鈃銒銭鋄鋑鋻錢錬錽鍊鍳鍵鎫鏩鐗鐧鐱鑑鑒鑬鑯鑳钘钱閒間险險靬鞬韀韉餞餰馢騫骞鬋鰎鰔鰜鰹鳒鳽鵳鶼鹸鹹鹻鹼麉黚黬廴"},
{@"Jiang",@"将讲江奖降浆僵姜酱蒋疆匠强桨虹豇礓缰犟耩绛茳糨洚傋勥匞塂壃夅奨奬將嵹弜弶強彊摪摾杢槳橿櫤殭滰漿獎畕畺疅糡紅絳繮红翞膙葁蔃蔣薑螀螿袶講謽醤醬韁顜鱂鳉"},
{@"Jiao",@"叫脚交角教较缴觉焦胶娇绞校搅骄狡浇矫郊嚼蕉轿窖椒礁饺铰酵侥剿徼艽僬蛟敫峤跤姣皎茭鹪噍醮佼湫鲛挢乔侨僑僥儌劋勦勪却卻呌咬喬嘂嘄嘐嘦噭妖嫶嬌嬓孂学學峧嵺嶕嶠嶣恔悎憍憢憿挍捁摷撟撹攪敎敥敽敿斠晈暞曒樔橋櫵湬滘漖潐澆激灂灚烄焳煍燋獥珓璬皦皭矯稾穚窌笅筊簥糾絞繳纐纠腳膠膲臫芁茮菽萩蕎藠虠蟜蟭覐覚覺訆譑譥賋趫趭踋蹻較轇轎鄗釂釥鉸鐎餃驕骹鮫鱎鵁鵤鷦鷮纟"},
{@"Jie",@"接节街借皆截解界结届姐揭戒介阶劫芥竭洁疥藉价楷秸桔杰捷诫睫家偈桀喈拮骱羯蚧嗟颉鲒婕碣讦孑疖诘丯亥倢假偼傑價刦刧刼劼卪吤唧唶啑嚌圾堦堺契她妎媎媘媫嫅尐屆岊岕崨嵑嵥嶰嶻巀幯庎徣忦悈扢担拾掲搩擑擮擳斺昅暨曁桝椄楐楬楶概榤構檞櫭毑洯渇渴湝滐潔煯犗狤獬玠琾畍疌痎癤砎砝礍祖稭節籍紇紒結絜繲纥耤脻艐莭菨蓵蛣蛶蜐蝍蝔蠘蠞蠽衱衸袓袷袺裓褯觧訐詰誡誱謯趌跲踕迼鉣鍇鍻锴階雃鞂鞊頡飷髫魝魪鮚鶛卩"},
{@"Jin",@"进近今仅紧金斤尽劲禁浸锦晋筋津谨巾襟烬靳廑瑾馑槿衿堇荩矜噤缙卺妗赆觐伒侭僅僸儘兓凚劤勁厪吟唫嚍埐堻墐壗婜嫤嬐嬧寖嶜巹惍慬搢斳晉枃榗歏殣浕溍漌濅濜煡燼珒琎琻瑨璡璶盡砛祲竻笒紟紾緊縉肋臸荕菫菳蓳藎覲觔訡謹賮贐進釒釿鋟錦钅锓饉馸鹶黅齽"},
{@"Jing",@"竟静井惊经镜京净敬精景警竞境径荆晶鲸粳颈兢茎睛劲痉靖肼獍阱腈弪刭憬婧胫菁儆旌迳靓泾丼亰仱俓倞傹儬凈剄劤勁坓坕坙妌婙婛宑巠幜弳徑憼擏旍晟暻曔桱梷橸檠殑氏汫汬浄涇淨濪瀞烃烴燝猄獷璄璟璥痙秔稉穽竧竫競竸箐粇経經聙脛荊莖葝蜻蟼誩踁逕醒鋞鏡陉陘靑青靘靚靜頚頴頸颕驚鯨鵛鶁鶄麖麠鼱"},
{@"Jiong",@"窘炯扃迥侰僒冂冋冏囧坰垧埛宭扄昋泂浻澃瀅炅烱煚煛熒熲燑燛絅綗臦臩蘏蘔褧逈銄鎣顈颎駉駫"},
{@"Jiu",@"就九酒旧久揪救纠舅究韭厩臼玖灸咎疚赳鹫蹴僦柩桕鬏鸠阄啾丩乆乣倃剹勼匓匛匶噍奺廄廏廐愁慦捄揂揫摎朻杦柾樛橚殧氿汣湫湬牞畂稵穋窌糺糾紤繆缪舊舏萛蝤镹韮鬮鯦鳩鷲麔齨"},
{@"Jou",@"欍"},
{@"Ju",@"句举巨局具距锯剧居聚拘菊矩沮拒惧鞠狙驹且据柜桔俱车咀疽踞炬倨醵裾屦犋苴窭飓锔椐苣琚掬榘龃趄莒雎遽橘踽榉鞫钜讵枸仇伡佝侷俥倶僪冣凥劇勮匊告圧坥埧埾壉姐姖娵娶婅婮寠屨岠岨崌巈弆忂怇怐怚愳懅懼抅拠拱挙挶捄揈揟據擧昛梮椇椈檋櫸欅歫毩毱泃泦洰涺淗渠湨澽焗焣爠犑狊珇痀眗瞿砠租秬窶筥篓簍簴籧粔粷罝耟聥腒臄舉艍菹萭葅蒌蒟蒩蓻蔞蘜蘧處虡蚷蛆蜛螶袓襷詎諊豦貗趉趜趡足跔跙跼踘蹫蹻躆躹軥輂邭邹郥郰郹鄒鄹鉅鉏鋤鋦鋸鐻锄閰陱雏雛颶駏駒駶驕驧骄鬻鮈鮍鮔鲏鴡鵙鵴鶋鶪鼰鼳齟"},
{@"Juan",@"卷圈倦鹃捐娟眷绢鄄锩蠲镌狷桊涓隽劵勌勬呟圏埍埢奆姢嶲巂帣弮悁惓慻捲擐朘梋棬泫淃焆獧瓹甄眩睃睊睠絭絹縳罥羂脧腃臇菤萒蔨蕊蕋蜷裐襈讂踡身鋑鋗錈鎸鐫闂雋雟鞙韏飬餋鵍鵑"},
{@"Jue",@"决绝觉角爵掘诀撅倔抉攫嚼脚桷噱橛嗟觖劂爝矍镢獗珏崛蕨噘谲蹶孓厥乙亅傕刔勪匷叏吷啳埆壆夬妜孒屈屩屫崫嶡嶥弡彏憠憰戄挗捔撧斍柽橜欔欮殌氒決泬潏灍焆焳熦燋爑爴狂玃玦玨瑴璚疦瘚矞矡砄穱穴絕絶繑繘腳臄芵蕝蕞虳蚗蛙蟨蟩蠼袦覐覚覺觼訣誳譎貜赽趉趹蹷蹻躩較较逫鈌鐍鐝钁镼闋闕阕阙鞒鞽駃騤骙髉鱖鳜鴂鴃鶌鷢龣"},
{@"Jun",@"军君均菌俊峻龟竣骏钧浚郡筠麇皲捃儁勻匀呁埈姰寯懏攈旬晙桾汮濬焌焞燇狻珺畯皸皹碅箘箟莙葰蔨蚐蜠袀覠訇軍鈞銁銞鋆鍕陖隽雋餕馂駿鮶鲪鵔鵕鵘麏麕龜"},
{@"Ka",@"卡喀咯咖胩咔佧呿垰珈衉裃鉲"},
{@"Kai",@"开揩凯慨楷垲剀锎铠锴忾恺蒈凱剴劾勓喝喫嘅噄塏奒嵦幆愒愷愾暟核欬欯渇渴溘濭炌炏烗衉豈輆鍇鎎鎧鐦開闓闿雉颽"},
{@"Kal",@"乫"},
{@"Kan",@"看砍堪刊嵌坎槛勘龛戡侃瞰莰阚偘冚凵喊埳堿塪墈崁嵁惂扻栞檻欿歁監矙碪磡竷莶薟衎譼輡輱轁轗闞靬顑餡馅龕"},
{@"Kang",@"抗炕扛糠康慷亢钪闶伉匟囥坑奋嫝嵻忼摃杭槺沆漮犺砊穅粇荒躿邟鈧鏮閌阬骯鱇"},
{@"Kao",@"靠考烤拷栲犒尻铐丂嵪彀挢搞撟攷槀槁洘焅熇燺稾薧藳訄銬髛鮳鯌鲓"},
{@"Ke",@"咳可克棵科颗刻课客壳渴苛柯磕坷呵恪岢蝌缂蚵轲窠钶氪颏瞌锞稞珂髁疴嗑溘骒剋勀勊匼喀堁娔尅峇嵑嵙嶱悈愘愙揢搕敤榼樖欬歁殻毼渇濭炣牁犐痾盍砢硞碣碦磆礊礚窼簻緙翗胢艐萪薖衉袔課趷軻醘鈳鉿錁錒铪锕頦顆騍龕"},
{@"Kei",@"刻剋勀勊尅"},
{@"Ken",@"肯啃恳垦裉垠墾懇掯狠珢硍肎肻褃豤貇錹頎颀齦龈"},
{@"Keng",@"坑吭铿劥坈奟妔忐挳揁摼殸牼硁硍硎硜硻胫脛誙踁鉺銵鍞鏗铒阬"},
{@"Ki",@"怾"},
{@"Kong",@"空孔控恐倥崆箜埪宆悾椌涳矼硿穹羫腔躻錓鞚鵼"},
{@"Kos",@"廤"},
{@"Kou",@"口扣抠寇蔻芤眍筘叩佝冦剾劶妪嫗宼彄怐挎摳敂毆溝滱眗瞉瞘窛竘簆茠蔲釦鏂鷇"},
{@"Ku",@"哭库苦枯裤窟酷刳骷喾堀绔俈古嚳圐圣崫庫扝挎捁掘搰朏桍楛泏焅狜瘔矻硞秙窋絝胐袴褲趶跍跨郀鮬齁"},
{@"Kua",@"跨垮挎夸胯侉咵姱恗晇楇絓舿華蕐袔誇銙錁锞顝骻髁"},
{@"Kuai",@"快块筷会侩哙蒯浍郐狯脍傀儈凷噲圦塊墤巜廥擓旝會澮獪璯糩膾蒉蕢鄶駃鬠魁鱠鲙"},
{@"Kuan",@"宽款髋完寛寬梡棵欵歀窽窾鑧顆颗髖"},
{@"Kuang",@"矿筐狂框况旷匡眶诳邝纩夼诓圹贶哐丱儣兄劻匩卝壙岲廣忹恇懬懭抂昿曠枉況洭湟爌狅眖矌砿硄磺礦穬筺絋絖纊誆誑貺軖軠軦軭迋逛邼鄺鉱鋛鑛鵟黋"},
{@"Kui",@"亏愧奎窥葵魁馈盔傀岿匮愦揆睽跬聩篑喹逵暌蒉悝喟馗蝰隗夔刲匱卼嘳媿嬇尯巋巙憒戣晆楏楑樻櫆欳歸殨潰煃瞶磈窺簣籄缺聧聭聵胿腃膭臾蒍蕢藈蘬蘷虁虧觖謉踩蹞躨鄈鍨鍷鐀鑎闋闚阕頃頄頍頯顝顷餽饋騤骙溃"},
{@"Kun",@"捆困昆坤鲲锟髡琨醌阃悃卵堃堒壸壼婫尡崐崑晜梱涃混潉焜熴猑瑻睏硱祵稇稛綑罤臗菎蜫裈裍裩褌豤貇錕閫閸頑顽餛馄騉髠髨鯤鰥鳏鵾鶤鹍齦龈"},
{@"Kuo",@"阔扩廓适蛞栝会刳哙噋噲懖拡挄擴會桰漷濶燭爥秳筈萿葀邝鄺闊霩鞟鞹韕頢髺鬠括"},
{@"Kweok",@"穒"},
{@"Kwi",@"櫷"},
{@"La",@"拉啦辣蜡腊喇垃蓝落瘌邋砬剌旯儠嚹揦揧搚摺擸攋柆楋櫴溂爉瓎癩磖翋臈臘菈藞蝋蝲蠟辢鑞镴鞡鬎鯻鱲癞"},
{@"Lai",@"来赖莱濑赉崃涞铼籁徕睐來俫倈勑厲唻娕婡崍庲徠懶攋梾棶櫴淶瀨瀬猍琜癩睞筙箂籟萊藾襰誺賚賴逨郲釐錸頼顂騋鯠鵣鶆麳黧癞"},
{@"Lan",@"蓝兰烂拦篮懒栏揽缆滥阑谰婪澜览榄岚褴镧斓罱漤僋儖厱啉嚂囒坔壈壏嬾孄孏嵐幱廩廪惏懔懢懶擥攔攬斕暕欄欖欗浨涟湅漣濫瀾灆灠灡炼煉燗燣爁爛爤爦璼瓓礷籃籣糷繿纜葻藍蘫蘭襕襤襴襽覧覽諫譋讕谏躝郴醂鑭钄闌韊顲"},
{@"Lang",@"浪狼廊郎朗榔琅稂螂莨啷锒阆蒗俍勆哴唥埌塱嫏崀悢朖朤桹樃樠欴烺瑯硠筤羮羹脼艆蓈蓢蜋誏踉躴郒郞鋃鎯閬駺"},
{@"Lao",@"老捞牢劳烙涝落姥酪络佬潦耢铹醪铑唠栳崂痨僗僚労勞咾哰嗠嘐嘮嫪嶗恅憥憦撈撩朥橑橯浶澇狫獠珯癆硓磱窂簩粩絡耮荖蓼蛯蟧軂轑銠鐒顟髝鮱"},
{@"Le",@"了乐勒肋鳓仂叻泐嘞忇扐楽樂氻牞玏砳竻簕艻阞韷餎饹鰳"},
{@"Lei",@"类累泪雷垒勒擂蕾肋镭儡磊缧诔耒酹羸嫘檑嘞傫儽卢厽咧塁壘壨攂樏櫐櫑欙洡涙淚漯灅瓃畾瘣癗盧矋磥礌礧礨祱禷絫縲纇纍纝罍脷腂蔂蕌藟蘱蘲蘽虆蠝誄讄轠郲銇錑鐳鑘鑸靁頛頪類颣鱩鸓鼺"},
{@"Li",@"里离力立李例哩理利梨厘礼历丽吏砾漓莉傈荔俐痢狸粒沥隶栗璃鲤厉励犁黎篱郦鹂笠坜苈鳢缡跞蜊锂悝澧粝蓠枥蠡鬲呖砺嫠篥疠疬猁藜溧鲡戾栎唳醴轹詈骊罹逦俪喱雳黧莅俚蛎娌仂位儮儷凓刕列剓剺劙勵厤厯厲叓叕叻唎嚟嚦囄囇塛壢娳婯孋孷屴岦峛峲巁廲悡悧悷慄扐扚捩搮擽攊攦攭斄暦曆曞朸柂栃栛栵梸棃棙樆檪櫔櫟櫪欐欚歴歷氂沴沵泣浬涖淚濼濿瀝灑灕爄爏犂犛犡珕珞琍瑮瓅瓈瓑瓥癘癧皪盠盭睝矖砅砬硌磿礪礫礰禮禲秝穲竰筣籬粚粴糎糲綟縭纅纚翮脷艃苙茘荲菞蒚蒞蔾藶蘺蚸蛠蜧蝕蝷蟍蟸蠇蠣蠫裏裡褵觻謧讈豊貍赲躒轢轣邌邐酈醨釃釐鉝銐鋫鋰錅錑鎘鏫鑗鑠铄镉隷隸離霾靂靋颯飒驪鬁鬴鯉鯏鯬鱧鱱鱳鱺鳨鴗鵹鷅鸝麗麜"},
{@"Lia",@"俩倆"},
{@"Lian",@"连联练莲恋脸炼链敛怜廉帘镰涟蠊琏殓蔹鲢奁潋臁裢濂裣楝亷令僆劆匲匳嗹噒堜奩娈媡嫾嬚孌慩憐戀挛搛摙撿攣斂梿槏槤櫣欄歛殮浰湅溓漣澰濓瀲煉熑燫瑓璉瞵磏稴簾籢籨練縺纞羷羸翴聨聫聮聯膦臉苓莶萰蓮薕薟蘝蘞螊褳襝覝謰譧蹥連鄻醶錬鍊鎌鏈鐮镧零鬑鰊鰱鱄"},
{@"Liang",@"两亮辆凉粮梁量良晾谅俩粱墚靓踉椋魉莨両俍倆倞兩哴唡啢喨悢惊掚樑涼湸煷簗糧綡緉脼蜋蜽裲諒蹒蹣輌輛輬辌鍄閬阆靚駺魎冫"},
{@"Liao",@"了料撩聊撂疗廖燎辽僚寥镣潦钌蓼尥寮缭獠鹩嘹佬僇劳勞嫽尞尦屪嵺嶚嶛廫憀憭摎敹暸樛漻炓爎爒璙療瞭窷竂簝繚膋膫蟉蟟蟧豂賿蹘蹽轑遼鄝釕鏐鐐镠镽飂飉髎鷯"},
{@"Lie",@"列裂猎劣烈咧埒捩鬣趔躐冽洌例倈儠劦劽哷埓奊姴峢巁巤忚挒挘擸栗棙櫑毟浖烮煭燤爄爉犣猟獵睙綟聗脟膊臘茢蛚迾邋颲鬛鮤鱲鴷"},
{@"Lin",@"林临淋邻磷鳞赁吝拎琳霖凛遴嶙蔺粼麟躏辚廪懔瞵檩膦啉亃任伈僯凜厸壣崊廩恡悋惏懍撛斴晽暽橉檁涁渗滲潾澟瀶焛燐獜玪璘甐疄痳癛癝碄稟箖粦繗翷臨菻藺賃蹸躙躪轔轥鄰鏻閵阴隣顲驎魿鱗麐"},
{@"Ling",@"另令领零铃玲灵岭龄凌陵菱伶羚棱翎蛉苓绫瓴酃呤泠棂柃鲮聆囹倰冷刢坽夌姈婈孁岺崚嶺彾怜拎掕昤朎櫺欞淩澪瀮炩燯爧狑琌皊砱磷祾秢竛笭紷綾舲蓤蔆蕶蘦衑袊裬詅跉軨輘醽釘鈴錂钉閝阾霊霗霛霝靇靈領駖魿鯪鴒鸰鹷麢齡齢龗"},
{@"Liu",@"六流留刘柳溜硫瘤榴琉馏碌陆绺锍鎏镏浏骝旒鹨熘遛偻僂劉嚠塯媹嬼嵧廇懰抡斿旈栁桞桺橊橮沠泖泵游漻澑瀏熮珋瑠瑬璢畂畄畱疁癅磂磟綹罶羀翏聊膢蒌蒥蓅蓼蔞藰蟉裗蹓鉚鋶鎦鏐鐂铆镠陸雡霤飀飂飅飗餾駠駵騮驑鬸鰡鶹鷚鹠麍"},
{@"Lo",@"咯囖"},
{@"Long",@"龙拢笼聋隆垄弄咙窿陇垅胧珑茏泷栊癃砻儱厐哢嚨壟壠宠寵屸嶐巃巄庞徿总攏昽曨朧梇槞櫳湰滝漋瀧爖瓏眬矓硦礱礲竉竜篢篭籠聾蕯蘢蝕蠪蠬衖襱谾豅贚躘鏧鑨隴霳靇驡鸗龍龐龒龓"},
{@"Lou",@"楼搂漏陋露娄篓偻蝼镂蒌耧髅喽瘘嵝僂嘍塿婁寠屚嶁廔慺摟樓溇漊熡牢甊瘺瘻瞜窶簍耬膢艛蔞螻謱軁遱鏤鞻髏"},
{@"Lu",@"路露录鹿陆炉卢鲁卤芦颅庐碌掳绿虏赂戮潞禄麓六鲈栌渌蓼逯泸轳氇簏橹辂垆胪噜镥辘漉撸璐鸬鹭舻侓僇剹勎勠嗠嚕嚧圥坴塶塷壚娽峍廘廬彔挔捋捛摅摝擄擼攄攎枦椂樐樚櫓櫨氌淕淥滤滷漊澛濾瀂瀘熝爐獹玈琭璷瓐甪瘳盝盧睩矑硉硵磠祿稑穋箓簬簵簶籙籚粶緑纑罏翏肤膔膚膟臚舮艣艪艫菉蓾蔍蕗蘆虂虜螰蠦角觮觻谷賂趢踛蹗輅轆轤鄜酪醁鈩錄録錴鏀鏕鏴鐪鑥鑪陸顱騄騼髗魯魲鯥鱳鱸鴼鵦鵱鷺鸕鹵黸"},
{@"Luan",@"乱卵滦峦孪挛栾銮脔娈鸾乿亂圝圞奱孌孿巒攣曫欒灓灤癴癵羉脟臠臡薍虊覶釠鑾鵉鸞"},
{@"Lue",@"略掠锊剠圙寽擽率畧稤药藥詻鋝鋢"},
{@"Lun",@"论轮抡伦沦仑纶囵侖倫圇埨婨崘崙惀掄棆淪溣睔碖磮稐綸耣腀菕蜦論踚輪錀陯鯩"},
{@"Luo",@"落罗锣裸骡烙箩螺萝洛骆逻络咯荦漯蠃雒倮硌椤捋脶瘰摞泺珞镙猡乐儸儽剆啰囉峈挼捰攎攞攭曪果格樂橐櫟欏欙濼烁爍犖猓玀癳皪砢硦碌礫笿籮絡纙羅腡臝茖蓏蘿蛒蜾蝸蠡袼覶覼詻跞路躒躶邏鉻鎯鏍鑼铬頱饠駱騾驘鮥鱳鵅鸁"},
{@"Lv",@"绿率铝驴旅屡滤吕律氯缕侣虑履偻膂榈闾捋褛稆侶儢勴卛卢呂哷垏壘娄婁寠寽屢嵂庐廬慮慺曥梠樓櫖櫚櫨氀焒爈瘻盧瞜祣穞穭箻篓簍累絽綠緑縷繂膐膢葎蒌蔞藘褸謱軁郘鋁録鏤鑢镂閭馿驢魯鲁鷜鹿"},
{@"M",@"呒呣嘸"},
{@"Ma",@"吗妈马嘛麻骂抹码玛蚂摩唛蟆犸嬷杩么亇傌呐嗎嘜媽嫲嬤孖尛榪溤犘獁瑪痲睰碼礣祃禡罵蓦蔴螞蟇貉貊遤鎷閁靡馬駡驀鬕鰢鷌麼麽"},
{@"Mai",@"买卖迈埋麦脉劢霾荬佅勱咪哩嘪売派脈蕒薶衇貍買賣邁霡霢鷶麥唛"},
{@"Man",@"满慢瞒漫蛮蔓曼馒埋谩幔鳗墁螨镘颟鞔缦熳僈姏嫚屘幕悗慲摱槾樠満滿澫澷獌睌瞞矕絻縵蔄蘰蟃蟎蠻襔謾蹒蹣鄤鏋鏝顢饅鬗鬘鰻"},
{@"Mang",@"忙芒盲莽茫氓硭邙蟒漭厖吂哤壾娏尨庬恾朚朦杗杧汒浝牤牻狵甿痝盳瞢硥笀茻莾蘉蛖蠎釯鋩铓駹鸏鹲龍龒龙"},
{@"Mao",@"毛冒帽猫矛卯貌茂贸铆锚茅耄茆瑁蝥髦懋昴牦瞀峁袤蟊旄泖侔冃冇冐勖務堥夘媢嵍愗戼描暓枆楙毣毷氂渵牟犛獏皃眊秏笷緢罞耗芼萺蓩蛑蝐覒貇貓貿軞鄚鄮酕鉚鉾錨霿髳鶜"},
{@"Me",@"么嚒嚜嚰孭庅濹癦麼麽"},
{@"Mei",@"没每煤镁美酶妹枚霉玫眉梅寐昧媒糜媚谜沫嵋猸袂湄浼鹛莓魅镅楣凂呅味嚜坆坶堳塺墨媄媺嬍嵄徾抺挴攗攟某栂楳槑櫗毎氼沒沬渼湈溦煝燘珻瑂痗眊眛睂睸矀祙禖篃羙脄脢腜膴苺葿蘪蝞跊躾郿鋂鎂鎇韎鬽鶥黣黴"},
{@"Men",@"门们闷懑扪钔焖亹們怋悗悶惛懣捫暪椚殙汶満满滿燜玟玣玧璊瞞穈菛虋鍆門閅鞔"},
{@"Meng",@"猛梦蒙锰孟盟檬萌氓礞蜢勐懵甍蠓虻朦艋艨瞢儚冡夢夣嫇尨幪庬懜懞掹擝明曚橗氋溕濛獴瓾甿瞑矇矒罞莔萠蕄蝱蟊蟒鄳鄸鋂錳雺霚霥霧霿靀顭饛髳鯍鯭鱦鸏鹲黽黾鼆"},
{@"Meo",@"踎"},
{@"Mi",@"米密迷眯蜜谜觅秘弥幂靡糜泌醚蘼縻咪汨麋祢猕弭谧芈脒宓敉嘧糸侎冖冞冪劘哋塓孊宻尒尓尔峚幎幦幺彌戂摩摵擟擵攠榓樒檷櫁沕沵洣淧渳溟滵漞濔濗瀰灖熐爢爾獯獼瓕眫眽瞇瞴祕禰穈簚籋粎罙羃羋苾葞蒾蓂蔝蔤藌蝆袮覓覔覛詸謎謐辟醾醿釄銤鑖镾鸍麊麛鼏"},
{@"Mian",@"面棉免绵眠缅勉冕娩腼湎眄沔黾渑丏俛偭冥勔厸喕婂媔嬵愐檰櫋汅泯湣澠牑瞑矈矊矏糆絻綿緍緜緡緬缗臱芇莬葂蝒蠠靣靦鮸麪麫麵麺黽宀"},
{@"Miao",@"秒苗庙妙描瞄藐渺眇缪缈淼喵杪鹋邈仯吵媌嫹庿廟彯猫玅竗篎紗緢緲纱蜱訬鱙鶓"},
{@"Mie",@"灭蔑咩篾蠛乜吀咪哶孭幭懱搣櫗滅瀎眜薎衊覕谂鑖鱴鴓"},
{@"Min",@"民抿敏闽皿悯珉愍缗闵玟苠泯黾鳘岷僶冧冺刡勄呡垊姄崏忞怋慜憫捪敃敯旻旼暋汶渂湏湣潣琘琝瑉痻盷盿眠砇碈笢笽簢緍緡繩绳罠蠠賯鈱錉鍲閔閩鰵鴖黽"},
{@"Ming",@"名明命鸣铭螟盟冥瞑暝茗溟酩佲凕姳嫇慏掵朙榠洺猽眀眳萌蓂覭詺鄍銘鳴"},
{@"Miu",@"谬缪繆謬"},
{@"Mo",@"摸磨抹末膜墨没莫默魔模摩摹漠陌蘑脉沫万无冒寞秣瘼殁镆嫫谟蓦貊貘麽茉馍耱么伯佰劘劰勿嗼嚤嚩圽塻妺嫼尛帓帕帞怽懡戂抚撫擵攠昧昩暯枺橅歾歿沒瀎無爅狢百皌眜眽眿瞐瞙砞礳粖糢絈絔縸纆艒莈藐藦蛨蟆蟔袜袹謨謩譕貃貈貉貌銆鏌靺鞨饃饝驀髍魩魹麼麿黙嘿嬷"},
{@"Mou",@"某谋牟眸蛑鍪侔缪哞件劺厶呣堥婺恈敄桙毋洠瞴繆蟱袤謀鉾鞪鴾麰蝥"},
{@"Mu",@"木母亩幕目墓牧牟模穆暮牡拇募慕睦姆姥钼毪坶沐仫苜凩墲娒婺峔幙慔朷楘樢毣氁炑牳狇獏畆畒畝畞畮砪縸繆缪胟艒茻莯萺蚞踇鉧鉬雮霂鞪呒嘿"},
{@"Myeo",@"旀"},
{@"Myeon",@"丆"},
{@"Myeong",@"椧"},
{@"N",@"嗯咹哏"},
{@"Na",@"那拿哪纳钠娜呐南衲捺镎肭乸內内吶呶嗱妠抐拏挐淰秅笚笝箬篛納絮蒘蒳袦訤詉誽豽貀蹃軜郍鈉鎿雫靹魶"},
{@"Nai",@"乃耐奶奈氖哪萘艿柰鼐佴倷妳嬭孻廼掜搱摨渿熋疓耏能腉螚褦迺釢錼"},
{@"Nan",@"难南男赧囡蝻楠喃腩侽囝妠娚婻嫨弇戁抩揇摊攤暔枏枬柟湳滩灘煵畘莮萳諵遖難颌"},
{@"Nang",@"囊馕曩囔攮乪儾哝噥嚢崀憹搑擃欜涳瀼灢蘘蠰譨饢鬞齉"},
{@"Nao",@"闹脑恼挠淖孬铙瑙垴呶蛲猱硇匘堖夒婥嫐峱嶩巎巙怓悩惱憹撓橈檂浇澆獶獿碙碯脳腝腦臑蝚蟯詉譊鐃閙鬧"},
{@"Ne",@"呢哪那呐讷吶抐疔眲訥疒"},
{@"Nei",@"内哪馁那內娞婑氝浽脮腇錗餒餧鮾鯘"},
{@"Nem",@"焾"},
{@"Nen",@"嫩恁媆嫰枘腝臑"},
{@"Neng",@"能竜而耐螚"},
{@"Neus",@"莻"},
{@"Ng",@"嗯"},
{@"Ngag",@"鈪"},
{@"Ngai",@"銰"},
{@"Ngam",@"啱"},
{@"Ni",@"你泥拟腻逆呢溺倪尼匿妮霓铌昵坭祢猊伲怩鲵睨旎伱儗儞児兒埿堄妳婗嫟嬭嬺孨孴屔屰嶷彌惄愵慝懝抐抳掜擬晲暱柅棿檷氼淣滠濔濘瀰灄狔痆眤禰秜籾縌聻胒腝膩臡苨薿蚭蛪蜺袮觬誽譺貎跜輗迡郳鈮鉨鑈镾隬馜鯢麑齯"},
{@"Nian",@"年念捻撵拈碾蔫粘廿黏辇鲇鲶埝卄哖唸姩捵撚攆榐涊淰溓痆秊秥簐艌趁趂跈蹍蹨躎輦輾辗鮎鯰鵇"},
{@"Niao",@"鸟尿袅茑脲嬲嫋嬝尥尦樢溺茮蔦裊褭鳥"},
{@"Nie",@"捏镍聂孽涅镊啮陧蘖嗫臬蹑颞乜倪喦噛嚙囁囐囓囡圼埝孼峊嵒嵲嶭巕帇幸惗捻掜揑摂摄摰攝敜枿棿槷櫱痆篞籋糱糵聶肀臲苶菍蠥褹諗讘踂踗踙躡鉨鉩銸鋷錜鎳鑈鑷钀闑隉顳齧"},
{@"Nin",@"您恁囜拰脌"},
{@"Ning",@"拧凝宁柠狞泞佞甯咛聍侫儜冰嚀嬣寍寕寗寜寧年擰攘橣檸澝濘獰疑矃聹苧薴鑏鬡鬤鸋"},
{@"Niu",@"牛扭纽钮拗妞狃忸怓抝杻汼沑炄牜紐莥蚴鈕靵"},
{@"Nong",@"弄浓农脓哝侬儂咔噥憹挊挵欁濃癑禯秾穠繷膿莀蕽襛農辳醲齈廾"},
{@"Nou",@"耨啂嬬搙擩槈檽獳羺譨譳鎒鐞"},
{@"Nu",@"怒努奴孥胬驽弩仅伖伮傉呶帑搙擩砮笯褥詉駑"},
{@"Nuan",@"暖奻渜湪濡煖煗餪"},
{@"Nue",@"虐疟谑硸"},
{@"Nun",@"黁"},
{@"Nung",@"燶"},
{@"Nuo",@"挪诺懦糯娜喏傩锘搦儺吶呐哪堧媠嫷愞懧掉掿搙搻梛榒橠毭渪稬穤糑糥耎袲袳諾蹃逽那郍鍩难難需"},
{@"Nv",@"女衄钕恧朒沑狃籹絮聏肭衂釹"},
{@"Nve",@"婩疟瘧虐"},
{@"O",@"哦喔噢筽"},
{@"Oes",@"夞"},
{@"Ol",@"乯"},
{@"On",@"昷鞰"},
{@"Ou",@"偶呕欧藕鸥区沤殴怄瓯讴耦區吘吽嘔塸慪抠握摳敺櫙歐毆渥漚澫熰甌紆纡腢膒蓲蕅藲謳遇醧鏂鴎鷗齵"},
{@"Pa",@"怕爬趴啪耙扒帕琶派筢杷葩叭吧妑帊把掱汃潖皅舥芭苩袙跁鈀钯"},
{@"Pai",@"派排拍牌迫徘湃哌俳蒎啡棑椑犤猅箄簰脾腗輫鎃"},
{@"Pak",@"磗"},
{@"Pan",@"盘盼判攀畔潘叛磐番般胖襻蟠袢泮拚爿蹒乑伴冸半卞坢姍姗媻审宷審幋弁彦扳拌搫柈槃沜洀湴溿瀊瀋炍片牉牓畨皤盤盻眅眫碆磻籓縏繁膰蒰螌褩詊跘踫蹣鄱鋬鎜鑻闆鞶頖鵥"},
{@"Pang",@"旁胖耪庞乓膀磅滂彷逄螃仿傍厐嗙夆嫎尨彭徬房方汸沗炐篣肨胮膖舽蒡蠭覫趽逢鎊镑雱霶髈鰟鳑龎龐"},
{@"Pao",@"跑抛炮泡刨袍咆狍匏庖疱脬包嚗垉奅抱拋摽炰爮犥瓟皰砲礟礮穮窌胞脟苞萢藨蚫袌褜謈軳鉋铇鞄颮飑鮑鲍麃麅麭"},
{@"Pei",@"陪配赔呸胚佩培沛裴旆锫帔醅霈辔伂俖倍啡坏垺妃妚姵婄媐嶏怌抷掊攈斾昢柸棑毰浿淠犻珮琣琲笩肧艴茇茷蓜蜚衃裵賠轡錇阫陫馷駍"},
{@"Pen",@"喷盆湓吩呠喯噴本歕汾濆瓫翉翸葐衯"},
{@"Peng",@"碰捧棚砰蓬朋彭鹏烹硼膨抨澎篷怦堋蟛嘭亨倗傍傰剻匉塜塳庄弸恲憉挷掽搒摓旁梈椖椪槰樥泙淎淜滂漨漰熢痭皏硑磞稝竼篣絣纄胓芃苹荓莑蟚踫軯軿輣輧迸逢逬錋鑝閛韸韼駍騯髼鬅鬔鵬"},
{@"Peol",@"浌"},
{@"Phas",@"巼"},
{@"Phdeng",@"闏"},
{@"Phoi",@"乶"},
{@"Phos",@"喸"},
{@"Pi",@"批皮披匹劈辟坯屁脾僻疲痞霹琵毗啤譬砒否貔丕圮媲癖仳擗郫甓枇睥蜱鼙邳吡陂铍庀罴埤纰陴淠噼蚍裨伓伾俾副卑噽嚊嚭坏培壀妚嫓岯崥嶏帔庇庳怶悂憵扑抷拂揊旇朇枈椑榌比毘毞渒潎澼濞炋焷狉狓猈疈疋痦痺睤磇礔礕秛秠稫笓箆篦篺簲粃紕罷羆翍耚肶脴腗膍芘苉苤萆蕃蚌蚽蚾螕螷蠯被諀豼豾鄱釽鈈鈚鈲鈹鉟銔銢錃錍鎞钚闢阰隦鞞頗顖颇駓髬魮魾鮍鲏鴄鵧鷿鸊"},
{@"Pian",@"片篇骗偏便扁翩缏犏骈胼蹁谝囨媥平徧楄楩猵璸緶腁萹蝙褊覑諚諞貵賆跰辩辯駢騈騗騙骿魸鶣"},
{@"Piao",@"票飘漂瓢朴螵莩嫖瞟殍缥嘌骠剽僄勡彯徱慓摽旚潎犥皫磦篻縹翲膘蔈薸謤醥闝顠飃飄驃驫骉魒髟"},
{@"Pie",@"瞥撇氕苤丿嫳撆暼潎肺蔽覕鐅"},
{@"Pin",@"品贫聘拼频嫔榀姘牝颦匕嚬娉嬪拚朩汖泵玭琕矉砏礗穦薲蘋貧頻顰馪驞"},
{@"Ping",@"平凭瓶评屏乒萍苹坪冯娉鲆枰俜倗凴呯塀娦屛岼帡帲幈慿憑檘泙洴涄淜焩玶甁甹砯砰硑竮箳簈缾聠胓艵荓蓱蘋蚲蛢評軿輧郱鉼頩馮鮃冖秤"},
{@"Po",@"破坡颇婆泼迫泊魄朴繁粕笸皤钋陂鄱攴叵珀钷哱嘙奤娝尀尃屰岥岶巿廹搫敀昢桲椺櫇洦淿湐溌溥潑濼烞猼皛砶翍膊蒪蔢謈跛酦醱釙鉕鏺霸頗馞駊髆泺"},
{@"Pou",@"剖掊裒吥咅哣垺培堷婄抔抙抱捊棓涪犃箁裦褒襃踣部郶錇锫颒"},
{@"Ppun",@"兺哛"},
{@"Pu",@"扑铺谱脯仆蒲葡朴菩莆瀑埔圃浦堡普暴镨噗匍溥濮氆蹼璞镤僕剝剥卜圑圤墣巬巭扶抪捗撲擈攴暜柨樸檏潽炇烳獛甫痡瞨砲秿穙箁纀舖舗苻荹菐蒱蜅襆襥諩譜豧贌酺鋪鏷鐠陠駇鯆鵏攵曝"},
{@"Q",@"瑁"},
{@"Qi",@"起其七气期齐器妻骑汽棋奇欺漆启戚柒岂砌弃泣祁凄企乞契歧祈栖畦脐崎稽迄缉沏讫旗祺颀骐屺岐蹊萁蕲桤憩芪荠萋芑汔亟鳍俟槭嘁蛴綦亓欹琪麒琦蜞圻杞葺碛淇祗耆绮丌亝伎倛偈傶僛切刺剘勤吃吱呇呮咠唘唭啓啔啟喰噐埼夡娸婍宿岓嵜己帺忔忮忯忾恓恝悽愒愭愾慼慽憇懠扢扱扺技抵拞挈捿掑揭摖支攲敧斉斊旂晵暣朞枝栔桼梩棄棊棨棲榿檱櫀欫毄気氣洓济淒済渍渏湆湇滊漬濝濟炁焏猉玂玘璂甈甭畸疧盀盵矵碁碕碶磎磜磧磩礘示祇禥禨稘竒簯簱籏粸紪絜綥綨綮綺緀緕緝纃缼罊肐肵臍舙艩芞萕薺藄蘄蚑蚔蚚蜝螇螧蟣蟿蠐衹袳裿褀褄觭訖諆諬諿豈趞趿跂踑踖踦躤躩軙軝迉逗邔郪鄿釮錡鏚鐖锜闙隑霋頎饑騎騏騹鬐鬾鬿魌魕鮨鯕鰭鲯鵸鶀鶈麡鼜齊齮"},
{@"Qia",@"恰卡掐洽髂袷葜佉價冾咭圶客帢愘抲拤挈揢搳擖楬殎疴矻硈磍絜跒酠鞐鮚鲒"},
{@"Qian",@"前钱千牵浅签欠铅嵌钎迁钳乾谴谦潜歉纤扦遣黔堑仟岍钤褰箝掮搴倩慊悭愆虔芡荨缱佥芊阡肷茜椠犍骞乹仱伣俔偂傔僉儙凄凵刋厱唊嗛圱圲塹墘壍奷婜媊嬱孅孯寨岒嵰廞忏忴悓慳扲拑拪挳掔揃揵摼撁撍撖攐攑攓朁杄杴柑棈榩槏槧橬檶櫏欦欿歁歬汘汧涔淒淺渐湔漸潛濳濽灊灒炶煔熑燂燫牽皘竏筋箞篏篟簽籖籤粁綪縴繾羟羥羬脥腱膁臤艌苂茾荕葥葴蒨蔳蕁藖蚈蚙蜸諐謙譴谸赶軡輤遷釺鈆鈐鉆鉗鉛銭鋟錎錢鍼鎆鏲鐱鑓鑯锓開雃靬韆顅馯騚騝騫鬜鬝鰜鰬鳒鳽鵮鶼鹐鹣黚齦龈"},
{@"Qiang",@"强枪墙抢腔呛羌蔷将蜣跄戗襁戕炝镪锖锵羟樯嫱創勥哐唴啌嗆嗴墏墻嬙將嶈庆廧強彊慶戧控搶摤摪斨椌槍檣殻溬漒熗爿牄牆猐獇玱琷瑲矼箐篬繈繦羗羥羫羻艢蔃薔蘠親謒跫蹌蹡錆鎗鏘鏹顩鶬鸧"},
{@"Qiao",@"桥瞧敲巧翘锹壳鞘撬悄俏窍雀乔侨峭橇樵荞跷硗憔谯鞒愀缲诮劁偢僑僺削勪喬喿嘺噭塙墝墧墽嫶峤嵪嶠帩幓幧愁招捎搞摮撽敫校槗橋橾殼毃毳潐焦焳燆燋犞癄睄硚硝碻磝磽礄礉窯竅箾繑繰翹茭荍菬蕉蕎藮蟜誚譑譙趫趬跤踃踍蹺蹻躈郻鄗鄡鄥醮釥銚鍫鍬鏒鐈鐰铫陗鞩鞽韒頝顤顦驕骄骹髚髜"},
{@"Qie",@"切且怯窃茄砌郄趄惬锲妾箧慊伽挈倢倿偼匧厒唼喋契婕媫帹悏愜捷朅椄沏洯淁漆疌癿稧穕竊笡篋籡緁聺脞苆蕺藒蛣蛪詧跙踥鍥鐑魥鯜鰈鲽"},
{@"Qin",@"亲琴侵勤擒寝秦芹沁禽钦吣覃矜衾芩溱廑嗪螓噙揿檎锓儭厪吢唚坅埁埐堇墐媇嫀寑寢寴嵚嶔嶜庈廞忴慬懃懄扲抋捦搇撳斳昑梫槿橬櫬欽浸涁渗滲澿濅瀙珡琹瘽矝笉綅耹肣臤菣菦菳蓁蕲藽蘄蚙螼蠄衿親誛赺赾鈂鈊鈙鋟雂靲頜顉顩颌駸骎鬵鮼鳹"},
{@"Qing",@"请轻清青情晴氢倾庆擎顷亲卿氰圊謦檠箐苘蜻黥罄鲭磬綮倩傾儬凊剠勍啨埥声夝媇寈庼廎慶掅擏暒棾樈檾櫦殑殸氫涇淸渹漀濪玪甠硘硜碃精綪胜莔葝請軽輕郬鑋靑靘頃鯖鶄"},
{@"Qiong",@"穷琼跫穹邛蛩茕銎筇儝卭嬛宆惸憌桏橩焪焭煢熍琁璚瓊瓗睘瞏窮竆笻舼藑藭蛬赹鞠"},
{@"Qiu",@"求球秋丘泅仇邱囚酋龟楸蚯裘糗蝤巯逑俅虬赇鳅犰湫鼽遒丠区厹叴唒团坵媝宿寈崷巰恘惆愀扏捄搝朹梂櫹殏毬氽氿汓浗渞湬湭煪牫玌璆皳盚秌穐篍紌絿緧肍艽莍萩蓲蘒虯蛷蝵蟗蠤觓觩訄訅賕趜趥逎邺醔釓釚釻銶钆鞦鞧馗鮂鯄鰌鰍鰽鱃鳩鵭鶖鸠鹙龜龝"},
{@"Qu",@"去取区娶渠曲趋趣屈驱蛆躯龋戌蠼蘧祛蕖磲劬诎鸲阒麴癯衢黢璩氍觑蛐朐瞿岖苣伹佉佢刞匤匷區厺句呿坥岨岴嶇巨弆忂怚憈戵抾敺斪欋欪毆浀淭灈焌璖竘竬筁籧粬紶組絇组翑翵耝胊胠脥臞菃葋蚼蜡蝺螶蟝蠷衐袪覰覷覻詓詘誇誳趍趜趨跔跙跼躣軀軥迲遽郥鉤鐻鑺閴闃阹鞠鞫駆駈騶驅驺髷魼鮈鰸鱋鴝鶌鸜麮麯麹鼁鼩齲匚"},
{@"Quan",@"全权劝圈拳犬泉券颧痊醛铨筌绻诠辁畎鬈悛蜷荃佺勧勸卷啳圏圳埢姾婘孉峑巏巻弮恮惓拴捲搼栒桊棬椦楾槫権權汱洤湶灥烇牶牷犈獾琯瑔甽矔硂純絟綣縓纯腃葲虇蠸觠詮謜譔跧踡輇酄銓鐉闎韏顴駩騡鰁鳈鸛鹳齤犭"},
{@"Que",@"却缺确雀瘸鹊炔榷阙阕悫傕决卻埆塙墧屈崅愨慤搉攉敠殻毃汋決燩猎獡皵硞碏確碻礐礭舃舄芍蒛蚗趞踖躤闋闕隺鳥鵲"},
{@"Qun",@"群裙麇逡囷夋宭峮帬歏箘羣裠踆輑遁麏麕"},
{@"Ra",@"亽罖"},
{@"Ram",@"囕"},
{@"Ran",@"染燃然冉髯苒蚺冄卪呥嘫姌媣柟橪熯珃繎肰舑蒅蚦衻袇袡蹨髥"},
{@"Rang",@"让嚷瓤攘壤穰禳儴勷壌孃忀懹欀瀼爙獽穣纕蘘蠰譲讓躟鑲镶鬤"},
{@"Rao",@"饶绕扰荛桡娆嬈挠撓擾橈犪穘繚繞缭蕘蟯襓遶隢饒"},
{@"Re",@"热若惹喏偌捼渃熱蹃"},
{@"Ren",@"人任忍认刃仁韧妊纫壬饪轫仞荏葚衽稔仭儿刄姙屻忈忎恁扨朲杒栠栣梕棯涊牣秂秹紉紝絍綛纴肕腍芢荵菍袵訒認讱躵軔釰鈓銋靭靱韌飪餁魜鵀亻"},
{@"Ri",@"日囸氜釰鈤馹驲"},
{@"Rong",@"容绒融溶熔荣戎蓉冗茸榕狨嵘肜蝾傇傛坈媶嫆嬫宂峵嵤嶸巆搈搑摉曧栄榮榵毧氄瀜烿爃瑢穁穃絨縙縟缛羢茙螎蠑褣軵鎔镕隔頌颂駥髶"},
{@"Rou",@"肉揉柔糅蹂鞣厹媃宍楺渘煣瑈瓇禸粈腬莥葇蝚輮鍒鑐韖騥髳鰇鶔"},
{@"Ru",@"如入汝儒茹乳褥辱蠕孺蓐襦铷嚅缛濡薷颥溽洳侞偄吺咮嗕女媷嬬嶿帤扖挐擩曘月杁桇檽渪燸獳筎縟繻肉肗臑蒘蕠袽込邚鄏醹銣鑐需顬鱬鳰鴑鴽"},
{@"Rua",@"挼"},
{@"Ruan",@"软阮朊偄堧壖媆嫰愞撋檽渪濡燸瑌瓀碝礝緛耎腝蝡軟輭需"},
{@"Rui",@"瑞蕊锐睿芮蚋枘蕤兊兌兑內内叡壡婑惢抐撋桵棁橤汭甤笍綏緌繠绥苼蕋蘂蘃蜹踒鈉銳鋭鏸钠"},
{@"Run",@"润闰撋橍潤閏閠"},
{@"Ruo",@"若弱箬偌叒婼嵶惹挼捼撋楉渃溺焫爇篛芮蒻鄀鰙鰯鶸"},
{@"Sa",@"撒洒萨挲仨卅飒脎摋攃桬檫櫒殺泧潵灑纚蔡蕯薩訯躠鈒鎝鏾钑隡霅靸鞈颯馺"},
{@"Saeng",@"栍"},
{@"Sai",@"塞腮鳃思赛噻僿嗮嘥愢揌毢毸簑簺賽顋鰓"},
{@"Sal",@"乷虄"},
{@"San",@"三散伞叁馓糁毵霰俕傘傪厁参參叄叅壭帴弎橵毶毿潵犙糂糝糣糤繖蔘謲鏒鏾閐饊鬖彡氵"},
{@"Sang",@"桑丧嗓颡磉搡喪桒槡纕褬鎟顙"},
{@"Sao",@"扫嫂搔骚梢埽鳋臊缫瘙哨慅懆掃掻橾氉溞煰燥矂縿繅繰缲鄵鐰颾騒騷髞鯵鰠鰺鱢鲹"},
{@"Se",@"色涩瑟塞啬铯穑嗇寨廧愬懎拺擌栜槭歮歰泣洓渋渍溹漬澀澁濇濏瀒琗璱瘷穡穯粣繬蔷薔虩譅轖鉍銫鎍鎩鏼铋铩闟雭飋"},
{@"Sed",@"裇"},
{@"Sei",@"涁聓"},
{@"Sen",@"森掺摻槮渗滲篸襂"},
{@"Seng",@"僧鬙"},
{@"Seo",@"閪"},
{@"Seon",@"縇"},
{@"Sha",@"杀沙啥纱傻砂刹莎厦煞杉嗄唼鲨霎铩痧裟挲歃乷倽儍剎唦啑喢噎帹廈挱接摂摄摋攝榝樧殺濈猀硰箑粆紗繌繺翜翣菨萐蔱賒賖赊鎩閯閷霅魦鯊鯋"},
{@"Shai",@"晒筛色酾摋攦曬殺篩簁簛籭繺術諰閷"},
{@"Shan",@"山闪衫善扇杉删煽单珊掺赡栅苫掸膳陕汕擅缮嬗蟮芟禅跚鄯潸鳝姗剡骟疝膻讪钐舢埏傓僐僤儃儋刪剼単單嘇圸墠墡壇姍嶦幓挻掞搀搧摻擔攙敾晱曏曑杣柵椫樿檀檆櫼潬澘澹灗炶烻煔熌狦猭痁睒磰禪穇笘笧縿繕纔羴羶脠葠蔪蟬蟺襂襳覢訕謆譱贍赸軕邓邖釤銏鐥閃閄閊陝顃顫颤饍騸鯅鱓鱔鱣鳣彡凵髟"},
{@"Shang",@"上伤尚商赏晌墒汤裳熵觞绱殇垧丄仩傷场埫場塲尙恦愓慯扄殤湯滳漡禓緔蔏螪蠰觴謪賞踼鑜鞝鬺"},
{@"Shao",@"少烧捎哨勺梢稍邵韶绍芍召鞘苕劭潲艄蛸筲佋削卲娋弰招搜旓柖溲焼燒燿玿睄笤紹綃綤绡莦萔萷蕱袑輎鞩韒颵髾鮹杓"},
{@"She",@"社射蛇设舌摄舍折涉赊赦慑奢歙厍畲猞麝滠佘厙奓弽慴懾抴拾挕捨揲摂摵攝檨欇涻渉灄畬睫碟磼聂聶舎葉蔎虵蛞蛥蠂設賒賖輋闍阇鞨韘騇"},
{@"Shen",@"身伸深婶神甚渗肾审申沈绅呻参砷什娠慎葚糁莘诜谂矧椹渖蜃哂胂伔侁侺信兟參叄叅吲嘇堔妽姺嫀嬸孞宷審屾峷幓弞愼扟抌抻搷昚曋柛棯椮榊槮氠涁淰滲瀋燊珅甡甧瘆瘮眒眘瞋瞫矤祳穼籶籸紳綝罙罧脤腎葠蓡蔘薓蜄裑覾訠訷詵諗讅谉邥鉮鋠震頣駪魫鯅鯓鯵鰰鰺鲹鵢黮"},
{@"Sheng",@"声省剩生升绳胜盛圣甥牲乘晟渑眚笙嵊丞乗偗冼剰勝呏垩墭姓娍媵憴斘昇晠曻枡榺橳殅殸泩渻湦澠焺狌珄琞甸竔箵縄繩聖聲苼蕂譝貹賸鉎鍟阩陞陹鱦鵿鼪"},
{@"Shi",@"是使十时事室市石师试史式识虱矢拾屎驶始似嘘示士世柿匙拭誓逝势什殖峙嗜噬失适仕侍释饰氏狮食恃蚀视实施湿诗尸豕莳埘铈舐鲥鲺贳轼蓍筮炻谥弑酾螫丗乨亊佀佦兘冟勢卋厔叓呞呩咶唑啇噓埶堤塒奭姼媞嬕実宩宲寔實寺屍峕崼嵵師弒彖徥忕忯恀惿戺提揓斯旹昰時枾柹栻楴榁榯檡汁沶洂浉液湜湤溡溮溼澤澨濕烒煶狧狶獅瑡畤痑眂眎眡睗礻祏禵秲竍笶笹筛箷篒篩簭籂籭絁繹绎耆肢胑舍舓葹蒒蒔蝕蝨褆褷襫襹視觢訑試詩諟諡謚識貰赫跩軾辻遈遞適遰遾邿郝醳釃釈釋釶鈰鉂鉃鉇鉈鉐鉽銴鍉鍦鎩铊铩飠飭飾餙餝饣饬馶駛魳鮖鯴鰘鰣鰤鳲鳾鶳鸤鼫鼭齛齥"},
{@"Shou",@"手受收首守瘦授兽售熟寿艏狩绶収嘼垨壽夀扌掱敊涛涭濤獣獸痩綬膄醻鏉"},
{@"Shu",@"书树数熟输梳叔属束术述蜀黍鼠淑赎孰蔬疏戍竖墅庶薯漱恕枢暑殊抒曙署舒姝摅秫纾沭毹腧塾菽殳澍倏侸俆俞俶倐儵兪咰售嗽娶婌孎尌尗屬庻忬怷悆捈捒掓揄攄數暏書朮杸杼柕樞樹橾毺氀涑潄潏潻濖瀭焂瑹璹疋疎癙稌竪籔糬紓紵絉綀翛荗荼蒁蒣薥薮藪藷虪蠴蠾術裋襡襩謶豎豫贖跾踈軗輸透鄃野鉥錰鏣鐲镯陎除隃鮛鱪鱰鵨鶐鷸鸀鹬鼡忄丨"},
{@"Shua",@"刷耍唰唆涮誜选選"},
{@"Shuai",@"摔甩率帅衰蟀卛帥綏縗绥缞"},
{@"Shuan",@"栓拴闩涮專栒槫汕腨踹閂"},
{@"Shuang",@"双霜爽泷孀傱塽孇慡樉欆淙滝漺瀧灀礵縔艭鏯雙騻驦骦鷞鸘鹴"},
{@"Shui",@"水谁睡税说娷帨挩捝氺涗涚祱稅脽裞說説誰閖氵"},
{@"Shun",@"顺吮瞬舜俊巛巡廵恂楯橓眴瞚瞤蕣輴順鬊"},
{@"Shuo",@"说数硕烁朔搠妁槊蒴铄哾嗍嗽欶汋洬溯濯燿爍獡療矟碩箾药萷藥說説銏鎙鑠"},
{@"Shw",@"折"},
{@"Si",@"四死丝撕似私嘶思寺司斯食伺厕肆饲嗣巳耜驷兕蛳厮汜锶泗笥咝鸶姒厶缌祀澌俟亖以佀佁価俬偲傂儩凘厠台噝娰媤孠廝徙恖愢杫析枱柶梩楒榹泀泤洍涘瀃燍牭磃祠禗禠禩竢簛糸糹絲緦罒罳肂肄菥蕬蕼虒蜤螄螔蟖蟴覗謕貄逘釲鈶鈻鉰銉銯鋖鍶鐁雉颸飔飤飴飼饴駟騃騦鷉鷥麗鼶灬"},
{@"So",@"螦"},
{@"Sol",@"乺"},
{@"Song",@"送松耸宋颂诵怂讼竦菘淞悚嵩凇崧忪倯傱吅娀嵷庺愯慫憁憽捒捴揔摗枀枩柗梥棇楤檧漎濍硹聳蓯蘴蜙訟誦鍶鎹锶頌餸駷鬆"},
{@"Sou",@"艘搜擞嗽嗾嗖飕叟薮锼馊瞍溲螋傁凁叜廀廋捒捜摗撨擻敕族棷櫢欶涑潚獀瘶籔蒐蓃藪謏鄋醙鎪鏉颼颾餿騪"},
{@"Su",@"素速诉塑宿俗苏肃粟酥缩溯僳愫簌觫稣夙嗉谡蔌涑傃僁卹嗖囌圱圲埣塐嫊愬憟捽搬摵梀棴榡樎樕橚櫯殐泝洬溸潚潥玊珟璛甦碿稡稤穌窣粛縤縮肅膆莤藗蘇蘓訴謖趚蹜遡遬鋉餗驌骕鯂鱐鷫鹔"},
{@"Suan",@"酸算蒜狻匴撰痠祘笇筭篹选選"},
{@"Sui",@"岁随碎虽穗遂尿隋髓绥隧祟眭谇濉邃燧荽睢亗倠哸嗺埣夊娞嬘嵗挼旞檖歲歳毸浽滖澻瀡煫熣璲瓍睟砕禭穂穟簑粋粹綏縗繀繐繸缞脺膸芕荾莎葰蓑襚誶譢賥遀遗遺鏸鐆鐩陏隊隨雖靃鞖韢髄"},
{@"Sun",@"孙损笋榫荪飧狲隼喰孫巺扻損搎摌树槂潠猻畃筍箰簨蓀蕵薞跣鎨飱餐鶽"},
{@"Suo",@"所缩锁琐索梭蓑莎唆挲睃嗍唢桫嗦娑羧些傞嗩嫅岁嵗惢抄挱摍暛歲沙溑溹牺犧獻琑瑣璅簑簔縒縮莏葰蜶衰褨趖逡逤鎈鎍鎖鎻鏁霍靃髿魦鮻"},
{@"Ta",@"他她它踏塔塌拓獭挞蹋溻趿鳎沓榻漯遢铊闼嗒侤傝呾咜嚃嚺墖太崉搨搭撘撻榙毾涾湿溚澾濌濕牠狧獺祂禢荅褟誻譶蹹躢达迏迖逹達遝鉈錔鎉鎑闒闟闥阘鞈鞑鞜鞳韃鮙鰨"},
{@"Tae",@"垈襨"},
{@"Tai",@"太抬台态胎苔泰酞汰炱肽跆呔鲐钛薹邰骀儓冭咍囼坮大夳奤嬯孡忕忲態擡斄旲枱檯溙漦炲燤珆箈籉粏能臺舦菭詒诒軚釐鈦鈶颱駘鮐"},
{@"Tan",@"谈叹探滩弹碳摊潭贪坛痰毯坦炭瘫谭坍檀袒钽郯镡锬覃澹昙忐但倓傝僋儃啴嗿嘆嘽嘾埮墰墵壇壜婒弾彈怹惔憛憳憻掸撢撣擹攤暺曇榃橝歎沈淡湛湠漢潬灘炎璮痑癉癱禪緂繵罈罎胆舑舔舕荨菼蕁蕈藫裧襢談譚譠貚貪賧赕醈醓醰鉭錟顃餤鷤黮"},
{@"Tang",@"躺趟堂糖汤塘烫倘淌唐搪棠膛螳樘羰醣瑭镗傥饧溏耥帑铴螗伖偒傏儻劏啺嘡坣嵣弹愓戃扩摥擴攩曭榶橖欓湯漟漡煻燙爣矘磄禟篖簜糃糛膅荡蓎蕩薚蘯蝪赯踼蹚逿鄌鎕鎲鏜鐋鐺钂铛镋閶闛闣阊隚鞺餳餹饄鶶黨鼞"},
{@"Tao",@"套掏逃桃讨淘涛滔陶绦萄鼗洮焘啕饕韬叨仐匋咷夲夵姚嫍幍弢慆抭挑搯梼槄檮涭濤燾瑫祹筹籌絛綢綯縚縧绸绹蜪裪討詜謟跳轁迯醄鋾錭鞀鞉鞱韜頫飸饀駣騊"},
{@"Teng",@"疼腾藤誊滕僜儯幐漛痋籐籘縢膯虅螣謄邆霯駦騰驣鰧鼟"},
{@"Ti",@"提替体题踢蹄剃剔梯锑啼涕嚏惕屉醍鹈绨缇倜裼逖荑悌俶偍厗啑嗁嚔奃姼媂媞屜崹嵜弚弟徥徲悐惖惿戻折挮掦揥擿是桋棣楴歒殢洟渧漽狄珶瑅瓋睇碮磃禵稊穉籊綈緹罤肆苐蕛薙虒蝭蟬衹褅褆詆諦謕诋谛趧趯跃踶蹏躍躰軆达迏迖逷遆適銻錫鍗鐟锡題騠骵體髢髰鬀鬄鮧鮷鯷鳀鴺鵜鶗鶙鷈鷉鷤扌"},
{@"Tian",@"天田添填甜舔恬腆佃掭钿阗忝殄畋倎兲典吞呑唺嗔塡娗婖寘屇悿捵搷晪栝沺沾淟湉滇琠瑱璳甛甸町畇畑畠痶盷睓睼瞋碵磌窴紾緂胋舑舚苫菾蚕蚺覥觍賟酟鈿銛錪鍩鎭鎮铦锘镇闐靔靝靦顚顛颠餂鴫鷆鷏黇"},
{@"Tiao",@"条跳挑调迢眺龆笤祧蜩髫佻窕鲦苕粜儵咷啁姚嬥宨岧岹庣恌斢旫晀朓朷桃條樤祒稠窱糶絩聎脁脩艞芀萔蓚蓧蓨螩覜誂調超趒趠踔銚鋚鎥铫鞗頫鯈鰷齠"},
{@"Tie",@"铁贴帖萜餮僣占呫怗惵聑蛈蝶貼跕鉄鉆銕鋨鐡鐵锇飻驖鴩"},
{@"Ting",@"听停挺厅亭艇庭廷烃汀町莛铤葶婷蜓梃霆侱侹厛圢奠奵娗嵉庁庍廰廳忊桯楟榳涏渟濎烴烶珵珽筳綎耓聤聴聼聽脡艼蝏誔諪邒鋌閮鞓頲颋鼮"},
{@"Tol",@"乭"},
{@"Ton",@"獤"},
{@"Tong",@"同通痛铜桶筒捅统童彤桐瞳恫侗酮潼茼仝砼峒恸佟嗵垌偅僮劏勭哃囲峂峝庝恿慟憅晍曈朣樋橦氃洞浵湩炵烔熥燑爞犝狪獞痌眮硐硧秱穜筩粡絧統綂膧艟蓪蚒蜼蟲衕詷赨重鉖鉵銅餇鮦鲖冂"},
{@"Tou",@"头偷透投钭骰亠偸埱妵婾媮愉敨斢殕紏綉緰绣蘣褕諭諳谕谙逗鋀鍮頭飳黈"},
{@"Tu",@"土图兔涂吐秃突徒凸途屠酴荼钍菟堍余兎凃唋啚図圖圗圡堗塗墿宊峹嵞嶀庩廜怢悇捈捸揬摕斁杜梌檡汢涋湥潳瑹痜瘏禿稌筡腞腯莵葖蒤趃跌跿迌釷鈯鋀鋵鍎馟駼鵌鵚鵵鶟鷋鷵鼵"},
{@"Tuan",@"团湍疃抟彖剬剸団圕團塼墥嫥專慱摶敦槫檲湪漙煓猯畽磚稅税篿糰蓴褍褖貒鏄鱄鶉鷒鷻鹑"},
{@"Tui",@"腿推退褪颓蜕煺忒侻俀僓啍墤娧尵弚弟怢橔稅税穨聉脫脮脱蓷藬蘈蛻謉讉蹆蹪追隤頹頺頽饋馈駾騩骽魋"},
{@"Tun",@"吞屯褪臀囤氽饨豚暾吨呑啍噋坉庉忳憞旽朜汭沌涒炖焞燉畽窀純纯肫膯臋芚蜳豘軘逐錪霕飩魨鲀黗"},
{@"Tuo",@"拖脱托妥驮拓驼椭唾鸵陀魄橐柝跎乇坨佗庹酡柁鼍沱箨砣他仛侂侻咃啴嘽堶媠嫷它岮彵惰扡拕挩捝撱杔杝棁楕槖橢毤毻汑池沰涶牠狏砤碢磚稅税籜紽脫舃舄莌萚蘀蛇蟺袉袘袥訑託詑說説讬说跅踻軃迆迤迱鉈鋖铊阤陁隋飥饦馱馲駄駝駞騨驒驝魠鮀鰖鱓鴕鵎鼉鼧舵"},
{@"Uu",@"屗徚斏曢朑桛歚毜毝毮洜烪焑焽燞癷皼祍稥耂聁聣艈茒蒊蓞藔虲蝊袰贘躼辪鍂鎼鐢闧霻鶑"},
{@"Wa",@"挖瓦蛙哇娃洼凹袜佤娲腽劸咓唲啘嗗嗢姽媧屲帓徍搲攨汙汚污溛漥瓲畖砙穵窊窐窪聉膃襪譁邷靺鞋韈韎韤鮭鲑黳鼃"},
{@"Wai",@"外歪崴呙咼喎夭瀤竵顡"},
{@"Wan",@"完万晚碗玩弯挽湾丸腕宛婉烷顽豌惋娩皖蔓莞脘蜿绾芄琬纨剜畹菀乛倇免关刓卍卐唍园埦塆壪夗夘妧婠孯岏帵彎忨惌抏捖捥掔晩晼朊杤梚椀槾汍涴潫澫灣琓盌睕笂箢紈絻綄綩綰翫脕苋莧莬萖萬薍蚖貦貫贃贎贯踠輐輓邜鄤鋄鋔鋺錽鍐鎫関闗關頑骩骪骫魭"},
{@"Wang",@"望忘王往网亡枉旺汪妄芒辋魍惘罔亾仼兦匡尢尣尩尪尫彺徃徍忹抂暀朚朢棢瀇焹琞皇盳網莣菵蚟蛧蝄誷輞迋迬"},
{@"Wei",@"为位未围喂胃微味尾伪威伟卫危违委魏唯维畏惟韦巍蔚谓尉潍纬慰桅萎苇渭遗葳帏艉鲔娓逶闱隈沩玮涠帷崴隗诿洧偎猥猬嵬軎韪炜煨圩薇痿亹倭偉偽僞儰厃叞哙唩喡喴噲囗圍堤墛壝媁媙媦寪岿峗峞崣嵔嶶巋幃廆徫恑愄愇懀捤捼揋揻撝撱斖暐有机梶椲椳楲欈沇洈浘渨湋溈溦潙潿濊濰濻瀢為烓煀煒煟熨熭燰爲犚犩猗猚琟瑋璏瓗痏癐癓眭瞶硊硙碨磈磑立維緭緯縅罻腲芛芟苿茟荱荽菋萏葦葨蒍蓶蔿薳藯蘶蜲蜹蜼蝛蝟螱衛衞褽覣覹觹觽觿詴諉謂讆讏趡踒踓躗躛轊違遺鄬醀錗鍏鍡鏏闈阢隇隹霨霺韋韑韙韡頠颹餧餵饖骩骪骫鮇鮠鮪鰃鰄鰖鳂鳚"},
{@"Wen",@"问文闻稳温吻蚊纹瘟紊汶阌刎雯璺免呅呚呡問塭妏娩彣忞忟愠慍抆揾搵昧昷桽榅榲歾殁殟渂溫炆煴珳瑥瘒眼砇穏穩笏紋絻緼縕缊聞肳脕脗芠莬蕰蕴薀藴蘊蚉螡蟁褞豱輼轀辒鈫鎾閺閿闅闦限韞韫顐饂馼魰鰛鰮鳁鳼鴍鴖鼤亠"},
{@"Weng",@"翁嗡瓮蕹蓊勜塕壅奣嵡暡滃甕瞈罋聬蒙螉鎓鶲鹟齆"},
{@"Wie",@"膸"},
{@"Wo",@"我握窝卧挝沃蜗涡斡倭幄龌肟莴喔渥硪仴偓唩嗌噁嚄埚堝夭婐婑媉媪媼捰捼捾撾擭杌枂楃涴涹渦濄濣焥猧瓁瘟瞃矆窩腛臒臥艧萵蒦薶蝸踒踠雘馧齷龏"},
{@"Wu",@"无五屋物舞雾误捂污悟勿钨武戊务呜伍吴午吾侮乌毋恶诬芜巫晤梧坞妩蜈牾寤兀怃阢邬忤骛於鋈仵杌鹜婺迕痦芴焐庑鹉鼯浯圬乄亡亾仡伆侉俉倵儛兦剭務吳呉啎喔嗚噁垭埡堥塢墲奦娒娪娬嫵屼岉峿嵍嵨幠廡弙御忢悞悮惡憮扜扝扤揾摀敄旄旿杅杇柮橆歍母汙汚沕洖洿渞渥溩潕烏無熃熓玝珷珸瑦璑甒瞀瞴矹碔祦禑窏窹笏箼粅膴茣莁莫蕪蘁螐蟱誈誣誤譕趶躌逜郚鄔釫鋘鋙錻鎢铻陚隖雺霚霧霿靰騖鯃鰞鴮鵐鵡鶩鷡鹀鼿齀齬龉唔蝥"},
{@"Xi",@"西洗细吸戏系喜席稀溪熄锡膝息袭惜习嘻夕悉矽熙希檄牺晰昔媳硒铣烯腊析隙栖汐犀蜥奚浠葸饩屣玺嬉禊兮翕穸禧僖淅蓰舾蹊醯欷皙蟋羲茜徙隰唏曦螅歙樨阋粞熹觋菥鼷裼舄义係俙傒凞匸卌卥卻厀吚呬呰咥咦咭唽噏嚊嚱塈壐奊娭媐嬆宩屃屎屖屭嵠嶍嶲巂巇廗徆徯忔忚忥怬怸恄悕惁愾慀憘憙戯戱戲扱扸摡撕擊既晞晳暿杫枲桸棲椞椺榽槢橀橲欪欯歖氣氥洒渓湿滊漇漝潝潟澙濕灑焁焈焟焬煕熂熈熺熻燍燨爔犔犠犧狶猎獡獻琋璽瓕瘜盻睎瞦矖碏磶礂稧窸糦細綌緆縘縰繥繫纚绤羛義習翖肸肹胁脅脇脋舃莃莔葈蒠蒵蓆蔇蕮薂虩蜤蜴蝷螇蟢蠵衋褶襲覀覡覤觹觽觿訢詑誒諰謑謚謵譆诶谥谿豀豨豯貕赥赩趇趘蹝躧遟郄郋郤鄎酅釐釳釸鈒鈢鉨鉩銑錫錯鎴鏭鑴钑错闟隟隵雟雭霫霼飁餏餙餼饻騱騽驨鬩鯑鰓鰼鱚鳃鳛鵗鸂黖鼰鼳郗"},
{@"Xia",@"下吓夏峡虾瞎霞狭匣侠辖厦暇唬狎柙呷黠硖罅遐瑕丅俠假傄叚呀哧嗄嗑嚇圷埉夓夾岈峽廈徦懗押捾搳敮昰梺欱歃毳浃浹溊炠烚煆狹珨疜疨瘕睱硤碬磍祫笚筪給縀縖给翈舝舺芐葭蕸蝦螛諕謑谺赮轄郃鍜鎋鏬閕閜陜陿颬騢魻鰕鶷"},
{@"Xian",@"先线县现显掀闲献嫌陷险鲜弦衔馅限咸锨仙腺贤纤宪舷涎羡铣见苋藓岘痫莶籼娴蚬猃祆冼燹跣跹酰暹氙鹇筅霰仚伣伭佡俔僊僩僲僴咁咞哯唌啣嗛嘕垷埳堿壏奾妗妶姍姗姭姺娊娨娹婱嫺嫻嬐孅寰尟尠屳峴崄嶮幰廯忺慊慳憪憲憸懢挦捍探揱搚搟撊撏攇攕晛杴枮梘槏橌櫶欦毨洒洗涀湺溓澖濂瀗灑灦烍狝獫獮獻玁玹珗現甉癇癎盷省県睍瞯矣硍碱礆礥禒禰秈稴笕筧箲粯糮絃絤綅綖綫線縣縿繊纎纖缐羨羬肩胁胘脅脇脋膁臔臤臽苮莧蔹薟藖蘚蘝蘞蚿蛝蜆衘褼襳見誢誸諴譀譣豏賢贒赻蹮躚軐軒輱轩醎醶釤銑銛銜鋧錎錟鍁鍌鏾鑦钐铦锬閑閒闞阚陥険險韅韯韱顈顕顯餡饀馦鮮鰔鱻鶱鷳鷴鷼鹹麙麲黹鼸"},
{@"Xiang",@"想向象项响香乡相像箱巷享镶厢降翔祥橡详湘襄飨鲞骧蟓庠芗饷缃葙亨亯佭傢儴勨勷啌啍嚮姠嶑廂忀攘晑曏栙楿欀洋潒珦瓖瓨絴緗纕缿羏膷舡萫薌蘘蚃蠁衖襐詳跭迒郷鄉鄊鄕銄銗鋞鐌鑲閧闀闂響項餉饗饟驤鬨鮝鯗鱌鱜鱶鴹麘"},
{@"Xiao",@"小笑消削销萧效宵晓肖孝硝淆啸霄哮嚣校魈蛸骁枵哓崤筱潇逍枭绡箫佼侾俏俲傚効叜叟号呺呼咲咻哨唠唬啋嗃嘋嘐嘨嘮嘯嘵嚻囂姣婋宯庨彇恔恷憢挠捎揱搜撓撨敩斅斆暁曉梟梢橚櫹歊歒歗殽毊洨涍滧漻潚澩瀟灱灲烋焇熇熽燆燺爻狡猇獟獢痚痟皛皢睄硣穘窙笹筿箾篠簘簫絞綃縿绞翛胶脩膮芍茭莦萷蕭薂藃虈虓蟂蟏蟰蠨訤詨誟誵謏謞謼譊踃較轇较郩銷颵騷驍驕骄骚骹髇髐鴞鴵鵁鷍鷕鸮"},
{@"Xie",@"写些鞋歇斜血谢卸挟屑蟹泻懈泄楔邪协械谐蝎携胁解契叶绁颉缬獬榭廨撷偕瀣渫亵榍邂薤躞燮勰伳偞偰僁儶冩劦協卨吤唏喈嗋噧垥塮夑夾奊娎媟孈寫屓屜屟屧屭峫嶰徢恊愶慀拹挾接揳搚摺擕擷攜旪暬枻桔榝槷欸歙殺汁洩湝溉滊潰澥瀉灺炧炨烲焎熁燲爕猲瑎眭碿祄禼糏紲絏絜絬綊緤緳繲纈缷翓耶脅脇脋膎薢藛蝑蝢蠍蠏衺裌褉褻襭觟觧諜諧謝譮讗谍豫跬躠迦鍱鐷隰鞢鞵韰頁頡页骱鬹魼鮭鲑齂齘齛齥龤溃"},
{@"Xin",@"新心欣信芯薪锌辛寻衅忻歆囟莘镡馨鑫昕伈伩俽兴噷噺妡姰嬜孞尋庍廞惞愖憖撢杺枔橝欵款歀潃炘焮盺礥脪興舋襑訢訫軐邤釁鈊鋅鐔阠顖馫馸鬵"},
{@"Xing",@"性行型形星醒姓腥刑杏兴幸邢猩惺省硎悻荥陉擤荇侀倖哘坓坙垶塂娙婞嫈嬹巠曐洐涬滎煋熒狌瑆皨睲研硏箵篂緈胜臖興莕蛵裄觪觲謃郉鈃鉶銒鋞钘铏陘餳饧騂骍鮏鯹"},
{@"Xiong",@"胸雄凶兄熊汹匈芎兇哅夐宪忷恟敻昫洶焸胷訩詗詾讻诇賯赨"},
{@"Xiu",@"修锈绣休羞宿嗅袖秀朽臭溴貅馐髹鸺咻庥岫俢嚊樇櫹滫烋烌煦珛琇璓糔綇綉繍繡脙脩臰臹苬茠莠蓨螑裦褎褏銝銹鎀鏅鏥鏽飍饈髤鮴鱃鵂齅"},
{@"Xu",@"许须需虚嘘蓄续序叙畜絮婿戌徐旭绪吁酗恤墟糈勖栩浒蓿顼圩洫胥醑诩溆煦盱砉亐伃休伵余侐俆偦冔勗卹呕呴呼咻喣嗅嘔嘼噓垿壻妶姁姐媭嬃幁怴怵恓惐慉掝揟敍敘旮旴昫晇暊朂朐楈槒欨欰欻歔歘殈汿沀淢湑滀滸漵潊烅烼獝珝珬疞盢盨眗瞁瞲矞稰稸窢籲続緒緖緰縃繻續聟肷胊芋芌芧蒣蓲蕦藇藚虗虛蚼蛡蝑規规訏許訹詡諝諿謣謳譃讴谞賉邪鄦鉥銊鑐雩須頊馘驉鬚魆魖魣鱮"},
{@"Xuan",@"选悬旋玄宣喧轩绚眩癣券暄楦儇渲漩泫铉璇煊碹镟炫揎萱痃谖亘吅咺喛塇夐妶姰媗嫙嬛弲怰愃愋懁懸揈撰擐昍昡晅暅暖暶梋楥檈洵涓澴烜煖狟獧玆玹琁琄瑄璿瓊癬盤眴睻矎禤箮絃絢絹縣縼繏绢翧翾萲蓒蔙蕿藼蘐蜁蜎蝖蠉衒袨諠諼譞讂贙軒轋選還鉉鋗鍹鏇鐶镮鞙颴饌馔駨駽鰚"},
{@"Xue",@"学雪血靴穴削薛踅噱鳕泶乴决勪吷哮嚯坹壆學岤峃嶨怴斈桖梋樰決泧泬滈澩瀥炔烕燢狘疦疶瞲膤艝茓蒆袕觷謔谑趐轌辥雤鞾韡鱈鷽鸴"},
{@"Xun",@"寻讯熏训循殉旬巡迅驯汛逊勋荤询浚巽鲟浔埙恂獯醺洵郇峋蕈薰荀窨曛徇伨侚偱勛勲勳卂咰噀噚嚑坃塤壎壦奞姰孙孫尋廵悛愻揗撏攳杊栒桪梭樳殾毥洒潭潯濬灥焄煇燂燅燖燻爋爓狥狻珣璕眴矄稄筍筼篔紃絢纁绚臐荨葷蔒蕁薫蘍蟫蟳襑訊訓訙詢賐迿逡遁遜鄩鑂鑫顨馴駨鱏鱘鶽彐"},
{@"Ya",@"呀压牙押芽鸭轧哑亚涯丫雅衙鸦讶蚜垭疋砑琊桠睚娅痖岈氩伢迓揠乛亜亞俹倻劜厊厌厓厭吖吾呾唖啞圔圠圧埡堊堐壓姶婭孲崕庌庘御拁挜掗札枒椏椻歇氬浥漄潝烏犽猚猰玡瑘疨瘂碣磍稏穵窫笌聐蕥襾訝軋輅輵辂邪釾錏鐚铔閘闸顔颜鴉鴨鵪鵶鶕鹌鼼齖齾崖"},
{@"Yan",@"眼烟沿盐言演严咽淹炎掩厌宴岩研延堰验艳殷阉砚雁唁彦焰蜒衍谚燕颜阎铅焉奄芫厣阏菸魇琰滟焱赝筵腌兖剡餍恹罨檐湮偃谳胭晏闫俨郾酽鄢妍鼹崦阽嫣乵但俺偐偣傿儼兗円剦匽厂厃厭厳厴唌喦喭噞嚥嚴囐埏埯塩墕壛壧夵妟姲姸娫娮媕嬊嬐嬮嬿孍屵崄嵃嵒嵓嶖嶮巌巖巗巘巚巡广庵廵弇彥愝懕戭扊抁挩挻捝掞揅揜揞敥昖晻暥曕曮棪椻椼楌樮橪檿櫩欕殗氤沇洇洝涎淊淡淫渰渷湺溎漹灎灔灧灩炏烻焔煙熖燄爓牪狠狿猒珚琂瓛甗硏硯硽碞礹篶簷綖縯羡羨膁臙艶艷莚莶菴萒葊葕蔅蔫薟虤蝘裺褗覃覎觃觾訁訮詽諺讌讞讠豓豔豜豣贋贗趼躽軅这這遃郔酀酓醃醶醼釅鉛錟锬閆閹閻閼阭险陰隁隒險靥靨顏顑顔顩饜騐験騴驗驠鬳魘鰋鳫鳱鴈鴳鶠鷃鷰鹽麙麣麲黡黤黫黬黭黰黶鼴齗齞齴龂龑"},
{@"Yang",@"样养羊洋仰扬秧氧痒杨漾阳殃央鸯佯疡炀恙徉鞅泱蛘烊怏佒傟劷勜卬咉坱垟奍姎婸將岟崵崸慃懩抰揚攁敭旸昂昜映暘柍楊楧様樣歍氜氱湯潒瀁炴煬珜瑒瘍癢眏眻礢禓紻羏羕羘羪胦英詇詳諹详軮輰鉠鍈鍚鐊钖阦陽雵霙霷颺飏飬養駚鰑鴦鴹鸉"},
{@"Yao",@"要摇药咬腰窑舀邀妖谣遥姚瑶耀尧钥侥陶约疟珧夭鳐鹞轺爻吆铫幺崾肴曜徭杳窈么乐仸倄偠傜僥匋啮喓嗂噛嚙垚堯娆婹媱嬈宎尭岆峣嶢嶤幼徺怮恌愮抭揺搖摿撽暚曣枖柼楆榚榣樂殀殽洮淫溔滛瀹烄烑熎燿狕猶猺獟玅瑤由眑矅磘祅穾窅窔窯窰筄箹約繇纅艞苭荛葯葽蓔蕘薬藥蘨袎覞訞詏謠謡讑趯踰軺遙銚鎐鑰闄隃靿顤颻飖餆餚騕驁骜鰩鴁鴢鷂鷕鼼齩"},
{@"Ye",@"也夜业野叶爷页液掖腋冶噎耶咽曳椰邪谒邺晔烨揶铘靥亪亱倻偞僷吔啘喝嘢嚈埜堨墅墷壄射峫嶪嶫懕抴拽捓捙揞揲擖擛擨擪擫斜暍曄曅曗枒枼枽楪業歋殕殗洂洇涂漜潱澲煠熀燁爗爺瓛痷皣瞱瞸礏窫緤聂聶荼葉虵蠮蠱謁鄓鄴釶釾鋣鍱鎁鎑鐷靨頁餘餣饁饐馀馌驜鵺鸈黦"},
{@"Yi",@"一以已亿衣移依易医乙仪亦椅益倚姨翼译伊蛇遗食艾胰疑沂宜异彝壹蚁谊揖铱矣翌艺抑绎邑蛾屹尾役臆逸肄疫颐裔意毅忆义夷溢诣议怿痍镒癔怡驿旖熠酏翊欹峄圯殪嗌咦懿噫劓诒饴漪佚咿瘗猗眙羿弈苡荑仡佾贻钇缢迤刈悒黟翳弋奕蜴埸挹嶷薏呓轶镱舣丿乁乂也亄伇伿佁佗侇俋偯儀億儗兿冝劮勚勩匇匜印叆叕台叹吚听呭呹唈噎囈圛圪坄坨垼埶墿壱夁夕失奇妷姬媐嫕嫛嬄嬑嬟孴它宐宧寱寲射峓崎崺嶧嶬巳巸帟帠幆庡廙弌弬彛彜彞彵忔怈怠恞悘悥憶懌戺扅扆扡择拸掎掜搋搤撎擇攺敡敼斁施旑昳晹暆曀曎曵杙杝枍枻柂栘栧栺桋棭椬椸榏槷槸樴檍檥檹櫂欥欭歖歝殔殹毉汽沶治泄泆洢洩洫浂浥浳渫湙潩澤澺瀷炈焉焬焱焲熈熙熤熪熼燚燡燱犄狋狏獈玴珆瑿瓵畩異疙痬瘞瘱睪瞖硪礒礙祎禕秇稦穓竩笖箷簃籎紲絏維綺縊繄繶繹绁绮维羛羠羡羨義耛耴肊膉艗艤芅苅苢萓萟蓺藙藝蘙虉蛜蛡蛦螔螘螠蟻衤衪衵袂袆袘袣裛裿褘褹襗襼觺訑訲訳詍詑詒詣誃誒誼謚謻譩譯議譺讉讛诶谥豙豛豷貖貤貽賹贀跇跠踦軼輗輢轙辥辷迆迭迱迻逘遺郼醫醳醷释釋釔釴釶鈘鈠鉇鉈鉯銕銥錡鎰鏔鐿钀铊锜阣阤陁陭隶隿雉霅霬靉靾頉頤頥顊顗飴饐駅驛骮鮧鮨鯣鳦鴺鶂鶃鶍鷁鷊鷖鷧鷾鸃鹝鹢鹥黓黝黳齮齸"},
{@"Yin",@"因引印银音饮阴隐荫吟尹寅茵淫殷姻烟堙鄞喑夤胤龈吲圻狺垠霪蚓氤铟窨瘾洇茚乑乚伒众侌傿冘凐听唫噖噾嚚囙圁垔垦垽堷壹婣婬峾崟崯嶾币廕愔慇慭憖憗懚斦朄栶梀檃檭檼櫽欭欽歅殥沂泿洕浔淾湚溵滛潭潯濥濦烎犾猌玪珢璌瘖癊癮硍碒磤禋秵筃粌絪緸縯芩苂荶蒑蔩蔭蘟螾蟫裀言訔訚訡訢誾諲讔赺趛輑酓酳釿鈏鈝銀銦闇闉阥陰陻隂隠隱霒霠靷鞇韾飮飲駰骃鮣鷣齗齦龂"},
{@"Ying",@"应硬影营迎映蝇赢鹰英颖莹盈婴樱缨荧萤萦楹蓥瘿茔鹦媵莺璎郢嘤撄瑛滢潆嬴罂瀛膺荥颍俓偀僌哽啨営噟嚶塋夃央媖嫈嬰孆孾嵤巆巊廮応愥應摬攍攖攚旲景暎朠柍桜桯梬櫻櫿泂浧渶溁溋滎潁濙濚濴瀅瀠瀯瀴灐灜焸煐熒營珱瑩瓔甇甖甸癭盁眏矨碤礯穎籝籯緓縄縈繩纓绬绳罃罌耺膡莖萾藀蘡蛍蝧蝿螢蠅蠳褮覮謍譍譻賏贏軈逞鎣鐛鑍锳霙鞕韹韺頴颕鱦鴬鶧鶯鷪鷹鸎鸚"},
{@"Yo",@"哟育唷喲嚛"},
{@"Yong",@"用涌永拥蛹勇雍咏泳佣踊痈庸臃恿壅慵俑墉鳙邕喁甬饔镛傛傭勈嗈噰埇塎嫞容嵱廱彮怺悀惥愑愹慂揘擁柡栐槦湧滽澭灉牅癕癰砽硧禜筩臾苚蒏蕹詠踴遇郺鄘醟銿鏞雝顒颙鯒鰫鱅鲬鷛"},
{@"You",@"有又由右油游幼优友铀忧尤犹诱悠邮酉佑釉幽疣攸蚰莠鱿卣黝莸猷蚴宥牖囿柚蝣莜鼬铕蝤繇呦侑丣亴偤優冘叹哊唀嚘坳奥妋姷孧尢尣峟峳庮怞怣怮憂懮戭扰揂揄斿栯梄梎楢槱櫌櫾汓汼沋泅泈泑浟湵滺瀀牗牰狖猶獶甴痏祐禉秞糿纋羐羑羗耰聈聱肬脜脩苃莤蒏蕕蚘蜏褎褏訧誘貁輏輶迶逌逰遊邎郵鄾酭鈾銪銹锈駀魷鮋鲉麀"},
{@"Yu",@"与于欲鱼雨余遇语愈狱玉渔予誉育愚羽虞娱淤舆屿禹宇迂俞逾域芋郁谷吁盂喻峪御愉粥渝尉榆隅浴寓裕预豫驭蔚妪嵛雩馀阈窬鹆妤揄窳觎臾舁龉蓣煜钰谀纡於竽瑜禺聿欤俣伛圄鹬庾昱萸瘐谕鬻圉瘀熨饫毓燠腴狳菀蜮蝓丂亏亐伃俁俼偊傴僪儥兪匬叞吳吾唷唹喁喅喐喩噊噢噳圫堉堣堬墺夕奥娛娪娯婾媀媮嫗嬩宛寙峿崛崳嵎嶎嶼庽彧忬悆悇惌惐慾懊懙或戫扜扵拗挧捓敔斔斞旟昙杅栩栯桙梧棛棜棫楀楡楰櫲欎欝歈歟歶汙汚污汩淢淯湡滪漁澚澞澦澳灪灹焴煨燏燰爩牏獄獝王玗玙琙琟瑀璵畬畭痏瘉癒盓睮矞砡硢礇礖礜祤禦秗稢稶穥穻箊篽籅籞籲紆緎繘罭羭翑腧與舒艅芌苑茟茰荢菸萭萮蒮蓹蕍蕷薁藇蘌蘛虶蜍蜟蝺螸蟈衘衙衧袬褕覦語諛諭謣譽貍貐貗踰軉輍輿轝迃逳遹邘郚鄅酑醧釪鈺銉鋊鋙錥鍝鐍鐭铻閼閾阏陓隃隩雓霱預頨顒颙飫餘饇馭騟驈骬髃鬰鬱魊魚魣鮽鯲鰅鱊鱮鳿鴥鴧鴪鵒鷠鷸鸆鸒麌齬齵肀"},
{@"Yuan",@"远员元院圆原愿园援猿怨冤源缘袁渊苑垣鸳辕圜鼋橼媛爰眢鸢掾芫沅瑗螈箢塬垸傆允剈厡厵咽員喛噮囦圎園圓夗妧妴媴嫄嫚嬽宛寃弲悁惌捐杬棩楥榞榬櫞涓涴淵渁渆渕湲溒灁焆猨獂盶禐穿笎緣縁羱肙葾蒝蒬薗薳蚖蜎蜵蝝蝯衏裫裷褑褤謜貟贠輐轅逺遠邍邧酛鈨鋺鎱阮陨隕願駌騵魭鳶鴛鵷鶢鶰鹓黿鼘鼝"},
{@"Yue",@"月越约跃阅乐岳悦曰说粤钥瀹钺刖龠栎樾哕哾噦囝块妁妜嬳岄嶽彟彠恱悅戉扚抈捳擽曱枂櫟汋烁焆爍爚玥矆矱礿禴箹篗籆籥籰粵約臒药蘥蚎蚏蛻蜕蠖說説趯跀跞躍躒軏鈅鉞銳鋭鑠铄锐閱閲髺鸑鸙黦龥"},
{@"Yun",@"云运晕允匀韵陨孕耘蕴酝郧员氲恽愠郓芸筠韫昀狁殒纭熨伝傊勻叞呍員喗囩均夽奫妘媪媼尉尹怨惲愪慍抎抣暈枟榅樂橒殞氳沄涒涢温溳澐煇煴煾熅熉玧畇瘟盾眃磒秐筍筼篔紜緷緼縕縜繧缊耺腪苑荺菀蒀蒕蒷蕓蕰薀藴蘊蜵蝹褞貟賱贇贠赟輼轀辒運鄆鄖醖醞鈗鋆阭隕雲霣韗韞韻頵餫馧馻齫齳"},
{@"Za",@"杂砸咋匝扎咱咂拶啈啐喒嘁噈囃囋囐帀桚沞沯濽灒磼籴紥紮臜臢襍鉔雑雜雥韴魳"},
{@"Zad",@"曱"},
{@"Zai",@"在再灾载栽宰哉甾崽仔傤儎才扗洅渽溨災烖睵縡菑賳載酨"},
{@"Zan",@"咱暂攒赞簪趱糌瓒拶昝錾偺儧儹兂喒囋寁揝撍攢暫桚涔湔濺濽灒瓉瓚禶穳篸簮臢襸讃讚賛贊趲蹔鄼酂酇鏨鏩鐕鐟饡"},
{@"Zang",@"脏葬赃藏奘臧驵匨塟弉戕牂牫羘臓臟蔵賍賘贓贜銺駔驡髒"},
{@"Zao",@"早造遭糟灶燥枣凿躁藻皂噪澡蚤唣傮唕喿慥栆梍棗槽煰璅璪皁窖竃竈簉繅繰缫缲艁草薻謲譟趮蹧醩鑿"},
{@"Ze",@"则责择泽咋侧箦舴帻迮啧仄昃笮赜伬側則厕厠唶啫嘖夨嫧崱幘庂廁択捑措擇昗柞樍歵汄沢泎溭滜澤灂皟睪瞔矠礋稄稷簀耫萚葃蔶蘀蠌襗諎謫謮讁谪責賾飵鸅齚齰"},
{@"Zei",@"贼蠈賊鯽鰂鱡鲗鲫"},
{@"Zen",@"怎谮僭囎撍譖譛"},
{@"Zeng",@"增赠憎曾综缯罾甑锃増曽橧熷璔矰磳綜縡繒譄贈鄫鋥鬷鱛"},
{@"Zha",@"扎炸渣闸眨榨乍轧诈铡札蜡查栅咋砟痄吒哳楂猹蚱揸喋柞咤齄偞偧冊册剳劄厏哆喥囃奓宱怍扠抯拃挓挿插揷搩搾摣擖柤柵樝渫溠潳灹煠牐甴皶皻笮箑箚紥紮耫膪苲苴蔖蕏藸蚻觰詐諎謯譇譗踷蹅軋迊醡鍘閘霅鞢鮓鮺鰈鲊鲝鲽齇齟齰龃馇喳"},
{@"Zhai",@"摘窄债斋寨择翟宅侧祭砦瘵亝側債厇厏啇嚌夈度抧捚擇擿斎柴榸檡牴疵箦簀粂膪責责鉙駘骀骴齋"},
{@"Zhan",@"站占战盏沾粘毡展栈詹颤蘸湛绽斩辗崭瞻谵搌旃亶佔偡噡嫸嵁嶃嶄嶘嶦怗惉戦戰拃斬旜栴桟棧椾榐橏欃氈氊湔澶琖皽盞碊綻菚薝虥虦蛅袒襢覱詀謙譧譫讝谦趈跕蹍躔輚輾轏邅醆醮閚霑颭飐飦餰饘驏驙骣魙鱣鳣鳽鸇鹯點黵"},
{@"Zhang",@"张章长帐仗丈掌涨账樟杖彰漳胀瘴障仉嫜幛鄣璋嶂獐蟑仧傽墇帳幥弡張慞扙承暲涱漲痮瘬瞕礃粀粻脹蔁賬遧鏱鐣長镸鞝餦騿鱆麞"},
{@"Zhao",@"找着照招罩爪兆朝昭沼肇嘲召赵棹啁钊笊诏佋啅垗妱巶旐晁曌枛桃櫂淖濯炤燳爫狣瑵皽盄瞾窼箌罀羄肁肈菬著蚤詔謿趙釗釽鉊鍣駋鮡鳭鼂鼌"},
{@"Zhe",@"着这者折遮蛰哲蔗锗辙浙柘辄赭摺鹧磔褶蜇谪乇仛厇啠喆嗫嗻嘀嚞囁埑堵嫬庶悊慹扸摂摄攝斥晢晣杔棏樀樜歽淛潪矺砓籷粍耷聂聑聶虴蟄蟅袩褚襵詟謫謶謺讁讋軼輒輙轍轶這適銸鍺陬馲驝鮿鷓鷙鸷著"},
{@"Zhen",@"真阵镇针震枕振斟珍疹诊甄砧臻贞侦缜蓁祯箴轸榛稹赈朕鸩胗浈桢畛圳椹侲偵唇坫塡塦填姫嫃寊屒帪弫慎戡抮挋揕搸敒敶昣朾枮栕栚桭楨榐槇樼殝沴沵湞溱滇潧澵獉珎瑧眕眞眹碪禎禛竧籈紖紾絼縝縥纼聄萙葴蒖薽蜄袗裖覙診誫謓貞賑趁趂軫轃辴迧遉酖酙針鈂鉁鋴錱鍖鍼鎭鎮陣陳靕駗鬒鮝鱵鲞鴆黮黰鼎鼑帧"},
{@"Zheng",@"正整睁争挣征怔证症郑拯丁蒸狰政峥钲铮筝诤徵鲭丞伥佂倀凧埥埩塣姃媜崝崢嶒幀徎徰徴愸憕承抍掙掟揁撜敞晸止氶浧湞炡烝爭猙町癥眐睜瞠箏篜糽綪聇脀証諍證趟踭鄭鉦錚鬇鮏鯖鯹鴊帧"},
{@"Zhi",@"只之直知制指纸支芝枝稚吱蜘质肢脂汁炙织职痔植抵殖执值侄址滞止趾治旨窒志挚掷至致置帜识峙氏智秩帙摭黹桎枳轵忮祉蛭膣觯郅栀彘芷祗咫鸷絷踬胝骘轾痣陟踯雉埴贽卮酯豸跖栉乿亊伎俧倁値偫傂儨凪剬劕劧厔咥嚔坁坧垁埃執墆墌多夛妷姪娡媞嬂实寘實崻巵帋幟庢庤廌徏徔徝徴徵恃恉慹憄懥懫戠扺扻抧拓拞挃捗搘搱摕摨摯擲擳擿斦旘昵晊杝杫柣栺栽梔梽椥楖榰槜樀樲樴櫍櫛歭氐汥汦沚泜洔洷淽滍滯漐潌潪瀄熫犆狾猘瓆瓡畤疐疷疻瘈眰砋礩示祁祇祑祬禃禔禵秇秓秖秪积秲秷稙稺穉筫紙紩絺綕緻縶織翐耆聀職胑胵膱臷臸芖茋茝菭薙藢蘵虒蚔螲蟙衹衼袟袠製襧覟觗觝觶訨誌謢識豑豒貭質贄跱踶蹛蹠蹢躑躓軄軹軽輊迟迣遟遲郦酈釞鉄銍銴鋕鑕铁铚锧阤阯陁隲隻馶馽駤騭騺驇鯯鳩鳷鴙鴲鶨鷙鸠鼅夂"},
{@"Zhong",@"中重种钟肿众终盅忠仲衷踵舯螽锺冢忪乑伀偅刣喠堹塚妐妕媑尰幒彸徸柊歱汷泈潼炂煄狆瘇眾祌種穜童筗籦終緟腫舂茽董蔠蚛蚣蝩螤蟲衆衳衶褈諥蹱迚鈆鈡銿鍾鐘鴤鼨夂"},
{@"Zhou",@"周洲皱粥州轴舟昼骤宙诌肘帚咒繇胄纣荮啁碡绉籀妯酎伷侏侜倜僽冑呪咮啄喌喙噣嚋婤府徟扭掫晝晭柚椆注洀淍炿烐珘甃疛皺盩睭矪祝箒籒籕粙紂紬縐翢胕舳菷葤薵詋詶調諏謅譸诪诹调賙赒軸輈輖辀逐週郮鈾銂铀霌駎駲騆騶驟驺鬻鯞鵃鸼"},
{@"Zhu",@"住主猪竹株煮筑贮铸嘱拄注祝驻属术珠瞩蛛朱柱诸诛逐助烛蛀潴洙伫瘃翥茱苎橥舳杼箸炷侏铢疰渚褚躅麈邾槠竺予佇劅劚劯咮嗻噣囑坾墸壴孎宁宔尌屬嵀庶搊敱斀斗斸曯朝枓柠柷楮樦櫡櫧櫫欘殶泏泞澍濐瀦灟炢煑燭爥眝矚砫硃磩祩秼窋竚笁笜筯築篫篴紵紸絑纻罜羜芧苧茁茿莇蓫蕏薥藷藸蚰蝫蠋蠩蠾袾註詝誅諸豬貯跓跙跦軴迬逗逫鉏鉒銖鋳鑄钃阻除陼霔飳馵駐駯騶驺鮢鯺鱁鴸鸀麆鼄著丶"},
{@"Zhua",@"抓爪挝摣撾檛簻膼髽"},
{@"Zhuai",@"拽转尵捙睉跩顡嘬"},
{@"Zhuan",@"转专砖赚传撰篆颛馔啭沌傳僎僝剸叀囀堟塼嫥孨専專恮抟摶湍漙灷瑑瑼甎磚竱篹篿簨籑縳耑腞膞蒃蟤襈諯譔賺転轉鄟顓饌鱄"},
{@"Zhuang",@"装撞庄壮桩状幢妆僮奘戆丬壯壵妝娤庒憧戅戇梉樁湷漴焋狀獞粧糚艟荘莊裝贑贛赣"},
{@"Zhui",@"追坠缀锥赘椎骓惴缒隹倕垂埀墜娷揣槌沝甀畷硾磓礈笍箠綴縋腏膇致萑諈贅轛醀醊錐錗錣鎚鑆隊隧餟騅鵻"},
{@"Zhun",@"准谆屯肫窀凖啍圫埻宒忳旽淳湻準甽盹稕純綧纯胗衠訰諄迍飩饨黱"},
{@"Zhuo",@"捉桌着啄拙灼浊卓琢缴茁酌擢焯濯诼浞涿倬镯禚斫丵剢劅勺叕啅啜噣圴坧墌妰娺彴捔掇撯擆斀斮斱斲斵晫梲棁棳棹椓槕櫡汋淖準濁灂炪烵犳狵琸矠硺穛穱窡窧箸篧籗籱繳罬聉肫蓔蕞藋蝃蠗蠿諁諑謶趠趵踔蹠躅鉵鋜鐯鐲鵫鷟杓著"},
{@"Zi",@"字自子紫籽资姿吱滓仔兹咨孜渍滋淄笫粢龇秭恣谘趑缁梓鲻锱孳耔觜髭赀茈訾嵫眦姊辎事倳剚吇呰呲啙嗞姉姕孖孶崰杍栥椔榟橴次沝泚洓湽漬澬牸玆璾甾疵眥矷禌秄秶稵穧紎緇胏胔胾芓茊茡茲菑葘蓻薋虸訿諮貲資赼趦跐載輜輺载鄑釨鈭鋅錙鍿鎡锌镃頾頿鯔鰦鶅鼒齊齍齐齜"},
{@"Zo",@"咗唨"},
{@"Zong",@"总纵宗棕综踪鬃偬粽枞腙倊倧傯堫嵏嵕嵸從惣惾愡捴揔搃摠昮朡椶樅潀潈潨熜熧燪猔猣疭瘲碂磫稯糉綜緃総緫緵縂縦縱總翪艐葼蓗蓯蝬豵踨蹤錝鍯鏓鑁騌騣骔鬉鬷鯮鯼"},
{@"Zou",@"走揍奏邹鲰鄹陬驺诹偢媰掫搊族棷棸楱箃緅芻菆諏赱郰鄒騶鯐鯫黀齱齺辶"},
{@"Zu",@"组族足阻租祖诅菹镞卒俎伜伹倅傶卆哫啐嘁岨崒崪徂怚柤沮淬爼珇砠稡箤紣組綷苴葅蒩詛謯趱趲踤踿蹴鉃鉏鉐錊鎐鎺鏃鑿靻顇駔驵"},
{@"Zuan",@"钻纂赚缵躜攥劗揝撮攒攢欑篹籫繤纉纘賺躦鑚鑽"},
{@"Zui",@"最嘴醉罪堆咀觜蕞厜嗺噿嫢嶉嶊嶵摧撮晬朘枠栬槯樶檇檌欈濢璻睟祽稡穝絊纗羧脧蟕辠酔酨酻鋷錊雋"},
{@"Zun",@"尊遵鳟撙樽僎僔噂墫奠嶟拵捘捽栫瀳繜罇袸譐跧踆蹲銌鐏鱒鶎鷷"},
{@"Zuo",@"做作坐左座昨凿琢撮佐笮酢唑祚胙怍阼柞乍侳咗岝岞挫捽柮椊砟秨稓筰糳繓苲莋葃葄蓙袏諎醋鈼鑿飵嘬阝"}


};

@implementation POAPinyin

+ (NSString *)pinyinWithLetterChn:(NSString *)chnString {
    NSString * pyString = @"";
    
    for (int j = 0; j < [chnString length]; j++) {
        NSRange rang;
        rang.location = j;
        rang.length = 1;
    
        NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
        NSData *data = [[chnString substringWithRange:rang] dataUsingEncoding:enc];
       
        NSRange zrang;
        zrang.location = 1;
        zrang.length = [[data description] length] -2;
        
        NSString *zi =  [[data description] substringWithRange:zrang];
       
        if([zi length] < 4) {
            pyString = [pyString stringByAppendingFormat:@" %@",[chnString substringWithRange:rang]];
        }
       
        const unsigned char *byte = [data bytes];
        int bh = byte[0] - 0xA0;
       
        if((0x10 <= bh) && (bh <= 0x57)) { //是gb2312汉字
            bool isFind = false;
            for (int j = 0; j < pyCount; j++) {
                NSRange  tRang = [pinyinTable[j].hanzi rangeOfString:[chnString substringWithRange:rang]];
              
                if (tRang.location != NSNotFound) {
                    pyString = [pyString stringByAppendingFormat:@" %@",pinyinTable[j].pinyin];
                    isFind = true;
                    break;
                }
            }
           
            if (!isFind) {
                pyString = [pyString stringByAppendingFormat:@" %@",[chnString substringWithRange:rang]];
            }
        } else {
            pyString = [pyString stringByAppendingFormat:@" %@",[chnString substringWithRange:rang]];
        }
    }
    
    return [pyString uppercaseString];
}

@end
