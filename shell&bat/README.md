# work_notes
Worked for many years and started to organize notes

forfiles -p "D:\log" -s -m "*.csv" -d -100 -c "cmd /c del @FILE"

-p 指定路径开始搜索
-s 指定forfiles递归到子目录
-m 可以指定后缀名搜索，通常为* 通配
-c 文件执行的命令，命令字符串用双引号括起来