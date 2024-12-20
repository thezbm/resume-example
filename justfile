set windows-powershell := true

pdf lang:
  typst compile resume.typ resume-{{lang}}.pdf --font-path . --input lang={{lang}} 

clean:
  rm *.pdf
