  use github.com/CrimsonKoba/elvish-completions/git
  use github.com/CrimsonKoba/elvish-modules/test

  var cmds = ($git:git-arg-completer git '')

  (test:set github.com/CrimsonKoba/elvish-completions/git
    (test:set "common top-level commands"
      (test:check { has-value $cmds add })
      (test:check { has-value $cmds checkout })
      (test:check { has-value $cmds commit })
    )
  )
