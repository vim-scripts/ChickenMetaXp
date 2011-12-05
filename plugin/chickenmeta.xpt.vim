XPTemplate priority=personal

let s:f = g:XPTfuncs()

fun! s:f.build_choice( choices )
    let s:choice = s:f.Build( ( a:choices )[ s:f.V() ] )
    return s:choice
endfunction

fun! s:f.include_choice( choices )
    let s:choice = s:f.Build( '`:' . ( ( a:choices )[ s:f.V() ] ) . ':^' )
    return s:choice
endfunction

XPTvar $TRUE          1
XPTvar $FALSE         0
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL
XPTvar $VOID_LINE     /* void */;
XPTvar $BRif \n

XPTinclude
      \ _common/common
      \ _condition/lisp.like

XPT meta
(
; Your egg's license (required)
;
; The license under which the code is released. Please make sure you use
; the proper license if you package code written by others (required).
; For details on how to format this string read:
;
;    http://wiki.call-cc.org/eggs-licensing
`:license:^

; A category under which the egg should be listed on the eggs index page (required).
;
; Pick one from the list of categories for your egg and enter it here.
;
; Syntax:
;          (category SYMBOL)
;
; Example:
;
;          (category web)
`:category:^

; Any extensions needed to build and use this extension. (optional)
;
; A list of eggs your egg depends on.  If none, you can omit this declaration
; altogether. 'depends' is an alias to 'needs'.
; Notice that you should NOT put Chicken units (e.g., srfi-1, srfi-13
; and many others) in 'needs' or in 'depends'.
;
; Syntax:
;          (needs EXTENSION-ID ...)
;
; This should normally be the raw extension-identifier, the same that
; you would use in a require-extension form. Alternatively, EXTENSION-ID
; may be an arbitrary Scheme expression that is evaluated and should
; return a list of extension-ids. This is intended to test the executing
; system for particular platform- or installation-specific features before
; computing a set of required extensions to be available before the
; installation of the original extension commences.
;
; Example:
;
;          (needs sandbox syntax-case)
`needs...^

; A list of eggs required for TESTING ONLY. (optional)
;
; See the 'Tests' section.
;
; Just like 'needs' and 'depends', 'test-depends' should NOT contain
; Chicken units.
;
; Syntax:
;          (test-depends EXT ...)
;
;
; Example:
;
;          (test-depends test)
`test-depends...^

; The author, optionally with an e-mail address, if desired (required).
`:author:^

; A short description of the extension (required).
`:synopsis:^
`cursor^
XSETm needs...|post
`:needs:^
XSETm END
XSETm test-depends...|post
`:test-depends:^
XSETm END

XPT _feature-id
`feature ID^

XPT _dependency
`EXTENSIONNAME^ `VERSION^

XPT _lib
`LIB^

XPT author
(author "`Your Name Goes Here^")

XPT category
(category `category^)

XPT depends
(test-depends `:_dependency:^` `more...^` `:_dependency:^` `more...^)

XPT files
(files `filename^` `more...^` `filename^` `more...^)

XPT foreign-depends
(foreign-depends `:_lib:^` `more...^` `:_lib:^` `more...^)

XPT hidden
(hidden)

XPT maintainer
(maintainer `name^)

XPT license
(license "`license^")

XPT needs
(needs `egg^` `more...^` `egg^` `more...^)

XPT platform
(platform `:_feature-id:^` `more...^` `:_feature-id:^` `more...^)

XPT synopsis
(synopsis "`A basic description of the purpose of the egg.^"))

XPT test-depends
(test-depends `egg^` `more...^` `egg^` `more...^)
