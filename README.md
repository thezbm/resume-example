
## About this repo

This is an example repository for writing resumés in multiple languages with [Typst](https://typst.app).

It provides a way to write any chunk of the resumé in multiple languages. This means you only need to update one place at a time when making changes, saving the hassle of keeping multiple files in sync.

## Usage

### Editing

Edit `src/resume.typ`.

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

The order of the languages should be consistent throughout the file and should match the order specified in the `locales` dictionary on top of the file.

### Exporting

To export the resumé in a specific language, use the `typst` command line tool. For example, to export the resumé in English:

```bash
typst compile resume_en.typ --font-path .
```

Using [just](https://github.com/casey/just):

```bash
just pdf en
```

To add more languages, refer to `resume_en.typ` and `resume_zh.typ` as examples.
