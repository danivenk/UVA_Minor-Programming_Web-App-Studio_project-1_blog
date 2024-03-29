# blog

This blog is a changelog blog for a map in simutrans
The _homepage_ (Top) tells something about the map and what the entries will be about, it also shows the 5 newest blog entries
The _posts page_ (すべての投稿) shows all blog entries
The _about page_ (ブログに付いて) tells something about the game and points to some external websites.

Everywhere where you can only see a limited amount of posts (this means except for the posts page) there is a button to go to the posts page, it reads show all (すべてを表示)

_includes:
  * posts_list.html:
     can create a list of the latest posts: the no. of posts, excerpt shown and class can be specified in the inclusion.
     If the no. of posts is less than the amount of posts on the page a button below the posts will show up which reads _show all_ (すべてを表示)
     The buttons on the post card change depending on the excerpt status. If none is shown it reads _read post_ (投稿を読む) and if excerpt is enabled it reads _read further_ (読み続く)
  * time.html:
     creates an time element from a specified timedate, it converts the standard yyyy-mm-dd format to era yy-mm-dd. (where the month and day don't change) Where the standard eras are _Showa_ (昭和), _Heisei_ (平成) and _Reiwa_ (令和). If a custom era start date & era name has been given it will use that instead.
     When the era format it is usually the case that if the year is era year 1, that it is written as era _original year_ (元年) this has been inplemented in time.html.
     The conversion works as follows, first it assigns the start dates of the eras and the date. Then it converts those to UNIX timestamp numbers as ***_test. It also assigns the years of the dates minus 1 (because if the start year of Reiwa is 2019, Reiwa-0 will be in 2018 and the era always starts at 1). Next it checks in which era the date falls and does date_year - era_year and converts as numbers and if the year is 1 it will add the _original year_ (元年) characters.

_layouts:
  * home.html:
     contains the layout for the homepage: title, content, post_list (max:5, excerpt:true, cards fullwidth)
  * page.html:
     contains the layout for a page: title, content
  * post_page.html:
     contains the layout for the post_page: title, content, post_list (max:all, excerpt:true, cards 3 columns on pc and fullwidth mobile)
  * post.html:
     contains the layout for a post: title, date, if available game_date, content, (max:5, excerpt:true, cards sidebar width)
  * skeleton.html:
     contains the layout for the skeleton of the site. It contains: links to the icon, css, bootstrap, navigation bar, title content, footer

_posts:
  * yyyy-mm-dd-Korino-###.markdown:
     contains an changelog post, it has a post layout, title, date, game_date, category of korino and an excerpt-separator
  * all other markdown pages:
     contains a blog post, it has a post layout, title, date and an excerpt-separator

_sass:
   contains the scss file

assets:
  * img:
      contains all images, source: https://i-ogp.pximg.net/c/540x540_70/img-master/img/2011/11/06/03/12/38/22876424_p0_square1200.jpg
  * style:
      contains the scss file such that scss will be converted and also the location where to link from the skeleton to

404.html:
   contains the error message when _page can be found_ (そのページを見つけませんでした), it has a page layout

CNAME:
  link for Custom Domain

index markdown:
   contains the content of the homepage (title: Top, permalink:/)

posts markdown:
   contains the content of the posts list page (title: _all posts_ (すべての投稿), permalink:/posts/)
   
about markdown:
   contains the content of the about (title: _about_ (ブログに付いて), permalink:/about/) WARNING: __the links in this content link to external websites, if you'd like to go back use the back button on the browser__

It is live at: http://proj-1.mprog.hakkajiten.com/

Personal Touch:
  * my personal touch in this application the time include, it takes a date and converts it to the format of the Japanese imperial era.
    This means from YYYY-MM-DD to Era YY-MM-DD (here Era YY is the number of years since the start of the era and the next year begins on 01/01)
    if the date of an era is given and a name of this era it can conver it the same way but with the custom era.