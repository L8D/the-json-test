The JSON test
=============

An examplistic comparison of syntax and style between languages.

The primary requirement is that your code can parse the `data.json` and print the name and level of each 'player'.

Additionally these things will get you bonus points:

- The code can generate changed JSON output.
- The code can re-generate the JSON in a pretty format matching the existing one.
- The code can write the matching pretty format to the `data.json`
- The code can do the above will keeping the same file variable.

## Add your own language

If you want to add a language, just add a `main.<extension here>` and then add to the Makefile like so:

``` Makefile
langname:
  langcmd $(SOURCE).<extension here>
```

Where `langname` is the name of the language(exa. `python`, `ruby`, `node`), and `langcmd` is a command that will execute your code(exa. `python`, `gcc`).
If needed, you can add other files too for your script to use. Make sure to try to keep them in the `lib/` folder.
