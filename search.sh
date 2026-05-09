#!/bin/bash

# 英语学习仓库搜索工具

echo "🔍 英语学习内容搜索"
echo "=================="
echo ""
echo "请选择搜索类型："
echo "1. 搜索单词 (vocabulary/)"
echo "2. 搜索句子 (sentences/)"
echo "3. 搜索笔记 (notes/)"
echo "4. 搜索所有内容"
echo "5. 按标签搜索"
echo "0. 退出"
echo ""
read -p "请输入选项: " choice

case $choice in
    1)
        echo ""
        read -p "输入要搜索的单词: " keyword
        echo ""
        echo "=== 单词搜索结果 ==="
        grep -rn "$keyword" vocabulary/*.md 2>/dev/null || echo "未找到相关记录"
        ;;
    2)
        echo ""
        read -p "输入要搜索的句子或短语: " keyword
        echo ""
        echo "=== 句子搜索结果 ==="
        grep -rn "$keyword" sentences/*.md 2>/dev/null || echo "未找到相关记录"
        ;;
    3)
        echo ""
        read -p "输入要搜索的关键词: " keyword
        echo ""
        echo "=== 笔记搜索结果 ==="
        grep -rn "$keyword" notes/*.md 2>/dev/null || echo "未找到相关记录"
        ;;
    4)
        echo ""
        read -p "输入要搜索的关键词: " keyword
        echo ""
        echo "=== 全局搜索结果 ==="
        grep -rn "$keyword" vocabulary/*.md sentences/*.md notes/*.md daily/*.md 2>/dev/null || echo "未找到相关记录"
        ;;
    5)
        echo ""
        read -p "输入标签名称(不含#): " tag
        echo ""
        echo "=== 按标签 [$tag] 搜索结果 ==="
        grep -rn "#$tag" vocabulary/*.md sentences/*.md notes/*.md daily/*.md 2>/dev/null || echo "未找到相关记录"
        ;;
    0)
        echo "再见！"
        exit 0
        ;;
    *)
        echo "无效选项"
        exit 1
        ;;
esac
