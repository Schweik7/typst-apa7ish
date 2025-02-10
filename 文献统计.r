suppressPackageStartupMessages({
  library(ggplot2)
  library(dplyr)
  library(extrafont)
})

# 使用系统字体
loadfonts(device = "win")

data <- data.frame(
  Topic = c("考试/学习焦虑", "学业成就/绩", "学习能力", "专业认同/满意度", 
            "学习/成就动机", "学校适应/认同", "学业压力", "学习投入", 
            "学习困难", "学习障碍", "学业自我效能感", "学习适应", "学业情绪", 
            "学业自我概念", "学业倦怠", "自我/学业控制", "学业拖延", 
            "生涯适应力", "时间管理倾向", "核心自我评价"),
  Count = c(724751, 366843, 301775, 114079, 102741, 96504, 72980, 58479, 
            51997, 37742, 23184, 18434, 17601, 12128, 7736, 7613, 3468, 
            2420, 2105, 1080)
)

p <- ggplot(data, aes(x = reorder(Topic, Count), y = Count)) +
 geom_bar(stat = "identity", fill = "steelblue") +
 geom_text(aes(label = format(Count, big.mark=",")), 
           hjust = -0.1, size = 3) +
 coord_flip() +
 theme_minimal() +
 labs(x = "学业心理研究变量", 
      y = "中国知网和Web of Science数据库文献发表数量（篇）") +
 theme(
   axis.text.y = element_text(size = 10, family = "Microsoft YaHei"),
   axis.text.x = element_text(size = 10, family = "SimSun"), 
   axis.title = element_text(size = 14, family = "Microsoft YaHei"),
   panel.grid = element_blank(),  # 移除内框线
   axis.line = element_line(color = "black", size = 0.5),
   axis.ticks = element_line(color = "black"),
   plot.margin = margin(5, 40, 5, 5)  # 调整边距确保标签完全显示
 ) +
 scale_y_continuous(
   labels = scales::comma,
   expand = c(0, 0),  # 确保坐标轴从0开始
   limits = c(0, max(data$Count) * 1.15)  # 调整上限留出文本空间
 )

ggsave("academic_psychology_trends.png", plot = p, width = 12, height = 8, dpi = 300)