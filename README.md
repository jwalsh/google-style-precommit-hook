A handy [pre-commit](http://pre-commit.com/) hook which will run Google's java
code style formatter for you on your code!

Usage: `.pre-commit-config.yaml`:


``` yaml
repos:
  - repo: https://github.com/jwalsh/google-style-precommit-hook
    sha: 3441780490c2fd34f56fb8cbf2295897a5b23c5d
    hooks:
      - id: google-style-java
```

``` sh 
pre-commit install
```

*Note*: this file stores Google's code style formatter jar in a `.cache/`
directory so that it doesn't need to be re-downloaded each time.  You will
probably want to add `.cache/` to the `.gitignore` file of the project which
uses this hook.
