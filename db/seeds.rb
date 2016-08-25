# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '這個種子檔會自動建立一個admin帳號, 並且創建 10 個jobs,10个issues,10个posts'

create_account = User.create([email: 'example@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account created.'

create_jobs = for i in 1..10 do
                Job.create!([title: "Job no.#{i}", description: "這是用種子建立的第 #{i} 個工作", wage_upper_bound: rand(50..99) * 100, wage_lower_bound: rand(10..49) * 100,
                             contact_email: 'example@gmail.com', work_address: 'china'])
end
puts '10 jobs created.'

create_issue = Issue.create([title: 'Issue no.1']) do
  create_posts = Post.create([
                               title: '何谓growth hacker？（一）特征',
                               content: "最近一段时间，growth hacker在硅谷开始兴起。何谓growth hacker？其实际应用又在哪里？本系列文章将为您揭秘。
                             Growth hacker在技术界已经留下了自己的印记。网上到处都是招聘这一职位的广告。处在不同发展阶段的公司对于这些发展专家的需求跟对用户体验和计算机科学的人才一样求贤若渴。这股人才需求的趋势在硅谷愈演愈烈。
                             但是，很多公司对此只是为了追赶时髦和受不断商品化的驱使，却很少能意识到破解发展密码的真正意义，只是简单地认为这些人能够为公司“增长销量”和“获得用户”。跟大多数技术专才所不同的是，growth hacker并非一组技能或知识的组合。Clarity的创始人Dan Martell说：“破解发展更多的是一种理念体系而非工具组合。”这是经过历练总结出来的一套必然的行为准则。Growth hacker拥有共同的态度，相同的内部调查流程以及一致的心态，令其在技术人员和营销人员中独树一帜。对数据、创造性和好奇心的理念体系使得growth hacker能够将发展客户群的基数做到百万级。
                             痴迷数据
                             Growth hacker对跟踪和推进指标的热情近乎痴迷。要是没有指标或者数据，growth hacker会感到浑身不舒坦。对数据的强烈偏好促使growth hacker抛弃虚有其名的指标，转向可以做成生意和实现业务突破的指标。数据和指标是growth hacker发现发展道路至高无上的科学手段。growth hacker对指标的看法不像报告机制那么严格，也不把数据当做钻研的方式，而是通过理论化和测试过程把它们当成做出更好产品的灵感之源。这种科学的发展方法被Everlane的联合创始人

                             Jesse Farmer 称为是工程化分销。“最好的growth hacker对于发展和分销采取严格的经验主义的做法。” Jesse说。Growth hacker关注的是通过反复推进特定指标的办法来实现增长。这样的指标可以是注册转化率，可以是维里系数（viral coefficient）。数据可以启发新产品及可行动的市场细分。
                             有创造力
                             第一批growth hacker之一，Bebo的联合创始人Michael Birch说，“破解发展是科学与艺术的结合。”尽管有数据和发展指标的驱动，growth hacker一样也是富于创造力的问题解决者。Growth hacker充满活力、思维敏锐，总能想出获得和维系挽留客户的新方式。Growth hacker绝不会止步于数据，而是会拓展出新的未知领域来找到增长办法。Tagged 的联合创始人Greg Tseng说，growth hacker的数据和创造力是齐头并进的，“你的左右脑是不是都一样出色？如果你只有分析的头脑，那么就会明白自己的想法有多糟糕！”
                             创意和分析的结合是growth hacker的典型特征。“创意人才按照直觉设计出对用户最好的东西，分析人才则提供有深刻见地的洞察分析。真正的独角兽是那些能够完成从设计、开发、衡量到分析的全过程的事情，并能够根据结合了用户直觉与深度分析的结果不断迭代改进的人。”这是HomeRun 联合创始人Matt Humphrey的看法。Growth hacker做的事情跨越多个职能部门和学科，从UI/UX到指标决策，不一而足。创意和分析的结合使得growth hacker对产品拥有融合的、系统性的视角。
                             还很好奇
                             Growth hacker对访客何以变为用户并被吸引感到痴迷，着魔于产品为何会一败涂地。对于令人困扰的用户，growth hacker习惯去探究，找出推进和调整指标的新办法。

                             MediaSpike 创始人，社交游戏先驱者之一的

                             Jesse Farmer 说，“破解发展发出一条微妙的讯息，‘今天你为我干了什么？’身为growth hacker必须永不止步。Facebook已经有十多亿用户，但仍有一个增长团队。” Growth hacker总是保持好奇，对于学习永不知足。他们深入审视用户行为，在行为经济领域不断封疆拓土。Jesse Farmer说，“好的growth hacker对互联网有好奇心，对其运作方式有着深刻理解。好的growth hacker会去读《轻推》(Nudge)和《怪诞行为学》(Predictably Irrational)这两本书，发掘可能的破解发展之路。”这种好奇心能够令其突破表象，把握产品和用户体验之精髓。Growth hacker对于有没有实现增长并不是很关心，而是渴望去理解用户的心态和产品流，以便让这种办法不断重复。Hot or Not 的联合创始人、Perceptual Networks 的创始人Jim Young 说，Growth hacker不过是“可以看成是人的极客罢了。”
                             Growth hacker是一种稀有物种，需要把数据、创造力及好奇心这三种不太可能凑到一起的东西混搭到一起。由于这仍然是一个相当崭新的领域，有人也许会质疑说现在硅谷可能仅有几百号growth hacker。虽然现在数量少，但这个职业没有天花板，机会的大门向所有人敞开。“我希望大家在阅读时，会希望学习我们的方法并愿意成为一名growth hacker，达到一呼百应的效果。” Refer.ly 的床和创始人、

                             Twillio 的前growth hacker

                             Danielle Morrill说。
                             大多数growth hacker说自己是通过创办一个零营销预算的公司来学会相关的经验技能的。下一篇文章将探索破解发展的实践应用，看看营销是如何重塑自己的。",
                               issue_id: 1, author: 'admin', brief_introduction: '最近一段时间，growth hacker在硅谷开始兴起。何谓growth hacker？其实际应用又在哪里？本系列文章将为您揭秘。'
                             ])
  puts '供ios开发测试的第一篇文章'

  create_posts = Post.create([title: '看GrowthHack数据驱动用户增长',
                              content: "8月30日，由七牛公司主办的主题为“数据重构未来”的“七牛·数据时代峰会”在上海国际时尚中心继续举行。Growth Hacker，前Facebook工程师覃超以《从Facebook GrowthHack看数据驱动用户增长》为主题发表了演讲，以下为现场实录：
    覃超：大家好！非常感谢举办方邀请我来做这个讲座。感谢大家这么早在这里来听我们技术人讲的这些内容。我叫覃超，右下角是我的头像，可能大家更熟悉我的头像。有人说我是覃超，但是这个是一个多音字。

              我今天的主题是Growth Hacking，同时会把一些实在的经验来帮助你们公司进行业务的增长以及用户数据的增长。

              现在我是做一个手机顾问，一个技术合伙人，所以你们有项目，也可以来聘请我。我在Facebook工作，后半年，两年的时间，我有实战经验，也没写过任何东西，但是我在这里两年做产品，我对第一手的经验分享，其实之前的话，觉得这部分信息比较敏感，这一次是公开演讲，为大家来揭开FacebookGrowthHack的演讲。一路现在到将近现在15亿活跃用户的一个规模。今天的议程开始会是一个简单的自我介绍，对不熟悉的我的人。接下来解决简介，来自我之前很喜欢的一本书，指价值投资，用的这个名字，接下来就是具体的方式，也就是实战的经验。第四点我在Facebook发布一个功能，到底我一步一步是怎么做的，整个公司产品发布流程是怎么样，是非常实战的一个事情。第五点，对于创业公司来说要注意的东西。很多时候是有害处的地方，对于创业公司要小心，对你们有破坏性。

              M：现在比较简单，我在上海同济大学读书，所以对上海比较熟悉，接下来在北京学习，当年2007年谷歌还是一个时代，然后在金融读计算机，后来在Facebook待了四年，做了很多产品，还有一些没有公开的项目。Facebook都在下面，用了大量增长黑客的办法，实现这个产品的增长。

              我2010年进入Facebook用户是1.5亿，我离开2014年4年的时候增加了3倍，达到了14亿人。每天活跃用户从2.5亿达到了8亿，所有这些还不包括中国，移动用户从之前的20%到了现在的70%，最近上周五的时候，还发了自己个人消息，上周一的时候，一天登陆Facebook人已经达到了10亿人这是一个里程碑的事情。

              所以接下来我所讲的，FacebookGrowthHack是如何达到这样一个成绩。

              Growth大家都知道增长，Hack相当于整个序列里面。HaCK所强调是少说废话去写，写了之后即使很粗糙，迅速发布出来给用户，看到用户的反应是怎样的，后台有大量的数据进行统计，进行对比甚至进行发布，通过所有这些东西，来决定这个产品到底是上还是不上。另外后续是如何迭代的，所以快速搞定持续迭代很重要，也就是借用一句话，一开始不做大家大产品，试出用户的反映，然后上市。另外是技术驱动，数据为王。右边是先做出来更加重要。

              这是一个很大的Team，2007年开始成立，占了整个公司人数20%，老大就是叫Olivan是一个西班牙人，整个Growth老大不汇报给之类的人，由此可见，公司对于Growth的重视以及对于数据驱动的重视，下面有好几个大的，会看到他的演讲，IR8n指的是国际化，怎么本地化是一个很大的挑战，公司没有人懂所有人的语言，对中国可能稍微好一点，国内市场。

              实战的经验，你们公司如果要用Growth办法的话，应该怎么做，怎么可以用好方法实现公司的增长。第一步比较基础的一步，毫无疑问你先要收集数据，而且有效把数据展示出来，这一点我觉得大家都很明白。经常会有一些指标，活跃用户、月活用户，日活用户，同时用户平均待的日常，你们如果用第三方服务平台，基本都有，另外还有一个很重要，用户的留存，过了一个月、过了两个月你的用户还剩多少，用户留存是一个很重要的指标。第三就是对于每个公司可能都不一样，你们在创办公司建立这么一个数据表的时候，你自己要定义好对你们公司来说，重要的是什么。这里是Facebook自己觉得很重要，并不一定适合于所有公司，L67，指的是过去西7天登陆6天用户的数量，因为日活，没有考虑多少用户，而下面进行更加反映用户的忠诚度。日活大家能够理解，很多用户变来变去，而L67指的是用户的忠诚度。而后面表示用户的参与度，接下来还有一些，所有展示了的时长以及给公司带来的收入的变化，对于还有用户每天发的平均数目，以及耗电量。所以这些东西对于每个公司不一样，所以具体还要再看。

              我再进入Facebook第一天，培训的时候。里面有公司各种数据，当时我进去的时候，有一点震撼，第一对数据很重要，很多搞的很规整放在那里展示，过去一年、过去三个月，日本是怎样的印度是作为的，这是主要的主题。有一个平台你把它建起来，如果有任何错误，对公司修改灾难性打击，整个方向可能就错了，最后数据统计得不对。

              接下来第二步，建立这个之后，第一方面作为监控用，第二方面，要做事情，从这些繁琐的数据中，得到有用的信息，第一步要做的事，首先你分析之前要设定你物理是什么。我讲的比较理论话，过了之后就有具体的案例分析。接下来根据这个主的核心数据进行比对，从这些比对里面你要找出最重要的一点，也就是这一点，可以来决定这两组成员不同的行为，指的是你要提出一个假设根据数据得到的结论，拥有一个假设的理论。在产品上马上进行反映，来验证你的理论。这个新的功能点进行发布给用户之后，你在后台看用户各种数据来验证理论是否证据，整个过程大概是这样的，还是比较抽象。

              我们来看一个具体的例子，它指的是一个功能Facebook在网页上最右上角一直有这个功能，也有类似专门的液面给你推荐好友。现在用人人网、微博也好，这个功能一般都有，这个是Growth团队弄出来的。整个故事是这样的，当时还是2007年到2008年的时候，发现一个很有趣的问题，所有社交社区都有这么一个问题，豆瓣也好，一群用户非常活跃，我们定义为参照组，另外一批用户非常不活跃，基本不用我的产品，或者经常不登录时候，我们要对于不活跃的用户，做一件事情。这个时候，这其实是中国的工程师做的，在我们里面，把这两类登录词放在定义处来列出来，把他们抽出来之后，比对他们的各项数据，各项数据都进行比对，从中试图找出最重要的，里面有很多细节，不是公开。对比的话，他发现出最重要的一点，就是你的好友数，它推出一个假设好友数的多少，决定了这个用户的活跃度，这就是为什么，做出了这么一个部门，一开始这个部门只是尝试性放在那里，然后推到1%的用户进行测试，慢慢发现好友越来越多，接下来活跃度越来越高，于是这个功能就一直放。两个特点，第一个不是产品团队，这个功能好，然后提出假设，舆论再过来的，第二个事情的话，这个部推出来并不是推出所有人，再看最后数据，假设是正确的，最后得到通过。另外还有一个类似的，他们在坐的进行第二次比对的话，发现了第二个假设，如果个人信息齐全的话，活跃度就越高。我想我和后面的团队类似的事情，他们也做过相应的测试，最后发现，在上面活跃的话，基本上答了两到三个问题以后，得到了两位数在以后几个月，所以它会尽量邀请你回答问题，早期的回答问题，都是运营团队人进行做的。

              这就是现在的陌陌，昨天试了以下会有你资料的完善程度，91%，这个功能也是Growth对比各种数据得到的假设，最终通过打分，你的完成度不够提示用户。

              前面都做好了以后，接下来还要做的用户拉新，以及用户的留存。拉新对于创业公司来说已经是轻车熟路，O2O之后，各种渠道上面打广告，微博头条，或者是应用包，都可以进行推广，另外还有一个力推，补贴之类的东西。更加重要是留存，这个地方没有什么太多理论研究，留存的本质你必须是好产品，这个情况，事实就是帮不了，你可以用一些召回的机制补偿它，但是你的本质必须是好产品，你听了我的讲座之后，其他都忘记了，第一点比较重要你记住好产品是留存的标准，而用户地留存永远是王道在留存的时候你发现一些至关重要的点，好友数，以及你的完成程度，你就要找到那个，越过这道鸿沟，这是一本书，可以推荐给大家。

              这是两个产品，红色是A，B是另外一个，30指的是天数，过了30天数有多少用户还留存在这里，蓝色是产品，而我们的下一轮你有好留存的会更加喜欢，会越来越多。

              关于留存还有一个经常用的，召回机制之前说过，这里提醒一点，大家要谨慎使用。召回机制，一般来说发邮件或者你错过什么东西，你有比较好看的消息在这里面。这种模型Facebook之前也发明了，纵轴是用户来到我这个平台，成为我这个用户的稀缺数，这个漏斗的面积，表示发这个消息的多少，他刚来到这个平台还不熟悉，我们要多互动，这个时候我们发东西多一点，随着停留的时间越来越长，比如说它已经活跃了7周8周之后就到最下面，我们就认为相对稳定或者非常稳定，我们就不再发任何消息骚扰他。如果他某一段时间回到这上面，我们重新放在相应的层级，给他这么多的数量。

              另外一个，这里很多公司都在用，比如说中国做的更好是在朋友圈里面发红包。这个不罗嗦了，这是推荐一本书，这是关于市场和销售在互联网环境下应该怎样做，也很适合，跟它的思想很相似，所以这里推荐给大家。

              第四点也是最重要的一点，很多GrowthHack经常被人忽略一点，就是灰度发布，这里用实际的案例，微信做的好，我自己做了一个功能放在微信上，然后我是怎样一步一步按照Facebook发布起来。第一个我们做了什么东西去申请，最后来看，Facebook是一个产品驱动，可以亲自盯每个重要的部门。另外一个这有一个我会预测我发布这个语音消息之后对用户数据的影响，比如说多了还是少了，用户每天发的数字是多了还是少了，你开始要预测，你发布这一个功能不会对用户数据产生灾难的影响，当然最好是要促进。

              第三个就是写，写这个代码之后发布出去，发布出去给所有人，已经在所有人手机里面，我们有一个开关，每隔一个小时，去拿到所有的信息。开始的时候全部都是关的，也就是说，他们的里面已经有我们语音消息代码，当然如果你们用微信的话，你们发现很多时候也是这样，一个部门过了几天之后才慢慢出来。接下来慢慢开放，开放1%、2%、5%，开放1%的用户，后来开放给5%的用户，后来开放20%的用户，1%、5%相当于实验数，另外在没有开放这个功能所有用户里面再挑相应的比例，1%或者5%，作为我们的参照组，对比两组数据，用户活跃度到底是增加还是下降，这个的影响，比如说对于它来说它每天发消息的数目，以及打开延时之类，有时候我们还会看这个对耗电量的影响。

              所有东西都不错的话，最后这个也会开放给用户。在下版甚至下下版才在我们的里面把上一版的代码清除掉。所以在2、3个月，我们会有多个版本的代码共生，用户只看到一套，但是代码都在里面，后来慢慢清洗掉。

              再举一个更加明显的例子，这是我们Facebook主页平时用的不多，现在主页就是这个样子，这个主页和2010年一样，5年我们没有任何变化，但是我们内部做了各种各样的尝试，但是全部失败了。举一个例子，这个版本可能有些人看过，可能有些人没有看过，2013年的版本，这个版本当时特别牛的，是好基友，之前他们是寝室的大学，也是很厉害，每天4、5点到公司，做了这么一个页面，这是老页面，以及现在用的，这是新页面，他们所说的事情，想到为什么要重新设计，很明显，他可以做几个观点，第一信息没有那么复杂，这个你看不清楚，这个东西的话，很明显很大的照片，所有的信息被精简化，同时人物的头像被加大，照片更加突出，因为人们现在越来越繁忙，QQ讲座30分钟都是煎熬的情况下更好给大家看图片这种形式，另外各种信息得到了微整，左边就是进行了简化，它的观点是这样。

              另外还有一个更加说服的地方，它的左边和Facebook进行了统一，如果你们用过Facebook左边很类似。所以相当于统一起来，用户对这个导航栏更加熟悉，不管用网页或者是移动端，也有统一的体验。

              后来的故事，我这里不写出来，可能比较敏感。后来的故事就是说，这个版本其实是开放给它，用了几月都还不错，各种数据没有问题，后来再把这个发给3%、5%的用户，后来我们发现有漏洞在我们这里面，数据完全是错的，在用户那边是对的，发给5%的用户，发现我们的显示时间往下掉，导致公司的收入，那个月的收入开始下滑。慢慢的话，就把这个比例升到12%用户的时候，公司一个月收入降到10%到20%，这个时候就把这个叫停了，整个页面，重新改到这个版本，老的版本，比较反复的版本，但是我们的确这样做的。直到现在，对这个版本进行了小改。

              回顾这个地方，主要是两个特点，第一个我们之前花了将近一年的时间，很长的一个团队带做这么一个事情，最后数据证明，你的结果是不好的。比如说更加的简洁风，图片没用，现在不是讲道理的时代，就是看数据说话。第二个承认自己的错误，有错误的话，返回，一切看数据说话，而不是减轻影响。

              但是，我大家别忘了中国还有一个公司，人人网，人人网跟Facebook是很像，看得很快。即使是发了12%的用户很多人也看到，他们就开始做了，做出这样一个版本和这个比，左边一条差不多，这种类似，中边是一条，左边各种信息，右边广告，现在进人人网也是，现在人人网的活跃度大家都知道的。这就回到两句话，我们最后在博客里面讲的两句话，我给大家读，你做创业公司即使像Facebook还是类似于在深海，在远洋进行创新，我们不知道什么地方有礁。“什么东西结果是好的，我们就去做，我们是数据的奴隶，或者我们要敬畏数据”。

              这是一个简单的总结，事实说话，防止独裁造成的产品或者功能灾难，第三通过1%、2%、5%的发布，减少压力。第四Facebook走得比较快，过了一个月之后，这个地方有一个很大的漏洞，我发给私人的东西很多人有权限看的话，通过服务器，我们的控制就是最后一道防线。

              最后对于创业公司，很多的时候，是一种阶段，看你在什么阶段。要明确一点，开始的时候其实是让你的产品迭代，变慢，但是会走更稳走得更加脚踏实地。对于后面几个方法，更加适合于稳定的用户，比如像这些用户，用户量还比较大。进行竞争的时候，这个时候要注意，开发一个并不是老大，你要进行数据的验证。第二点，老大要改变自己的观念。同时下面技术人可以给他看这些数据的话，来更好劝说。第三点，对创业公司来说，并没有这么多的工程师去做，这些的话，都要有解决方案，用己有的商业服务。这一块是之前讲的决定Facebook生死，Facebook和人人网开始进行竞争的时候，可以去做这一件事情，也是一个信息创造的动作，由谷歌之前所创办的公司，整个技术、整个解决方案我觉得和Facebook雷同的系统，相似的。它形成了一些简单的参照，比如说这是对于布局的参照，这个布局应该做成什么样子。给出结果的一个比对，这是群体之间的比对，没有一个确切的比对，结果会给一个大致的范围。Facebook几乎相似，它从最下面往上看，给你说一个趋势还有一个区间。

              总结来看的话，所有这些东西，要建立数据的收集、采集，你的新用户拉新以及留存，留存是王道。第三个数据驱动，以数据为王，数据为参照来决定产品的方向，最后想说的就是敬畏数据，从而能够驾驭数据，谢谢大家",
                              issue_id: 1, author: 'admin', brief_introduction: '8月30日，由七牛公司主办的主题为“数据重构未来”的“七牛·数据时代峰会”在上海国际时尚中心继续举行。Growth Hacker，前Facebook工程师覃超以《从Facebook GrowthHack看数据驱动用户增长》为主题发表了演讲'])
  puts '供ios开发测试的第二篇文章'

  create_posts = Post.create([title: '整个硅谷都在谈的 Growth 是什么?',
                              content: "第一个问题是，什么是 Growth 。我对 Growth 的一个比较简短准确的定义是，Growth 就是“实现业务的有效增长”。这里面有几个关键词：实现、业务、有效，最后是增长。Growth Hack，我把它翻译成，不是“增长黑客”，而是“增长法”。“法”这个字在汉语里包含“工具”和“思路”的成分。Growth 是一个相对新的想法，硅谷一直在谈、在实践、从下往上在摸索。一直到近两年，才有人把 Growth 的概念提炼出来，将它作为一个方法论。

  那么，为什么现在在中国火起来了？因为现在中国的公司感受到压力。Growth 可以带来效率的提高，不管是工程效率，还是使用钱的效率、获取用户的效率。这种效率的提高，对公司非常重要。在市场增长天然特别好的情况下，把资源使用在实现产品特性上面，会获得更大的价值；而在市场走冷，竞争变强，每个人都不得不计算获客成本的时候，Growth 就重要起来了。


  Growth 在中国以及整个硅谷，有什么样的难点？这是由 Growth 本身的性质所决定的。在一个小公司，Growth 其实就是适应市场，就是说公司给用户提供什么样的价值，最终决定了用户会有多少人、以什么样的频率停留在平台上面。

  在 Medium 上面有一篇比较有名的文章，叫“ Why startups shouldn't have a growth team? ”（为什么一个小公司不应该有 Growth组）。虽然有标题党之嫌，但有可取之处。因为全公司都是 Growth 组，应该由 CEO 带头做 Growth。在公司的发展前期，Growth 用来贴近产品的本质，寻找它的市场立足点。

  在发展后期，当市场需求很稳定了，公司做什么、怎么挣钱很稳定了，Growth 可以去更靠前的位置，向用户传播价值，让用户的行为“快速收敛”到你想提供的价值，这时候，Growth就变成向用户展示公司价值的一种方式。


  公司怎么把有限的资源，不管是钱，还是工程师、产品经理等，放在一个无限的机会空间上，都是 Growth 擅长做的。Growth 从中找出用最小的代价获取最大利益的点。但是这件事情不好做。


  Growth 代表了工程师跨界的思路。硅谷绝大部分的 Growth 是由工程师来驱动的，他们不是普通的工程师，而是需要很好的产品和运营知识，需要懂设计，需要懂data，很少有人能够胜任。

  在国内，我认为还有一些额外的挑战。大家对Growth有一些误解：


  把买流量看作 Growth 本身；

  重视非技术运营；

  产品迭代特别快，快到数据埋点、整个数据收集都来不及做；

  国内创业有自顶而下做决策的习惯，老板说了算；

  还有工具不到位的挑战。


  硅谷已经到了创业环境比较成熟的阶段了，很多工具已经用了很多年。但是在国内想找一个特别值得信赖的工具很难，同时还要考虑这个工具的背景、是不是属于某一个竞争对手。这些都是数据缺失、工具不到位造成的困难。



  现在我把所谓的“增长法”拆解，用一种简单直白、尽可能诙谐的方式讲出来。



  首先是 Growth 关心的核心话题。我们把 Growth分成4个部分：用户获取、用户转化、用户变现和用户留存。AARRR 这个模式，和以前看到的一些技术分享，稍微有些不一样的，但本质上是差不多的。AARRR 会给人一种误解，就是整个 Growth 是一个漏斗，它是逐渐变细的。盈利一定是通过忠诚用户产生的？不一定。推荐一定是通过付费的用户产生的？也不一定。新用户能不能做？可以。



  我们来看一个现实版的 Growth。现实中 Growth 就关注这几个核心话题，但是这几个话题实际上是纠缠在一起的，而且非常零碎。如果有真正可以将它看成比较严格漏斗模型的地方，只有用户转化：以“潜在用户知道你的品牌”作为起点，把“把潜在用户变为一个你的忠诚用户”作为终点。每一步都严格依赖上一步的成功。

  Growth最基本的单位是什么？

  首先观察产品或者用户行为的模式。比如，这个模式可能是说，用户在某一个页面丢失得非常快。根据观察到的模式，去设计一个方案，这个方案会假设一个解决方法，同时设计一个指标，也就是“到底哪一个数据可以清楚告诉我这个解决方法是好还是坏，有多好”。

  方案设计完了之后，要做工程实现。如果这个实验是成功的，要投入应用和监测，因为短期的实验结果并不代表长期带来的收益。最后，如果有比较强大的数据分析人员或者产品人员，会进一步挖掘这个实验所带来的启示。



  上图所示是一个比喻。就像开发药物，要先研究这个病，开发这个药，做临床实验，最后，这个药应用之后还要做监测，最后回到理论。在美国做药是非常非常复杂的，药使用在人的身上，而人是国家的根本。医药的整个体系都是以人为本。对于 Growth 也是这样。用户体验是很敏感的内容，要非常小心，否则一旦你的用户走了，再把他叫回来，是非常难的一件事情。



  图中这个流程里面，需要一些工具支持。比如需要有深挖数据的工具，具体做实验的时候，A/B Test 是很重要的工具。

  从操作者的角度来讲还有几个步骤很重要。首先，操作的人需要理解他的产品，所有从事 Growth 的人，需要统计素养，需要理解用户，同时要理解工程实现的难度。



  Growth 组的操作，其实会把它组织成一个实验的管道，用某种方式来跟踪有哪些实验想法，有哪些已经开始了，哪些已经完成了，对完成的实验要计算影响，成功实验的影响相累计，大致上可以估量一个 Growth 组的成功与否。这是非常粗略的表述。任何一个 Growth 背后都有实验，每个实验都非常小，每个季度可能可以做上百个实验。虽然一个实验带来的收益非常小，但是整体加起来很大。

  Growth 里面经常会讨论这样一件事：我有很多很多的主意，哪一个先做，哪一个后做？这个时候就会在心里画这张图，去思考每一个实验，机会有多大，工程成本有多大。如果工程师比较熟悉工程，那么对工程成本应该有一个非常清楚的估计，对数据比较熟悉的，也会对机会大小有一些估计，这其实都是在算性价比。



  这个图还有一个额外的维度。图中的圆有大有小，表示在一个点上的同一思路会有一系列的想法，可以产生一系列的实验。我们验证了其中一个实验，很可能会提示，在同一个坑里挖到更多的金子。

  下面是 Growth 实践中的一些心得，比较零碎不成体系。


  首先，Growth 最重要的部分是用户留存。没有人是傻子，可能某一个阶段他会受到欺骗，但是他最终留在你的平台上，完全取决于你的平台能带来多大的价值。




  在组织架构上，一个最小的 Growth单位，至少要有工程、产品、数据、设计，还有运营。不一定每个部分都有一个人，但是每个部分都有人能覆盖到。之所以要由工程师来驱动，是因为工程师是组里最了解产品的人。他了解你有没有触发产品的特性，写代码的时候明确知道性能的弱点，知道埋点在哪里最好，甚至产品是否有修改，工程成本有多大，工程师必须有第一手的信息，任何实际改动都要由工程师落实。由工程师来驱动其实是最少沟通成本的方式。


  从公司的角度来讲，做 Growth 需要有一个自顶而下的战略：公司需要从结构上去保护这个思路。如果你要求技术工程师追求技术难度，用这个事情衡量的他的工作，他不会把对公司业务的影响放在最核心的部分，他被迫想的事情与 Growth 的思路是相悖的。


  最后，快速迭代并非必不可少，但是有了它可以做得非常顺。在最后的数据出来之前，谁也不知道好坏。比如，想做能够支持匿名用户的实验，想知道用户不用注册是否会留存更多人。那么，立刻去做全 App 的匿名支持、完全不需要登录的产品，还是去做非常小的实验，比如推迟一到两步要求登录，来验证不需要登录这件事对用户有多大的影响。

  Growth 方法论

  Growth是一个方法论，理论很美，但是不一定适合所有的公司。你至少需要同意，或者从内心深处认同几个理念。




  第一个理念是，你是否认为，产品的成功是由用户是否喜欢来决定的。比如，你做政府项目，或者做市场稀缺功能，用户可能不得不去用，所以 Growth 在你的用户行为里面的影响其实只占了很小很小的部分，这个时候你没有必要去考虑 Growth。


  第二，你是否认同，所有事情最后都是可以衡量的。比如，产品受喜欢度，是否可以量化，获客策略是否可以量化。


  最后，Growth是否只是产品中锦上添花的部分？因为做这件事消耗很大，硅谷的Growth经常挂在总监下面，Growth这个大坑挖出来，需要人，需要资源，需要协调关系，可能开始的时候都很顺利，但是你很快就需要考虑“到底值不值得做”这个问题。从硅谷现在来看，绝大部分的公司都把这个坑挖出来了，这是有一定的道理的。

  从抽象层面上看，Growth 的方法论就是，怎么看待 Growth，怎么做 Growth。现在小结 Growth 的方法论我觉得功力不够，我更愿意引用这方面的一个大师讲的一段话，这个大师的名字叫庄子。



  “彼节者有间，而刀刃者无厚，以无厚入有间，恢恢乎其于游刃必有余地矣”。这句话是说，产品里边有一些“解决起来很简单，但是影响非常大的”问题，就像“关节里的缝隙”；刀刃者无厚，Growth 就一把锋利的刀，要“以无厚入有间”，就是用最有力的资源去做这些成本低影响大的“关节”之处，这样才能，“十九年而刀刃若新发于硎”。

  当你看到一个服务的交汇点，或者是用户体验或者性能非常敏感的点，你要慎重，这就是所谓的“族”，“血脉筋肉交错的点”。你要重视，要有畏惧之心，“见其难为，怵然为戒”。那这时候应该怎么做呢？庄子告诉我们“视为止，行为迟，动刀甚微”，就是说你要先看，过一会再做，每一刀都特别小。

  在 Growth 方法论里面这个非常典型，要先去观察，然后用数据指导该怎么做，想清楚之后再动手，每一个实验都非常精准，非常小，但是这些实验累积起来总是能把事情解决的。这时候庄子生动描绘了解决了一个大问题之后的模样，“提刀而立，为之四顾，为之踌躇满致”，赶紧写一篇报告，发给全公司看，非常开心。最后，“善刀而藏之”，也就是要清理实验代码。

  Mobile Growth的机会和挑战

  在 Mobile 里面，Growth 的概念一样可以使用。只不过平台不同，会有一些特别的挑战和机会。在Mobile上面很难做跨链接，很难做属性，很难快速迭代，因为有发布周期的要求，也很难去做一些 A/B test，而且还有下载的障碍。这是 Mobile 独有的挑战。

  同时，Mobile 里面有一些独特的机会：

  手机是一个个人的设备，手机打开一个 Square，基本上可以知道你这个人是谁。可以长期跟踪一个用户在这个平台的很多操作。 从产品设计的角度来讲，也不需要登录，这点也是不错的。

  第二，设备即入口，打开手机， App 已经在那里了。不再受到搜索引擎的钳制，只需要通过用户习惯就好。

  第三，设备即通道，App 在手机上，就打开了服务用户的沟通通道。这个通道是驻留的，你可以通过它找到你的用户，而这在Web 上是不存在的。

  User Onboarding顶层思路



  User Onboarding 非常重要。用户获取到了，准备下载这个 App，这时候就是User Onboarding 的起点了。如果你熟悉这个图，说明你已经有一定的 Growth 的基础，这是最典型的 Funnel Analysis（漏斗分析），把用户的量作为指标，然后按照这个流程来进行分解。

  可以看到，每个大红柱，相当于一次用户丢失。假如有100%的用户在起点位置，可能只有一半用户会下载App，经过登录页面，有少量用户丢失。注册这一步需要用户提供身份信息。搜集完信息之后，让他体验产品最核心的功能。然后第二次使用、第三次使用，一直到付费阶段。

  在这个流程里面，用户数量是递减的。一个最基本的 Growth 方法就是，去看你的用户在每一步产生了多大的递减，做一些相应的优化 ，把一部分用户挽回回来。

  用户到底有多大的意愿去下载App？可以在下载页面去做一些 ASO，比如，测试用什么样的图、什么样的标题更吸引人。可以去做一些很精准的评估，一个比另外一个到底好多少，好在哪儿？ App 本身的大小也会影响下载意愿。

  再比如，支持匿名来减少用户在注册时候的流失。也许因为需要输入 email，用户就不愿意继续了。可以考虑取消、推迟注册，或者接入第三方，比如微博、微信，通过这种方式来减低登录的难度。

  搜集信息的过程中，把需要手动输入的变成选择，把能猜的猜出来。通过了Aha Moment，也许下次他会想不起来这个App 而丢失了用户，这个时候就要推送一些信息。在真正付款的时候，因为付款流程做得不好，或者用户觉得这笔钱太多了，他也会放弃，所以要提供更灵活的付款方式。

  这就是在Onboarding 里面如何做漏斗分析的最典型的方法，可以找到一些优化的办法。

  漏斗分析是非常基础、非常有用的工具。但是它有它的问题。


  第一，建立了一种和用户对立的心态：不管你的产品做得再好，用户总是会离开。就像登录页面做得再好，用户数量还是会降，Aha Moment做得再好，用户数量还是会降。跟用户不一样，产品设计者在看漏斗分析的时候，是基于统计的角度，而用户并不是用统计的方式留存的。

  第二，当大问题解决得差不多，就开始专注解决这些小流失，这些小流失可能很大程度上是因为性能的问题，Growth 就慢慢变成了性能优化。

  第三，用户不愿意付款，不一定是因为付款页面做得不好，很可能是因为他觉得不值这个价，而这个问题，你没法通过漏斗分析来解决。



  我建议的一个方式是，你要从用户的视角去看流程。这里面横轴依然是流程，纵轴变成用户用这个App有多少的意愿，这个意愿大致用了一个数字来描述。

  首先，假设意愿都是100，这个时候，用户需要耗费他的意愿去下载。用户来到了登录页面 ，如果登录页面提供了好的信息和材料，用户会对未来有更多的期待，或者想对产品了解更多，他的意愿可能会上升。

  用户在注册和激活的过程中依然是降的，但是如果你的Aha Moment做得好，再次调起他的兴趣，可以重新激起他对后面的付费行为有更多的意愿。如果产品体验做得好，每一次的使用行为都可以积累意愿，最终支撑一次变现。一个好的产品，在这条思路下，会一直思考用户到底怎么想。

  从这条思路可以推导出另外一套优化方法：是不是可以做一些正向的改进。


  首先在登录页面上可以做一些优化。比如，讲清楚App到底对你有什么价值，把推荐人的头像信息放进来，提供上下文，让推荐的社会信用变成App本身的吸引力。如果做2B的产品，需要搜集身份证号、电话号码，或者企业信息，用户可能在这个过程中没有准备好，那么可以在登录页面告诉他，“需要准备这些信息再开始注册”，避免用户在流程的一半卡住而流失。


  在整个激活的过程中可以给一些引导和解释。比如，为什么需要电话号码，并不是要把个人信息卖给下家，而是要在你的业务出问题的时候快速找到你。需要强调和解释“对用户的价值”，这个“价值”很多时候，你在设计产品的时候其实已经考虑到了，所以在设计流程的时候就也要考虑怎么呈现出来。

  比如，在做Aha Moment的时候，需要强调让用户感觉到自己得到了价值；做一些比较有趣的动画，甚至实质性的奖励，能够提升用户的兴趣。Aha Moment是一个重要节点，这里可以提高很多用户的兴趣。

  完成了第一个最关键的功能之后，要对其他新功能做引导，在合适的时机把功能推送给用户，以至于用户还有兴趣继续使用。谨慎地请求访问，避免让用户感觉不舒服。在收费之前，对收费的功能到底干什么，通过收费能够得到什么价值，还有别的用户在收费之后得到了怎样的利益，对他的企业有什么帮助，可以逐步预先展示给用户。这些都是在为收费做准备。



  User Onboarding 有两个关键点：一点就是传输价值，要让用户看到价值在哪儿；另一点是除去痛点，需要去除用户在流程中遇到的痛点。如果能正确做到这两点，是非常好的Onboarding体验。还有第三点，在 Onboarding 的时候，要建立一条通道，比如让用户允许推送通知，以便于之后引导他去使用更多新功能。

  Mobile Growth 关键技术

  下面讲 Mobile Growth 的几个关键技术。从上往下看,  Growth 是一个非常复杂的流程，用到的技术也非常驳杂。这里将其中一些最重点、最关键的部分提出来讲一下。



  这里有一份来自Mobile Growth Tech Stack的总结，作者大概每年都会总结一下，今年有哪些技术趋势，罗列得非常细致，也许只有特别大的公司才会使用其中的很多部分，但的确是一个很好的总结。

  A/B testing系统搭建



  第一个是 A/B test 。以前修电脑有一个概念，电脑坏了，到底哪儿坏了，把内存拔出来，换一个内存，如果系统修好了，那么就是内存坏了。在分析产品流程的时候可以采取同样的思路。

  设计一个叫做分组器的机制，分组器告诉产品：让这个用户去实施行为A，让那个用户去实施行为B。通过数据分析看出来，实施A的用户下游行为好还是B的好，能够好多少。这个就是最基本的 A/B test。



  分组器和产品之间，交流“A还是B”，这个就是 A/B test 系统中最基本的部分。再增添一些“细节”，就是可以规模使用的 A/B Testing 系统了。图中这些绿色的组件就是所说的“细节”。分组器告诉产品怎么分组，分组结果和下游行为通过“埋点”进入Log，Log 需要进行处理。Log处理之后，一方面用于指导下一次的实验流量分配，一方面是用于计算指标。

  这个指标可能会向实验的设计者、产品经理或者工程人员，形成一个图表，展示在面板上。数据人员可能需要一些额外的深度分析指标的工具。实验配置工具是配置实验的入口，这个系统既决定了分组器怎么分组，也决定了最终需要计算哪些指标，还跟流量分配有一些关系。QA 测产品的时候，可能需要精确控制在一次测试中的实验行为是A还是B。

  这是一个比较复杂的多方系统，想要一次全部写对比较困难。幸好大部分时候不需要考虑太多的技术细节，很多第三方的工具会帮你完成整个流程。

  对于A/B test 系统，更多的不是技术上到底怎么去写，而是怎么选择和使用。如果要设计一个系统，或者评价一个A/B test系统，首先需要考虑两个内容，第一是核心，第二是优化。



  核心的部分是“一个A/B test 的 MVP 到底需要哪些条件”，优化是说扩展方向。避免伤害用户体验，这是最基本的要求。在决定选择A还是B之前，发出一个请求，这个请求最迟要5秒才返回，整个界面都停止，这当然伤害了体验。

  比如，后端不小心改了实现，发回来一个不规整的响应，这时候客户端报错说，“非法的实验分组数据”，这当然也是对用户体验的伤害。一个系统出了故障，能不能回滚到正确的产品行为，优雅处理，让用户不知道，这个是最基本的要求。


  其次，统计有效。到底怎么设计实验或者怎么评价实验的结果，有一些统计上的具体要求。比如，是不是做到了真正的控制变量，实验的设计是不是对A组或者B组有天然的偏见，对统计结果是否存在主观误读，实验之间有没有交叉影响，实验有没有新鲜感效应或者上手期，等等。做实验涉及很多统计知识，才能正确地设计和分析，A/B test 系统要基于正确的统计假设来计算、判断和展示结果。



  这个系统的“优化”里面还有非常多的细节，比如，性能方面的考量，扩展性方面的考量等。

  Deep-link的趋势和使用



  Deep-link在国内很火。比如有这样一个场景，在百度上搜了一个新闻关键词，条目是某新闻 App 提供的，点击这个条目，结果打开了某个新闻 App，并且把这个具体的新闻页推送给我，这就是 Deep-link。换句话说，可以从 App 外面直接跳转进去，发现App里面某个深度内容页面，这就是Deep-link。



  在一些复杂的情况下，有一个叫做 Deferred Deep-link的变体，可以在 App 没有预装的情况下实现类似的效果。这在技术上做起来没那么简单，但是依然可以实现。从图中可以看到效果还不错，减少了一些步骤，每个步骤原本都有用户流失。



  Deep-link的实现细节，这里不仔细讲了，很多第三方的工具可以帮你实现。原理上比较简单，通过一个短链接，把参数存在第三方服务器里面，使用这个链接的时候，会询问第三方，通过指纹匹配取回参数。原理不是特别复杂，但是实现起来比较难。



  另外，我最想讲的是：Deep-link 对产品设计和 Growth 会带来什么影响？


  首先，它解决了跨链接和属性的困境。特别是在iOS上，你进入 App Store，本来所有的参数全丢了，但是 Deferred deep-link 可以帮你再找回来。


  第二，它改变了 App 只能从 App Store 中得到的现状。使用Deep-link 之后，传统的搜索引擎或者内容门户网站也可以变成 App 的入口了，这很有利于以内容为主的 App 来进行病毒式传播。


  最后，是入口多样化和业务的切片化。App 的入口不再仅限于下载、点击App 图标、注册、使用。从某个具体内容或者某个子功能进来的用户期待短平快的流程，快速进入感兴趣的内容。是否要对这些新的入口做单独的优化，这会是新的问题和机会。

  这种改变同时代表了“业务流程切片化”的趋势。这种趋势告诉我们，把一个大而全的 App 直接推到用户面前可能不是一个好的选择。Facebook 的主App有 100+MB，基本上包含了所有功能，但是可能今后的 App 会设法避免这种情况，因为下载这样的一个 App 对用户来说是一个负担。

  一个 App 有几个不同的业务入口，每个业务对应有一个相对独立的模块，甚至子 App，或者像谷歌的即时App 倡导的那样，只装载一个小的 App 功能切片，在这个切片里实现简单的功能，再推销整个全功能的App。这样的做法可能会成为趋势。

  这种趋势不仅是一个外部的切片化，也是内部的切片化。即使不考虑外部怎么接入，你在 App 的内部也可以做切片化。手机 App 的一个很大的特点是屏幕小，分区多。设计产品的初期总是希望流程是清楚、专注、不被干扰的。但是到了后期，功能多了之后，又希望流程之间的跳转更灵活一些。

  一个折中的方案可能是，把每个业务流程起点设置成一个Deep-link目标，这样跳转操作可以用一个 URL 精简地表达，既可以方便跳转，也不用泄露太多实现细节。这种内部的可跳转性，有助于灵活地做Growth。

  Growth中的内容动态化



  动态化是一个很大的话题，但是这里我们只讲一件事，就是 Growth 的眼中怎么看动态化。

  Growth 眼里的动态化，并不是一个大而全的系统，比如 React Native。Growth 考虑的最多的问题就是，用最小的代价来实现一件事情。我们看一个功能开关，on/off，是动态化；动态内容填入静态模板，是动态化；可动态调整组件来构建的页面，是动态化；一个业务模块的流程可以从服务器端获取，也是一种动态化。

  在考虑动态化的时候，会有一个权衡，具体的用例到底要用什么办法来实现。如果只需要改一个标题就可以实现，何必要上 React Native。


  高度的动态化牺牲了可测试程度，也提高了使用时需要的后期资源。功能开关是不需要后期资源的。内容模板至少需要一个写作者的参与。具体的可拼装页面就需要设计者来设计。如果讨论动态流程，可能 UX 和 PM 都要跳进来问：这个流程是不是科学，是不是符合我们产品的理念。React Native 搭建的动态结构，在使用的时候，可能需要整个开发团队都参与进来。既然Growth 讲成本效率，动态化也要讲效率，即用最小的代价去做你想做的事情。

  总结

  Growth是真实存在的，在硅谷被广泛使用，并且现在已经来到中国。有很多客观原因导致在中国没有使用起来。但是现在条件已经逐渐成熟了，比如竞争激烈导致的对各种效率的要求。

  最终你一定要用 Growth，唯一的忠告是，不要急于做出一个大而全的系统，可以选择第三方工具，可以选择定制的逐渐演进的系统。因为，用最小的代价完成最大的事，才是Growth的核心所在。",
                              issue_id: 1, author: 'admin', brief_introduction: '第一个问题是，什么是 Growth 。我对 Growth 的一个比较简短准确的定义是，Growth 就是“实现业务的有效增长”。这里面有几个关键词：实现、业务、有效，最后是增长。'])
  puts '供ios开发测试的第三篇文章'

  create_posts = Post.create([title: 'Facebook是怎么开发活跃10亿人的经典功能',
                              content: "当然微博和人人网也有：“你可能感兴趣的人”。
  “People you may know” 这个功能的诞生其实大有来头
  早在2007-2008，facebook growth team刚刚建立的时候，他们想弄清一个问题：“为什么在平台上一部分用户特别活跃而一部分用户特别不活跃？” 很多人会直接说：“这些人天生的呗。就有一些人喜欢用Facebook，一些人不喜欢！” 其实如果是单个用户的话，上述的观点倒是可以站住脚。但是如果你的用户群在上千万和上亿的规模，则自然人的性格差异可以被大大淡化。
  于是，Facebook data的人（还是由中国的一个工程师主导）做了下面的分析：
  1. 他们把 highly active 和 inactive 的人找出来，分成两组（highly active VS inactive），每个组大概几千万用户。
  2. 列出一些可能影响结果的特征值（比如：在线时长、发的文字状态数、发照片数、etc）
  3. 在这两个组中把这些特征值一一进行对比，从中找出差异最大且最可能有影响力的指标。
  经过一个团队大概两个多月的分析，他们得出最终也是之后对FB growth产生最大影响的结论 --- Facebook上影响用户活跃度最重要的因素是：
  a. The number of friends：用户的好友数；b. The profile info completeness：用户的个人信息的完备程度。
  于是，growth组决定lead一个新功能，其目标就是给每个Facebook用户来自动推荐好友，让其好友数增加。于是，就有了 “People you may know”。
  Growth组很快就开发了功能原型，算法用的最朴素的算法 --- 根据 mutual friends 来推荐可能的好友。
  功能开发好之后做了 灰度发布，开始挑了 5% 的用户做测试，观察他们的表现。试验发现：”小白鼠“用户们平均好友数不断增加，然后活跃度也渐渐提高，其中一部分也开始变成高活跃用户。
  很多年过去了，直到今天，“People you may know”也一直是Facebook growth强劲有力的助推器，持续不断地将用户的平均活跃度提到新高，特别是对于新加入平台的用户，帮助作用更加显著。
  另一方面，profile info的完整性上，Facebook也针对profile信息不完整的用户来给予提醒，并且给出完整度的打分。这些技巧也被其他公司效仿，用到了今天大部分的产品上，比如微博，人人网，甚至是新生的社交网络脉脉：",
                              issue_id: 1, author: 'admin', brief_introduction: "当然微博和人人网也有：“你可能感兴趣的人”。
  “People you may know” 这个功能的诞生其实大有来头"])
  puts '供ios开发测试的第四篇文章'

  create_posts = Post.create([title: 'AirBnb的Growthhacker暗黑成长史',
                              content: "编者注：本文来自XDash，前盛大创新院产品经理，科技博客同步控作者，PingWest客座作者。该文章系作者正在编写中的新书的章节段落试读。如果您在读后对该主题感兴趣，欢迎关注作者的微博：@XDash 或微信：ifanbing。关于这本书的进展，可以关注微信公众号 ID：growthhackerbook。以下是文章正文：
  2007年，住在美国旧金山的两位设计师——Brian Chesky与Joe Gebbia正在为他们付不起房租而困扰。为了赚点外块，他们计划将阁楼出租出去。传统的做法是在Craigslist网站发帖子。“但我们不想这么干，因为在Craigslist发千篇一律的帖子会显得冷冰冰的，于是我们打算自己动手建一个网站。”
  当时城里正好举办一个设计展，周边的旅馆都被订满了。他们便很快搭建好了一个简易的网站，招徕开“家庭旅店”的生意。网站上包含地板上摆放的三张气垫床的照片，以及供应家庭自制早餐服务的承诺。很快他们获得了3个租客，每位支付了80美金。一周后，他们开始陆续收到世界各地人们的电子邮件，询问何时能在世界其他热门旅游目的地享受这样的服务，包括布宜诺斯艾利斯、伦敦、日本。
  他们于是将这一做法复制到其他大型集会，如SXSW，并允许人们通过信用卡在线支付。在2008年民主党全国集会期间，奥巴马在科罗拉多州的丹佛发表十万人演说。当时全市只有三万余个旅馆房间，于是Airbnb适时地选择再度在公众面前高调曝光，一度获得了极高的流量和关注——尽管此后相当一段时间内又逐渐归于沉寂。
  时光快拨七年，当年的Aired & Breakfast已经成为了享誉全球的Airbnb。其夜间租住的房间预定量甚至一举超过了酒店巨头希尔顿。截止2014年春，Airbnb拥有全球超过1000万用户、55万间房间，以及100亿美金的估值。
  早期的资金募集
  2008年项目创立之初，几位创始人需要想办法获取启动资金。起初他们试图靠自己做边缘业务来养团队，就买来大量的盒装麦片，并重新设计了两种总统选举主题的包装盒——奥巴马款和麦凯恩款。他们在秋季展会上以每盒40多美元的价格销售这两款麦片，最终卖出500多盒，为他们的项目筹集了近3万美金。
  但这些钱对于他们而言仍然不够。选举的结果最终尘埃落定后，他们还不得不设法处理掉所有麦凯恩款包装盒的剩余尾货。这让几位创始人焦头烂额，一度陷入低谷。这次不算成功的试水淋漓尽致地反映了小公司早期为了生存而不得不努力尝试任何可能性。
  次年春天，他们终于得以与硅谷创业教父Paul Graham共进晚餐。尽管Graham坦承“我觉得这个点子简直太疯狂了……怎么会有人想到做这么一件事？”并且2009年每周的收入仅200美元，差点破产，但Airbed & Breakfast还是得以加入了由Graham一手创建的创业孵化器——Y Combinator的2009年冬季班，且获得了2万美元的投资。当时Graham看中他们的理由是“这群甚至可以靠卖麦片来维持项目的人，他们的项目死不了”，认为这是他见过的最努力的团队之一。拿到钱后，项目正式改名为Airbnb，很快又获得了一笔60万美元的种子基金。
  尽管融资成功，市场上依然有投资人看不懂他们的商业模式，或是对两位创始人同属设计师背景不为看好。
  从现有平台挖掘新用户
  当时该领域最大的竞争对手Craigslist拥有Airbnb羡艳的海量用户基数。尽管Airbnb一直试图靠塑造差异化的产品形态来将自己与竞争对手区隔起来，但一个不可否认的事实是：对于订客房这样的供需平台服务而言，用户数的多少是人们选择的最重要因素，因为供方会选择潜在消费者最多的平台发布信息，而消费者也会挑货品足够充足的市场来比价下单。
  意识到这点后，Airbnb将Craigslist的用户群视作了一块肥肉，试图从中分一杯羹。于是他们推出了一项功能：允许用户在Airbnb发布信息的同时，方便地将信息内容拷贝一份发布到Craigslist上——尽管Craigslist并没有提供这样的现成接口。
  据工程师Rishi Shah介绍，当时针对Craigslist的这一hack技巧其实并不怎么费事。由于当时Craigslist通过网址中的一串明文的参数结构来保存列表内容（而不是使用cookie），所以Airbnb写了个机器人去访问并解析网址，在其中加入特定的信息，再将修改后的网址转交给用户用于发布。
  用户在Airbnb发布信息，随后会收到一封电子邮件，内容是告知用户：将该信息同时发布到Craigslist可以帮助每月增加高达约500美元的收入，您只需要点击这个链接，我们就可以为您完成。
  于是用户往往会不假思索地点击链接，毕竟这没什么不好的，反倒是省了很多事。
  接下来，Airbnb的机器人会自动执行一些动作，除了原封不动地拷贝内容之外，还需要做一些深加工，比如选择投递到Craigslist的哪个分类目录下，以及选择一个当前所在的地理位置。这项苦差事对工程师而言着实需要花费一番体力，因为要对被抓取对象给出的每一个目录选项，或是州县市及其对应的邮编做一一对应。此外机器人还需要对匿名邮件地址做屏蔽、绕过禁止HTML代码限制等。
  工程师Chen回忆说：“这些工作很细碎，我甚至觉得一些非常聪明的技术达人也需要花不少时间来把它做到尽善尽美。传统的市场推广负责人应该根本想不到这个技巧，里面包含了太多的技术细节需要攻克。估计也只有被要求从Craigslist上获取用户的工程师才能想到了吧。”
  这次成功的技术营销为Airbnb带来了几大回报：首先，更多来自Craigslist的回流撑起了Airbnb的人气，更多人加入注册，发布更多租出的信息；其次，原本习惯去Craigslist发布信息的用户，开始变成Airbnb的用户，因为现在只要在一处发布就能同时出现在两处；最后，原本的Airbnb用户的黏性更强了，因为他们确确实实在这里获得了更多的收入。",
                              issue_id: 1, author: 'admin', brief_introduction: "2007年，住在美国旧金山的两位设计师——Brian Chesky与Joe Gebbia正在为他们付不起房租而困扰。为了赚点外块，他们计划将阁楼出租出去。传统的做法是在Craigslist网站发帖子。“但我们不想这么干，因为在Craigslist发千篇一律的帖子会显得冷冰冰的，于是我们打算自己动手建一个网站。””。
  “People you may know” 这个功能的诞生其实大有来头"])
  puts '供ios开发测试的第五篇文章'
end

create_issues = for i in 2..11 do
                  Issue.create!([title: "Issue no.#{i}"])
                  create_posts = for j in 1..10 do
                                   Post.create!([title: "Post no.#{j} with Issue no.#{i}", content: "content no.#{j}", issue_id: i, author: "content no.#{j}", brief_introduction: "introduction no.#{j}"])
                  end
end
puts '10 issues created.'
