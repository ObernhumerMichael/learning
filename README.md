<!--toc:start-->

- [What is this?](#what-is-this)
- [For the Future](#for-the-future)
- [Navigation](#navigation)
- [Development](#development)
<!--toc:end-->

# What is this?

This is a collection of my own personal notes about various topics.
This collection is in no ways complete as I take most of my notes offline in a notebook.
In here are just the things that are way to tedious to copy down on paper or for other various reasons.

# For the Future

- [ ] translate [cypersecurity](./cypersecurity/) fully to english and update the file names
- [ ] digitalize handwritten notes
- [ ] use [docosaurus](https://github.com/facebook/docusaurus) to make the content publicly available as a website

# Navigation

- [Introduction to Algorithms](./programming/Introduction_to_Algorithms/notes.md)
- [Design Patterns: Elements of Reusable Object-Oriented Software](./programming/Design_Patterns_Elements_of_Reusable_Object_Oriented/Design_Patterns_Elements_of_Reusable_Object_Oriented.md)
- [Abenteuer Informatik TUW](./programming/Abenteuer_Informatik_TUW/Abenteuer_Informatik_TUW.md)
- [Cypersecurity](./cypersecurity)
  - [Basics](./cypersecurity/Grundlagen/)
  - [Algorithms](./cypersecurity/Algorithmen/)
  - [Attack vectors](./cypersecurity/Angriffsvektoren/)
  - [Methods](./cypersecurity/Methoden/)
  - [Processes](./cypersecurity/Prozesse/)

# Development

Execute the following command at the root of the repo.
This command autoconverts the markdown files to pdfs on change.

```sh
find ./ -name '*.md'| entr ./build.sh /_
```
