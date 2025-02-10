// === APA7格式的基本要求实现 ===

// 1. 字体大小设置
// APA7要求使用12pt字体，这里提供了多种大小选项
#let script-size = 8pt      // 用于特殊情况的小字体
#let footnote-size = 8.5pt  // 脚注使用
#let small-size = 9.25pt    // 小字体
#let normal-size = 11pt     // 正文字体
#let large-size = 12pt      // 大字体，用于标题

// 2. 表格样式设置 - APA7要求表格使用简单的横线
#let heavyrulewidth = 0.08em // 粗线用于表格顶部和底部
#let lightrulewidth = 0.05em // 细线用于表格内部分隔
#let toprule = table.hline(stroke: heavyrulewidth)    // 表格顶线
#let midrule = table.hline(stroke: lightrulewidth)    // 表格中线
#let bottomrule = table.hline(stroke: heavyrulewidth) // 表格底线
// 表格注释格式符合APA7要求
#let tablenote(body) = { align(left, [_Note_. #body]) }

// 3. 主文档配置函数
#let conf(
  // === 文档基本信息 ===
  title: "An Intriguing Title",    // 标题居中，新页开始
  subtitle: none,                  // 副标题可选
  abstract: none,                  // 摘要：APA要求新页，无缩进
  authors: (),                     // 作者信息：包括隶属机构
  date: none,                      // 日期
  documenttype: none,              // 文档类型
  keywords: none,                  // 关键词：APA要求缩进
  disclosure: none,                // 利益披露声明
  funding: none,                   // 基金资助信息
  anonymous: false,                // 是否匿名（用于投稿）
  
  // === 格式设置 ===
  language: "zh",                  // 语言设置
  papersize: "a4",                // 纸张大小
  fontfamily: ("FZXiaoBiaoSong-B05S","SimHei","KaiTi_GB2312","FangSong_GB2312","Times New Roman"),  // 字体：APA推荐Times New Roman
  text-number-type: "old-style",   // 数字样式
  text-number-width: "proportional", // 数字宽度
  body,                           // 文档主体
) = {
  // === 文档属性设置 ===
  set document(author: authors.map(a => a.name), title: title)

  // === 页面设置 - APA7要求 ===
  set page(
    numbering: "1",               // 页码从1开始
    paper: papersize,             // 页面大小
    number-align: top + right,    // 页码右上角
    margin: 33mm,                 // 1英寸页边距(约25.4mm)
    header: {                     // 页眉（跑标题）
      context if counter(page).get().at(0) > 1 [
        #smallcaps(title)  // 标题大写
        #set text(size:small-size)
        #h(1fr)                   // 空间分配
        #here().page()           // 页码
      ]
    }
  )

  // === 文本格式设置 ===
  set text(font: (fontfamily.at(4),fontfamily.at(3)),
          lang: language,
          size: normal-size,
          number-type: text-number-type,
          number-width: text-number-width,
          region: "cn")
  show regex("\d+"): set text(font:fontfamily.at(3))
  // show regex("%"): set text(font:fontfamily.at(3))

  // === 段落设置 - APA7要求 ===
  set par(spacing: 0.58em)        // 双倍行距

  // === 标题格式设置 - APA7格式 ===
  show heading: it => {
    if it.level == 1 {
      // 一级标题：居中，粗体
      set text(font:fontfamily.at(1), size: large-size)
      align(left, text(it, size: normal-size))
      v(15pt, weak: true)

    } else {
      // 其他级别标题：左对齐，有的加粗
      let wght = "bold"
      if it.level > 2 {
        wght = "regular"
      }
      set text(font:fontfamily.at(2), size: normal-size)
      align(text(it, size: normal-size))
      v(normal-size, weak: true)

    }
  }

  // === 参考文献设置 - APA格式 ===
  set bibliography(
    title: "References",          // 参考文献标题
    style: "american-psychological-association" // APA格式引用
  )
  show bibliography: set block(spacing: 0.58em)
  show bibliography: set par(first-line-indent: 0em) // 悬挂缩进

  // === 图表格式 - APA要求 ===
  // show figure: set block(above: 2em, below: 2em)  // 图表前后间距
  
  // === 表格格式 ===
  set table(stroke: 0pt)  // 默认无边框
  show table: set block(spacing: 6pt)
  show table: set text(number-type: "lining", number-width: "tabular")
  
  // 图表标题格式 - APA要求标题在上方
  // set figure.caption(position: top) 
  // show figure.caption: self => [
  //     #align(left)[
  //     *#self.supplement*
  //     #context [*#self.counter.display(self.numbering)*] \ #self.body ]
  //     #v(6pt)
  //   ]

  // === 标题页设置 - APA7格式 ===
  align(center)[
    #if documenttype != none [
    #smallcaps(lower(documenttype)) \ ]
    #text(1.5em, title,font:fontfamily.at(0)) \        // 标题
    #if subtitle != none [
    #text(1.2em, subtitle) \ ]   // 副标题
    #v(1em, weak: true)
  ]
// 定义中文数字数组
// 定义中文数字数组
let chinese-numbers = ("一", "二", "三", "四", "五", "六", "七", "八", "九", "十")

// 自定义计数器格式化函数
let format-chinese(n) = {
  if n <= 10 {
    chinese-numbers.at(n - 1)
  } else {
    str(n)
  }
}

// 设置标题样式
set heading(
  numbering: (..nums) => {
    let level = nums.pos().len()
    if level == 1 {
      // 一级标题：一、二、三（带2字符缩进）
      h(2em) + format-chinese(nums.at(0)) + "、"
    } else if level == 2 {
      // 二级标题：（一）（二）（三）
      h(2em)+"（" + format-chinese(nums.at(1)) + "）"
    } else if level == 3 {
      // 三级标题：1. 2. 3.
      h(2em)+str(nums.at(2)) + "."
    }
  }
)

  // === 作者信息处理 ===
  // 用于处理作者归属机构的功能
  let parse_authors(authors) = {
    let affiliations = ()
    let parsed_authors = ()
    let corresponding = ()
    let pos = 0
    // 处理每个作者的信息
    for author in authors {
      author.insert("affiliation_parsed", ())
      if "affiliation" in author {
        if type(author.affiliation) == str {
          author.at("affiliation") = (author.affiliation, )
        }
        // 处理机构信息
        for affiliation in author.affiliation {
          if affiliation not in affiliations {
            affiliations.push(affiliation)
          }
          pos = affiliations.position(a => a == affiliation)
          author.affiliation_parsed.push(pos)
        }
      } else {
        // 没有机构信息时使用前一作者的机构
        author.affiliations_parsed.push(pos)
      }
      parsed_authors.push(author)
      // 处理通讯作者信息
      if "corresponding" in author {
        if author.corresponding {
          corresponding = author
        }
      }
    }
    (authors: parsed_authors,
     affiliations: affiliations,
     corresponding: corresponding)
  }

  // === 作者编号转字母功能 ===
  let number2letter(num) = {
    "abcdefghijklmnopqrstuvwxyz".at(num)
  }

  // === 处理作者信息 ===
  let authors_parsed = parse_authors(authors)

  // === 显示作者列表 - APA7格式 ===
  if not anonymous {
    // 作者信息布局
    pad(
      top: 0.3em,
      bottom: 0.3em,
      x: 2em,
      grid(
        columns: (1fr,) * calc.min(3, authors_parsed.authors.len()),
        gutter: 1em,
        ..authors_parsed.authors.map(author => align(center)[
          #author.name#super[#author.affiliation_parsed.map(pos => number2letter(pos)).sorted().join(", ")] \
        ]),
      ),
    )

    // === 显示机构信息 ===
    let affiliation_counter = counter("affiliation_counter")
    affiliation_counter.update(1)

    align(center)[
      #for affiliation in authors_parsed.affiliations [
        #context super(affiliation_counter.display("a"))#h(1pt)#emph(affiliation) #affiliation_counter.step() \
      ]
      #v(1em, weak: true)
      #date
      #v(2em, weak: true)
    ]
  } else {
    align(center)[
      #date
    ]
  }

  // === 正文格式设置 - APA7要求 ===
  set par(justify: true)  // 两端对齐
  
  // === 摘要和关键词部分 - APA7格式 ===
  if abstract != none {
    heading(outlined: false, numbering: none, text(12pt, weight: "regular", [项目简介]))
    align(center)[
      #block(width: 90%, [
        #align(left)[
          #abstract \
          #v(1em, weak: true)
          #if keywords != none [
          #emph("Keywords: ") #keywords
          ]
        ]
      ])
    ]
  }

  // === 链接格式 ===
  show link: set text(number-type: "lining", number-width: "tabular")
  
  // === ORCID标识符显示 ===
  let orcid(height: 10pt, o) = [
    #box(height: height, baseline: 10%, image("assets/orcid.svg")) #link("https://orcid.org/" + o)
  ]

  // === 作者注释部分 - APA7要求 ===
  if not anonymous {
    heading(outlined: false, numbering: none, text(11pt, weight: "bold", [Author Note]))

    // 显示作者ORCID
    for author in authors_parsed.authors [
      #author.name #orcid(author.orcid) \
    ]
    
    // 利益披露声明
    if disclosure != none [
      #disclosure \
    ] else [
      We have no conflicts of interest to disclose. \
    ]

    // 基金资助信息
    if funding != none [
      #funding \
    ]

    // 通讯作者联系方式
    [Correspondence concerning this article should be addressed to
     #authors_parsed.corresponding.name,]
     if "postal" in authors_parsed.corresponding [ #authors_parsed.corresponding.postal]
     [
     Email: #link("mailto:" + authors_parsed.corresponding.email, authors_parsed.corresponding.email)
     ]
  }

  // === 新页开始正文 - APA7要求 ===
  pagebreak()

  // === 正文段落缩进 - APA7要求 ===
  set par(first-line-indent: 2em)  // 段落首行缩进

  // 正文内容
  body
}