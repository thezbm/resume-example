set windows-powershell := true

pdf lang:
  typst compile 'resume_{{lang}}.typ' --font-path .

clean:
  rm *.pdf
