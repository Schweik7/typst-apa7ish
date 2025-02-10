// #import "@preview/apa7-ish:0.2.0": *
#import "../src/apa7ish.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold,fakeitalic,show-cn-fakeitalic
#show: show-cn-fakebold
#show: show-cn-fakeitalic // 参考文献中需要用斜体
#show: conf.with(
  title: "融合AI和VR技术的学业情绪识别与认知促进研究",
  // subtitle: "The impact of a good title on a paper's citations count",
  // documenttype: "Research Article",
  anonymous: true,
  authors: (
    (name: "Klaus Krippendorff",
      email: "email@upenn.edu",
      affiliation: "University of Pennsylvania",
      postal: "Department of Communication, University of Pennsylvania, Philadelphia, PA 19104",
      orcid: "0000-1111-1111-1111",
      corresponding: true),
      (name: "Ashish Vaswani",
      affiliation: ("Google Brain", "University of Pennsylvania"),
      orcid: "0000-1111-1111-1111"),
      (name: "Niklas Luhmann",
      affiliation: "University of Pennsylvania",
      orcid: "0000-1111-1111-1111")
  ),
  // fontfamily: "FZXiaoBiaoSong-B05S",

  abstract: [Title of a scientific paper is an important element that conveys the main message of the study to the readers.
  In this study, we investigate the impact of paper titles on citation count, and propose that the title alone has the highest impact on citation count.
  Using a dataset of 1000 scientific papers from various disciplines, we analyzed the correlation between the characteristics of paper titles, such as length, clarity, novelty, and citation count. Our results show that papers with clear,
  concise, and novel titles tend to receive more citations than those with longer or less informative titles.
  Moreover, we found that papers with creative and attention-grabbing titles tend to attract more readers and
  citations, which supports our hypothesis that the title alone has the highest impact on citation count.
  Our findings suggest that researchers should pay more attention to crafting effective titles that accurately
  and creatively summarize the main message of their research, as it can have a significant impact on the success
  and visibility of their work.
],
  // date: "October 20, 2024",
  keywords: [content analysis, citation, bibliometrics],
  funding: [This research received funding by the Ministry of Silly Walks (Grant ID: 123456).]
)
#let fakepar = context {
  let b = par[#box()]
  let t = measure(b + b)
  b
  v(-t.height)
}

#show heading: it => {
  it
  fakepar
}
#set underline(offset: 2.5pt)
#let ul=underline
= 项目目标和必要性
// 识别是指：
// 观察对方当下的情绪和表现
// 了解对方遇到了什么问题
// 了解问题带来哪些影响
// 发现是否有危险信号
== 项目目标
为响应“教育强国”“健康中国”和“人工智能+”等国家重大战略，本项目聚焦学生学业心理服务资源不足、风险预警滞后、精准干预欠缺等现实挑战，#ul[*创新地融合人工智能*]（Artificial Intelligence, AI）#ul[*与虚拟现实*]（Virtual Reality, VR）等前沿数字技术，#ul[*探究“智能技术+人文关怀”双驱动的大中小学生智能学业心理服务系统* 。该系统以“数据库-创作平台-智能硬件-沉浸式空间-代际帮扶队伍”为核心架构，打造可验证、可复制、可持续的智能心理与生涯服务模式]，逐步构建以学生为中心、辐射千家万户的社会心理关怀体系，守护大众心理健康，助力社会和谐发展。项目的具体目标包括：

（1）* 挖掘学生日常心理特征与规律，探究数字化负性学业情绪与早期心理问题识别的新范式*。基于情绪认知评价理论与贝克认知模型，运用网络爬虫、大数据分析和心理会谈技术，#ul[建立学生负性学业情绪与心理问题数据库]；以跨学段学生的普遍性抑郁情绪（Depressive Mood）为研究基点，基于生成式AI技术（Generative Artificial Intelligence, GenAI）、网页端VR技术与情境判断测验技术，#ul[开发心理情境测验、“心声”VR应用、AI生涯智友]识别学生的学业心理与生涯问题、心理风险因素，并采用大范围测验与随机对照实验评估其信效度。

（2）* 探究AI+VR学业心理“人-机-环”一体化干预技术，解析沉浸式心理干预对普通学生、学习困难学生的学业情绪与认知的作用机制*。以复愈性环境理论、生涯发展理论与表达性艺术疗法为基础，基于网络爬虫、机器学习、GenAI、VR与全息投影技术，#ul[构建视觉、听觉、嗅觉、触觉等多感官疗愈数据库，搭建“心灵絮语”“生命篇章”等轻量级心理教育与创作平台；开发AI生涯规划、香氛疗愈和触觉反馈等智能硬件；在教室、走廊、咨询室等场所打造学业心理与生涯发展沉浸式空间]，帮助学生调节情绪压力与认知偏差，培育人工智能时代的复合型人才。同时采用生理-心理-行为多模态实验研究，检验数字化疗愈技术对学业情绪、学习困难和生涯适应力等核心指标的影响，揭示其作用机制，为构建智能化学业心理教育体系提供科学依据。

（3）* 培育代际帮扶队伍，探究智能时代学业心理服务的多方协同机制*。在试点学校和医院#ul[建立“以人为中心”的学业心理专业支持团队]，培训数字心理技能，促进学生、师兄师姐、心理与生涯老师、学生家长、心理研究者、心理咨询师、心理与精神科医护人员等多方协作，构建系统性社会支持网络。

== 项目背景
=== 学业心理问题供需失衡
*近十年来，我国学生心理健康问题呈现多发性、复杂性和阶段性特征*。元分析研究表明，#ul[大中小学生均面临睡眠、抑郁和焦虑等典型心理健康问题，但存在阶段性的分布差异]，可能与其身心发展需求与困境息息相关：小学阶段主要表现为睡眠问题（25%）、抑郁（15%）、焦虑（12%）和攻击行为（4%）@XLXD202205001；初中阶段以焦虑（27%）、抑郁（24%）、自我伤害（22%）和睡眠问题（17%）为主@XLXD202205002,；高中阶段则以抑郁（28%）、焦虑（26%）、睡眠问题（23%）和自我伤害（23%）为主@XLXD202205003；大学阶段主要表现为睡眠问题（24%）、抑郁（21%）、自我伤害（16%）和焦虑（14%）@XLXD202205004。


*学业心理问题是学生心理健康的主要挑战之一*，表现为与学业情境密切相关的适应困难、发展问题和功能障碍，包括情绪失调(如学业焦虑、抑郁、畏难、厌学情绪)、认知功能不完善(如学习注意力不集中、认知偏差、学习困难)、动机缺失(如学习倦怠、无意义)以及行为适应不良(如逃学、自伤)等问题。然而，*针对学业心理健康与生涯发展的学术关注度存在明显不足*。在中国知网平台以"心理健康、心理问题、心理压力、心理适应、心理障碍、焦虑、抑郁、睡眠、自我伤害、攻击行为、心理素质、心理特征、心理状态"等核心概念为主题词，采用中英文扩展检索模式，可获得567,013篇相关文献；与"学生"主题词交叉后，文献量降至76,027篇，其中，与"学习"相关的文献为30,450篇，聚焦“学业”的文献3,504篇，以及关注"生涯"主题的文献458篇。在Web of Science平台检索上述主题词，结果显示，学业心理健康文献（24,548篇）学生心理健康文献（85,692篇）占比28.65%，而关注学业心理健康与生涯发展的研究（2,385篇） 仅占比2.79%。基于中国知网与Web of Science平台数据，#ul[目前国内外研究主要形成两个研究方向：（1）学业发展与适应性研究，包括考试焦虑、学业成就、学习能力和学习动机等核心议题；（2）特殊学习问题研究，聚焦学习困难和学习障碍等特定群体的学习特征、成因机制及干预策略，研究文献分布详情如图所示@trend。这些研究同时考虑了学业心理与个体（手机成瘾、应对方式、执行功能、心理弹性、幸福感、生命意义感、生活满意度等）、家庭（教养方式、心理控制等）和社会（情感支持、社会支持等）等因素的关联]。*然而，相较于心理健康与精神卫生领域，聚焦学业心理健康与生涯发展的研究比例仍偏低，且大多研究侧重探讨学业"绩效型"指标，对学生日常学业情绪和认知状态的关注不足。考虑到大中小学生日益增长的学业心理服务需求，亟需开展更多高质量的理论建构和实证研究，为心理健康教育提供科学依据*。
#figure(
  placement: bottom,
  caption: [中国知网和Web of Science数据库中学业心理研究议题分布],
  image("academic_psychology_trends.png", width: 80%),
) <trend>




// wos检索词
  // https://webofscience.clarivate.cn/wos/alldb/summary/c4511829-d339-4573-9e31-70343939e48d-0148061d2d/relevance/1
  // TS=((mental health OR psychological problem* OR psychological stress OR psychological adaptation OR mental disorder*) AND (anxiety OR depression OR sleep OR self-harm OR aggressive behavio*) AND (psychological quality OR psychological characteristic* OR psychological state*) AND (student* AND (learning OR academic* OR career)))
  // 使用citespace

// 中英文扩展模式
// 心理健康+ 心理问题 + 心理压力 + 心理适应 + 心理障碍
// 焦虑 + 抑郁 + 睡眠 + 自我伤害 + 攻击行为 
// 心理素质+心理特征 + 心理状态
// 学生
// 学习
// 学业
// 生涯


学业情绪指在学习活动中经历的各种情绪情感体验，分为积极（如愉悦、希望和自豪等）和消极（如焦虑、愤怒和羞耻等）两类@pekrun2002academic ，与成就动机、认知好奇、自我概念等因素相关，同时影响学习投入、学习策略和学业成就@XLXB200705011 @ZLCY202304017 @ZLCY202405026。控制价值理论认为


// 教育阶段：中小学生/大学生/研究生/K-12/高等教育
// 特殊群体：留学生/寄宿生/单亲家庭学生/流动儿童
// 风险群体：学业困难生/贫困生/LGBTQ+学生






*学业诱发的心理健康问题识别不足*。



// 生涯测评：https://www.suplb.cn/liangbiao/670.html
// https://aic-fe.bnu.edu.cn/docs/20181017160551078266.pdf





研究表明，学习困境主要表现为学习动机不足（42%）、学习方法不当（38%）、注意力难以集中（35%）和课程理解困难（32%）。这些问题往往与学生的心理健康状况呈现显著相关，其中学习压力与焦虑的相关系数为0.67，学业倦怠与抑郁的相关系数达到0.72，表明两者之间存在密切的双向互动关系



心理问题是学生心理问题的主要组成部分。其中，学习情绪与学习困难尤为突出。研究表明，不良的学习情绪与学习困难不仅直接影响学习效能，还往往与焦虑、抑郁等心理问题形成交互作用。调查数据显示，学生的学习情绪问题主要表现为学习焦虑（35%）、学业倦怠（32%）、学习压力（30%）和学习动力缺失（28%）；而学习困难则主要体现在注意力难以集中（33%）、学习方法不当（31%）、记忆效率低下（29%）和课程理解障碍（26%）。这种情绪与认知层面的双重挑战，严重影响着学生的学业发展和心理健康水平。


=== 人工智能时代





以学生为中心，以学业引发的焦虑、抑郁问题为抓手，重点在学校和医院场景中实践智能心理技术服务。






学生心理问题的具体类型和分布

现有心理服务体系的具体短板和缺口

未说明与现有同类技术的差异性

"双驱动"模式的创新机制未充分阐释
AI和VR技术的创新应用场景不够具体


= Declaration of Interest Statement
#label("declaration-of-interest-statement")
The authors report there are no competing interests to declare.
Normal text &测试 and &中文
元分析
#pagebreak()


// 更精确的参考文献匹配
// 限制作用域
#show <references>: it => {
  // 处理 & 和空格
  show regex("& \\p{sc=Hani}+"): lit => {
    lit.text.slice(2)
  }
  
  // 处理以中文开头的整行
  show regex("^\\p{sc=Hani}[^\n]*"): lit => {
    "["+ lit.text + "]"
  }
  
  it
}

#bibliography("example.bib", style: "apa.csl")
#<references>

