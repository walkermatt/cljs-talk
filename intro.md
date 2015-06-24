# ClojureScript

> a dialect of the Clojure programming language that compiles to JavaScript - ClojureScript Up and Running (O'Reilly Media).

----

## What's Clojure?

> Clojure is a dialect of the Lisp programming language created by Rich Hickey. Clojure is a general-purpose programming language with an emphasis on functional programming. - https://en.wikipedia.org/wiki/Clojure

----

## What's Lisp?

> Lisp (historically, LISP) is a family of computer programming languages with a long history and a distinctive, fully parenthesized Polish prefix notation. - https://en.wikipedia.org/wiki/Lisp_(programming_language)

----

### Fully parenthesized Polish prefix notation!

```clojure
(let [links
        [{:title "a" :tags ["cljs"]}
        {:title "b" :tags ["cljs" "js"]}
        {:title "c" :tags ["js"]}]]
    (filter #(some (partial = "cljs") (:tags %)) links))
;=> ({:title "a", :tags ["cljs"]} {:title "b", :tags ["cljs" "js"]})
```

----

### Homoiconicity!

> ...allows all code in the language to be accessed and transformed as data, using the same representation - https://en.wikipedia.org/wiki/Homoiconicity

* Code as data
* Facilitates powerful macros that transform code as data

----

## Shiny Clojure(Script) features!

----

### Immutable data structures

* `lists`, `vectors`, `sets`, and `hash-maps` are immutable
* Functions that update them return whole new copies
* Eliminates a whole class of bugs caused by mutation of objects
* Deep equality is the default:

    `(= [1 2 3] [1 2 3]) ;=> true`

----

### Practical functional purity

> Clojure wants you to write functions that accept values, and return values, without changing anything on the outside. - [http://adambard.com/blog/ten-reasons-to-use-clojure/](http://adambard.com/blog/ten-reasons-to-use-clojure/)

* Pure functions perform calculations and transform data
* Easy to reason about and hence test and debug
* But Clojure is practical & recognises useful programs need to perform side effects

----

### Google Closure

* ClojureScript modules are Closure modules
* Compilation to JavaScript uses Closure Compiler
    * Dead code elimination allows use of large libraries

----

### React

* Wide interest in ClojureScript community
* Top down rendering well suited to a functional style
* [Om](https://github.com/omcljs/om), [Reagent](http://reagent-project.github.io/), [Brutha](https://github.com/weavejester/brutha)

----

## Show me the code!

* [JavaScript vs ClojureScript](http://himera.herokuapp.com/synonym.html)
* [Hungry Horris](https://github.com/walkermatt/hungry-horris/)
* [Links](https://github.com/walkermatt/links/)

----

## Dev tools

### [ClojureScript Quick Start](https://github.com/clojure/clojurescript/wiki/Quick-Start)

* Bare bones walk through with minimal dependencies
* Compile `.cljs` to `.js` for browser and Node
* Auto-build and browser and Node REPL

----

### Build tools

#### [Leiningen](http://leiningen.org/)

> for automating Clojure projects without setting your hair on fire

> ...a focus on project automation and declarative configuration

* Widely used & mature with extensive plugin eco-system
* Declarative

#### [Boot](http://boot-clj.com/)

> Builds are programs. Let's start treating them that way.

* Define builds as data traformations in Clojure code

----

## Further reading

* [Koans](http://clojurescriptkoans.com/)
* [Tutorial](https://www.niwi.nz/cljs-workshop/)
* [Clojure for the Brave and True](http://www.braveclojure.com/)

----

## Thanks

[twitter.com/_walkermatt](https://twitter.com/_walkermatt)
[github.com/walkermatt](https://github.com/walkermatt)
