#import "apa7.typ": *
#import "@preview/tablex:0.0.5": tablex, cellx,hlinex,vlinex
// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Development of a Situational Depression Test for Chinese Young Students(12-24 Years): An Ecological-Cognitive Framework Approach Utilizing Big Data and ChatGPT",
  // subtitle: "The impact of a good title on a paper's citations count",
  documenttype: "Research Article",
  authors: (
    (name: "Klaus Krippendorff", 
      email: "email@upenn.edu", 
      affiliation: "University of Pennsylvania", 
      postal: "Department of Communication, University of Pennsylvania, Philadelphia, PA 19104",
      orcid: "0000-1111-1111-1111",
      corresponding: true),
      (name: "Ashish Vaswani", 
      affiliation: "Google Brain", 
      orcid: "0000-1111-1111-1111"),
      (name: "Niklas Luhmann", 
      affiliation: "University of Pennsylvania", 
      orcid: "0000-1111-1111-1111")
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [Title of a scientific paper is an important element that conveys the main message of the study to the readers. 

],
  // date: "March 28, 2023",
  keywords: [Situational Depression Testing, Ecological Systems Theory, Cognitive Behavior Therapy, Big Data, ChatGPT]
)


// #show figure: columns.with(1)
= Introduction
// 引出研究背景:介绍抑郁症在中国青少年和年轻人中的流行现状;
// 阐述问题:现有抑郁测验对中国人群的适用性与效度存在局限;
// 重点凸显研究意义:编制适合中国人群的抑郁测验工具的必要性和价值;
// 明确研究目的:开发情境式的中国本土化青少年与年轻人抑郁测验;
// 说明研究理论基础:生态系统理论和认知理论;
// 描述研究方法:使用大数据技术,结合ChatGPT优化测试量表。

Depression among adolescents and young adults is increasingly recognized as a notable global health issue. Combined studies indicate that approximately 30% of the global youth population exhibit depressive symptoms @li2022prevalence @shorey2022global. In China, the situation is similarly concerning. Meta-analyses reveal depression rates of 24% in junior high students @zhang2022prevalence, 28% in senior high students @yu2022prevalence, and 20.8% among university students @chen2022prevalence. Depression impacts students' cognitive functions and emotional regulation @semkovska2019cognitive @vanbeveren2019how and could compromise their academic performance, physical health, and long-term development @monzonis-carda2022risk @CLAYBORNE201972. Additionally, it elevates the risk of suicide and has potential implications for cognitive performance in subsequent generations @Cullen2023Cognitive. Such trends pose considerable developmental and economic challenges to society @liu2020changes. Prioritizing early detection and effective interventions for depression is imperative.

== 学生抑郁评估


青少年心理健康评估作为全过程心理防治体系的首要环节，可以通过专业的方法和技术了解青少年的心理状态，有利于青少年心理健康问题的早期发现和及时干预。已有青少年心理健康评估多为青少年主观报告的方式，完成心理健康相关的测验，如；或者通过监测青少年的生理指标评估青少年心理状态，如脑电、心率、血氧等。


当前常用的抑郁评估量表包括：根据抑郁症状和诊断标准，(自评) Self-rating Depression Scale @zung1965selfrating; Beck Depression Inventory-Ⅱ @beckaaront1996manual; Center for Epidemiological Studies-Depression @radloff1977cesd 成人抑郁筛查和严重程度评估
\
测一下apa的#apacite("beckaaront1996manual")


(他评) Hamilton Depression Rating Scale @hamilton1960rating 针对确诊患者开发，用于评估抑郁治疗效果
the Montgomery-Åsberg Depression Rating Scale @montgomery1979newa ；针对医院门诊 in non-psychiatric hospital departments 情绪障碍筛查detection  @zigmond1983hospital
Patient Health Questionnaire-9 @kroenke2001phq9 患者抑郁严重程度评估

SCL-90 症状自评量表 (SymptomChecklist Subscales for Depression) @Derogatis1973

适用于成年群体
抑郁诊断标准更新；不同心理问题的症状存在交叉；症状难以区分，没有结合人们日常的情境，受过专业训练的普通人有着各自的理解，



The patient health questionnaire for adolescents
适用于7-17岁儿童的Children's Depression Inventory #apacite("kovacs1985child","kovacs2015children") 适用于






针对13-18岁初级医疗患者设计的

生活发展、时代变迁、文化背景
中国大学生心理健康筛查量表(College Students Mental Health Screening Scale)@fang2018development

情境、心理和行为一体化

从病因学角度增加维度

智能时代的契机，有效性和可及性更高

耗费时间长、对于临床病人挑战难度高

不易理解或者理解偏差

针对临床病人的抑郁障碍、从症状持续时间和严重程度划分，不关心人们行为背后的诱发因素和心理活动；不同心理问题的症状区分存在交叉区分不明显

使用难题
Trends in (not) using scales in major depression: A categorization and clinical orientation


异常心态的主要倾向为抑郁


== 情境测验

 contextual effect

// 抑郁筛查的结果，受到测量工具、评估标准，测量时间等因素影响，仍缺乏标准化的、适合中国学生心理问题筛查的测量工具。
// 评估的灵敏性和特异性，假阳和假阴Screening for Depression and Suicide Risk in Children and Adolescents


// 青少年和青少学生的抑郁受到多重因素的影响。

// 早期不良图式A meta-analysis of the relationship between early maladaptive schemas and depression in adolescence and young adulthood



新冠流行COVID-19





== 讨论
量表筛查存在滞后性、被动性和受限性等缺点。随着新媒体、大数据以及人工智能等技术的发展,解决传统筛查方法不足并促使大学生抑郁症从筛查到预警成为可能。-大学生抑郁筛查及预警系统的研究进展

精神卫生服务难题：中国精神卫生资源状况分析、中国精神卫生学科发展的回顾与展望、2020年中国精神卫生资源状况分析

药物治疗昂贵



== asdfadf


= Declaration of Interest Statement
#label("declaration-of-interest-statement")
The authors report there are no competing interests to declare.

// #pagebreak()

// @meng_table 很美丽



#import "@preview/tablex:0.0.5": tablex, rowspanx, colspanx
#set par(justify: true,
          first-line-indent: 0em)

#let my_fig=figure(
  tablex(
    columns:4,
    align:center+horizon,
    // auto-vlines:false,
    auto-lines:false,
    header-rows:1,
    repeat-header:true,
    hlinex(stroke:black+1pt),
    // vlinex(),
    [11],[22],[33],[44],
    hlinex(stroke:0.5pt),
    [1],[2],[3],[4],
    [1],[2],[3],[4],
    [1],[2],[3],[4],
    [1],[2],[3],[4],
    hlinex(stroke:1pt)
  ),
  caption: [this is title of a table],
  supplement: [Table],
  outlined: true,
  // placement: auto
  placement: bottom,
  // caption-pos: top // 标题的位置参数只有top或者bottom，因此需要自定义
)

below is the figure\

// #repr(my_fig)
#my_fig
// #my_fig<meng_table>
  
#assert(1 < 2, message: "math broke") // 如果fail将无法编译，输出message
// #panic("this is wrong") panic也是直接报错
#figure(
  placement: bottom,
  caption: [A glacier],
  image("glacier.jpg", width: 40%),
)
// #tablex(
//   columns: 4,
//   align: center + horizon,
//   auto-vlines: false,
//   header-rows: 2, // 表明标题行数，可能用于重复标题行
//   repeat-header: true,
//   // color the last column's cells
//   // based on the written number

//   /* --- header --- */
//   rowspanx(2)[*Username*], colspanx(2)[*Data*], (), rowspanx(2)[*Score*],
//   (),                 [*Location*], [*Height*], (),
//   /* -------------- */

//   [John], [Second St.], [180 cm], [5],
//   [Wally], [Third Av.], [160 cm], [10],
//   [Jason], [Some St.], [150 cm], [15],
//   [Robert], [123 Av.], [190 cm], [20],
//   [Other], [Unknown St.], [170 cm], [25],
// )
// #tablex(
//   columns: 3,
//   colspanx(2)[a], (),  [b],
//   [c], rowspanx(2)[d], [ed],
//   [f], (),             [g]
// )
// #tablex(
//   columns: 3,
//   map-hlines: h => (..h, stroke: blue),
//   map-vlines: v => (..v, stroke: green + 2pt),
//   colspanx(2)[a], (),  [b],
//   [c], rowspanx(2)[d], [ed],
//   [f], (),             [g]
// )
#set par(justify: true,
          first-line-indent: 2em)
== asdfasdf

Title of a scientific paper is an important element @teixeira2015importance that conveys the main message of the study to the readers @hartley2019academic. 
我测试一下apa格式下的book
#apacite("hartley2019academic")
In this study, we investigate the impact of paper titles on citation count, and propose that the title alone has the highest impact on citation count. 

#bibliography("example.bib")