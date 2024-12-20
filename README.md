## About this repo

This is an example repository for writing resumés in multiple languages with [Typst](https://typst.app).

It provides a way to write any chunk of the resumé in multiple languages. This means you only need to update one place at a time when making changes, saving the hassle of keeping multiple files in sync.

## Usage

### Editing

Edit `resume.typ`.

Use `_s` and `_c` to write strings and content in multiple languages. For example:

```typst
#_s("string in English", "string in Chinese")
```

```typst
#_c[
content in English
][
content in Chinese
]
```

The order of the languages should be consistent throughout the file and should match the order specified in the `languages` dictionary on top of the file.

### Exporting

To export the resumé in a specific language, use the `typst` command line tool. For example, to export the resumé in English:

```bash
typst compile resume.typ resume-en.pdf --font-path . --input lang=en
```

Using [just](https://github.com/casey/just):

```bash
just pdf en
```

Other languages can be exported similarly. Available languages are specified in the `languages` dictionary on top of `resume.typ`.
