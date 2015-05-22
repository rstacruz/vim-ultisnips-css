# CSS snippets for UltiSnips.vim
**Style faster.**

My collection of CSS snippets lets you type CSS faster. Just use these on a
Vim+UltiSnips setup and you can type *abbreviations* of declarations to expand
to full CSS like so:

```
db<tab>
m0<tab>
fl<tab>
l5<tab>
```

To become:

``` css
display: block;
margin: 0;
float: left;
left: 5px;
```

Installation
------------

 * [Vim](http://www.vim.org)
 * [UltiSnips](https://github.com/SirVer/ultisnips)
 * [Pathogen](https://github.com/tpope/vim-pathogen) or [Vundle](http://github.com/gmarik/vundle) (optional but recommended)

Add to your .vimrc:

    Bundle 'SirVer/ultisnips'
    Bundle 'rstacruz/vim-ultisnips-css'

Reference
---------

<!-- reference start -->
| Snippet | Description |
| ---- | ---- |
| **cf** | `+clearfix` |
| **@nondesktop** | `@media (max-width: 1200px) /* phone, tablet, laptop */` |
| **@portrait** | `@media (max-width: 480px) /* portrait */` |
| **@phone** | `@media (max-width: 768px) /* phone */` |
| **@mobile** | `@media (max-width: 992px) /* mobile */` |
| **@desktop** | `@media (min-width: 1201px) /* desktop */` |
| **@tablet** | `@media (min-width: 769px) /* tablet, desktop */` |
| **@laptop** | `@media (min-width: 993px) /* laptop */` |
| **an** | `animation: {name 300ms linear infinite}` |
| **bgaf** | `background-attachment: fixed;` |
| **bgal** | `background-attachment: local;` |
| **bgas** | `background-attachment: scroll;` |
| **bga** | `background-attachment: {scroll|fixed|local}` |
| **bgcb** | `background-clip: border-box;` |
| **bgcc** | `background-clip: content-box;` |
| **bgcp** | `background-clip: padding-box;` |
| **bgclip** | `background-clip: {border-box|padding-box|content-box};` |
| **bgc** | `background-color: {transparent}` |
| **bgi** | `background-image: {url()}` |
| **bgp** | `background-position: {x y}` |
| **bgr** | `background-repeat: {no-repeat}` |
| **bgsa** | `background-size: auto;` |
| **bgst** | `background-size: contain;` |
| **bgsc** | `background-size: cover;` |
| **bgcover** | `background-size: cover;` |
| **bgs** | `background-size: {auto}` |
| **bg** | `background: {#fff url(image.png) no-repeat left top fixed}` |
| **bbr** | `border-bottom-left-radius: {!3px}; border-bottom-right-radius: {!3px};` |
| **bblr** | `border-bottom-left-radius: {3px}` |
| **bbrr** | `border-bottom-right-radius: {3px}` |
| **bb#** | `border-bottom: {#};` |
| **bb** | `border-bottom: {solid 1px #333}` |
| **bcc** | `border-collapse: collapse;` |
| **bl#** | `border-left: {#};` |
| **bl** | `border-left: {solid 1px #333}` |
| **brad#** | `border-radius: {#};` |
| **brad** | `border-radius: {3}` |
| **br#** | `border-right: {#};` |
| **br** | `border-right: {solid 1px #333}` |
| **blr** | `border-top-left-radius: {!3px}; border-bottom-left-radius: {!3px};` |
| **btr** | `border-top-left-radius: {!3px}; border-top-right-radius: {!3px};` |
| **btlr** | `border-top-left-radius: {3px}` |
| **brr** | `border-top-right-radius: {!3px}; border-bottom-right-radius: {!3px};` |
| **btrr** | `border-top-right-radius: {3px}` |
| **bt#** | `border-top: {#};` |
| **bt** | `border-top: {solid 1px #333}` |
| **b#** | `bottom: {#};` |
| **b** | `bottom: {0}` |
| **bs** | `box-shadow: {x y blur spead color}` |
| **bsb** | `box-sizing: border-box;` |
| **bsp** | `box-sizing: padding-box;` |
| **cb** | `clear: both;` |
| **cl** | `clear: left;` |
| **cr** | `clear: right;` |
| **cf** | `clearfix()` |
| **co** | `color: {#333}` |
| **cud** | `cursor: default;` |
| **cd** | `cursor: default;` |
| **cuew** | `cursor: ew-resize;` |
| **cuna** | `cursor: not-allowed;` |
| **cuns** | `cursor: ns-resize;` |
| **cp** | `cursor: pointer;` |
| **cup** | `cursor: pointer;` |
| **ct** | `cursor: text;` |
| **cut** | `cursor: text;` |
| **cu** | `cursor: {default|pointer|text}` |
| **db** | `display: block;` |
| **dib** | `display: inline-block;` |
| **di** | `display: inline;` |
| **dn** | `display: none;` |
| **dtc** | `display: table-cell;` |
| **dtr** | `display: table-row;` |
| **dt** | `display: table;` |
| **d** | `display: {none|inline|block}` |
| **fl** | `float: left;` |
| **fr** | `float: right;` |
| **ff** | `font-family: {sans-serif}` |
| **fs** | `font-size: {1em}` |
| **italic** | `font-style: italic;` |
| **fi** | `font-style: italic;` |
| **fsi** | `font-style: italic;` |
| **fsn** | `font-style: normal;` |
| **fw1** | `font-weight: 100;` |
| **f1** | `font-weight: 100;` |
| **fw3** | `font-weight: 300;` |
| **f3** | `font-weight: 300;` |
| **fw4** | `font-weight: 400;` |
| **f4** | `font-weight: 400;` |
| **fw5** | `font-weight: 500;` |
| **f5** | `font-weight: 500;` |
| **fw7** | `font-weight: 700;` |
| **f7** | `font-weight: 700;` |
| **fw9** | `font-weight: 900;` |
| **f9** | `font-weight: 900;` |
| **bold** | `font-weight: bold;` |
| **fb** | `font-weight: bold;` |
| **fwb** | `font-weight: bold;` |
| **fwn** | `font-weight: normal;` |
| **fn** | `font-weight: normal;` |
| **f** | `font: {italic bold 1em/1.5em serif}` |
| **font** | `font: {italic bold 1em/1.5em serif}` |
| **h100** | `height: 100%;` |
| **h#** | `height: {#};` |
| **hlh** | `height: {0px}; line-height: {1.5};` |
| **h** | `height: {0}` |
| **l#** | `left: {#};` |
| **l** | `left: {0}` |
| **lb** | `left: {0}; bottom: {0};` |
| **lt** | `left: {0}; top: {0};` |
| **ls** | `letter-spacing: {0}` |
| **lh** | `line-height: {1.5}` |
| **mb#** | `margin-bottom: {#};` |
| **mb** | `margin-bottom: {0}` |
| **ml#** | `margin-left: {#};` |
| **ml** | `margin-left: {0}` |
| **mr#** | `margin-right: {#};` |
| **mr** | `margin-right: {0}` |
| **mt#** | `margin-top: {#};` |
| **mt** | `margin-top: {0}` |
| **m0a** | `margin: 0 auto;` |
| **moa** | `margin: 0 auto;` |
| **mopo** | `margin: 0; padding: 0;` |
| **m0p0** | `margin: 0; padding: 0;` |
| **m#** | `margin: {#};` |
| **m** | `margin: {0}` |
| **mah** | `max-height: {none}` |
| **maw** | `max-width: {none}` |
| **mh** | `min-height: {100%}` |
| **mw** | `min-width: {100%}` |
| **nr** | `no-repeat` |
| **op** | `opacity: {0}` |
| **oxa** | `overflow-x: auto;` |
| **oxh** | `overflow-x: hidden;` |
| **oxs** | `overflow-x: scroll;` |
| **oya** | `overflow-y: auto;` |
| **oyh** | `overflow-y: hidden;` |
| **oys** | `overflow-y: scroll;` |
| **oa** | `overflow: auto;` |
| **oh** | `overflow: hidden;` |
| **os** | `overflow: scroll;` |
| **o** | `overflow: {hidden|auto|scroll}` |
| **pb#** | `padding-bottom: {#};` |
| **pb** | `padding-bottom: {0}` |
| **pl#** | `padding-left: {#};` |
| **pl** | `padding-left: {0}` |
| **pr#** | `padding-right: {#};` |
| **pr** | `padding-right: {0}` |
| **pt#** | `padding-top: {#};` |
| **pt** | `padding-top: {0}` |
| **p#** | `padding: {#};` |
| **p** | `padding: {0}` |
| **poa** | `position: absolute;` |
| **pof** | `position: fixed;` |
| **por** | `position: relative;` |
| **pos** | `position: static;` |
| **rx** | `repeat-x` |
| **ry** | `repeat-y` |
| **rb** | `rgba(black, {0.2})` |
| **rw** | `rgba(white, {0.2})` |
| **ra** | `rgba({0, 0, 0}, {0.5})` |
| **r#** | `right: {#};` |
| **r** | `right: {0}` |
| **rb** | `right: {0}; bottom: {0};` |
| **rt** | `right: {0}; top: {0};` |
| **tla** | `table-layout: auto;` |
| **tlf** | `table-layout: fixed;` |
| **tl** | `table-layout: {fixed|auto}` |
| **tac** | `text-align: center;` |
| **taj** | `text-align: justify;` |
| **tal** | `text-align: left;` |
| **tar** | `text-align: right;` |
| **ta** | `text-align: {left|right|center|justify}` |
| **tdlt** | `text-decoration: line-through;` |
| **tdn** | `text-decoration: none;` |
| **tdu** | `text-decoration: underline;` |
| **td** | `text-decoration: {none|underline|strikethrough}` |
| **ti** | `text-indent: {0}` |
| **ts** | `text-shadow: {0 1px 0 #333}` |
| **ttc** | `text-transform: capitalize;` |
| **ttl** | `text-transform: lowercase;` |
| **ttu** | `text-transform: uppercase;` |
| **tt** | `text-transform: {capitalize|uppercase|lowercase}` |
| **t#** | `top: {#};` |
| **t** | `top: {0}` |
| **tf** | `transform: {scale(1.0)}` |
| **tst** | `transition: {all 300ms ease}` |
| **usa** | `user-select: all;` |
| **usn** | `user-select: none;` |
| **ust** | `user-select: text;` |
| **us** | `user-select: {none|text|toggle|element|elements|all}` |
| **vabl** | `vertical-align: baseline;` |
| **vab** | `vertical-align: bottom;` |
| **vam** | `vertical-align: middle;` |
| **vat** | `vertical-align: top;` |
| **va** | `vertical-align: {top|bottom|baseline|middle}` |
| **vc** | `visibility: collapse;` |
| **vh** | `visibility: hidden;` |
| **vv** | `visibility: visible;` |
| **v** | `visibility: {visible|hidden|collapse}` |
| **w100** | `width: 100%;` |
| **wa** | `width: auto;` |
| **w#** | `width: {#};` |
| **w** | `width: {0}` |
| **wh** | `width: {0}; height: {0};` |
| **zi** | `z-index: {1}` |
<!-- reference end -->

Contributing
------------

Just edit the YML file, don't edit the snippet files themselves.

Acknowledgements
----------------

© 2012, Rico Sta. Cruz. Released under the [MIT License](http://www.opensource.org/licenses/mit-license.php).

 * [My website](http://ricostacruz.com) (ricostacruz.com)
 * [Github](http://github.com/rstacruz) (@rstacruz)
 * [Twitter](http://twitter.com/rstacruz) (@rstacruz)
