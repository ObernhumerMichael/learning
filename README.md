<!--toc:start-->

- [What is this?](#what-is-this)
- [For the Future](#for-the-future)
- [Navigation](#navigation)
- [Development](#development)
  - [Dependencies](#dependencies)
  - [Mermaid](#mermaid)
  <!--toc:end-->

# What is this?

This is a collection of my own personal notes about various topics.
This collection is in no ways complete as I take most of my notes offline in a notebook.
In here are just the things that are way to tedious to copy down on paper or for other various reasons.

# For the Future

- [ ] translate [cybersecurity](./cypersecurity/) fully to english and update the file names
- [ ] digitalize handwritten notes
- [ ] use [docusaurus](https://github.com/facebook/docusaurus) to make the content publicly available as a website

# Navigation

- [Introduction to Algorithms](./books/Introduction_to_Algorithms/notes.md) (hiatus)
- [Design Patterns: Elements of Reusable Object-Oriented Software](./books/Design_Patterns_Elements_of_Reusable_Object_Oriented/Design_Patterns_Elements_of_Reusable_Object_Oriented.md) (hiatus)
- [Abenteuer Informatik TUW](./books/Abenteuer_Informatik_TUW/Abenteuer_Informatik_TUW.md) (hiatus)
- [Make it Stick](./books/make_it_stick/notes.md) (completed)
- [Lying](./books/Lying/notes.md) (completed)
- [Cypersecurity](./cypersecurity)
  - [Basics](./cypersecurity/Grundlagen/)
  - [Algorithms](./cypersecurity/Algorithmen/)
  - [Attack vectors](./cypersecurity/Angriffsvektoren/)
  - [Methods](./cypersecurity/Methoden/)
  - [Processes](./cypersecurity/Prozesse/)

# Development

Execute the following command at the root of the repo.
This command auto converts the markdown files to PDFs on change.

```sh
find ./ -name '*.md'| entr ./build.sh /_
```

## Dependencies

- [pandoc](https://github.com/jgm/pandoc)
- [mermaid-cli](https://github.com/mermaid-js/mermaid-cli)
- [entr](https://github.com/eradman/entr)

## Mermaid

To let a mermaid diagram show a `Figure N: <Text>` / `ALT=<Text>` one has to use set the `accDescr` property.
For more information see the [mermaid-cli](https://github.com/mermaid-js/mermaid-cli) docs.

```
graph
   accDescr: My description here
```
