# ENGR1000J LaTeX 模板

该仓库包含 ENGR1000J 夏季学期 2025 最终项目报告的 LaTeX 模板。

## 概述

此模板旨在帮助学生按照提供的 Word 模板和格式指南创建其 ENGR1000J 项目报告。它包括：

* 一个主要的 LaTeX 文件 (`main.tex`)，其中包含报告的结构和格式。
* 一个 BibTeX 样式文件 (`new-aiaa.bst`)，用于格式化参考文献。
* 一个示例 BibTeX 文件 (`sample.bib`)，其中包含各种类型的参考文献示例。
* 一个 `figures` 文件夹，其中包含报告中使用的徽标和占位符图像。

## 文件结构

```text
.
├── figures/                # 包含图像文件
│   ├── gantt_chart.png
│   ├── headlogo.png
│   ├── JI logo.png
│   ├── preface_picture.png
│   └── team logo.png
├── main.tex                # 主要的 LaTeX 源文件
├── new-aiaa.bst            # BibTeX 样式文件 (AIAA 样式)
├── README.md               # 本文件
└── sample.bib              # 示例 BibTeX 参考文献文件
```

## 如何使用

1.  **克隆或下载此仓库。**
2.  **编辑 `main.tex` 文件：**
    *   在 `\title{}` 中更新项目标题。
    *   在相应部分添加团队成员信息。
    *   填写报告的各个部分（摘要、致谢、引言等）。
    *   将 `figures/preface_picture.png` 替换为您的图形摘要。
    *   根据需要更新 `figures` 文件夹中的其他图像（例如团队徽标）。
3.  **编辑 `sample.bib` 文件：**
    *   添加您的参考文献条目。
    *   在 `main.tex` 中使用 `\cite{}` 命令引用这些条目。
4.  **编译 LaTeX 文档：**
    *   使用 LaTeX 发行版（例如 MiKTeX、TeX Live、Overleaf）编译 `main.tex`。通常，您需要多次编译才能正确生成目录和参考文献。典型的编译顺序是：`pdflatex` -> `bibtex` -> `pdflatex` -> `pdflatex`。

## 依赖项

*   LaTeX 发行版（例如 MiKTeX、TeX Live）。
*   `main.tex` 文件中列出的 LaTeX 宏包（例如 `CJKutf8`、`times`、`graphicx`、`natbib` 等）。这些宏包通常包含在标准 LaTeX 发行版中，或者可以通过其宏包管理器进行安装。

## 贡献者

*   （在此处添加贡献者信息，如果适用）

## 许可证

（在此处添加许可证信息，如果适用。如果未指定，可以考虑添加一个标准的开源许可证，例如 MIT 许可证。）
