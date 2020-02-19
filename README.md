# blog

This blog is a changelog blog for a map in simutrans
The homepage (Top) tells something about the map and what the entries will be about, it also shows the 5 newest blog entries
The posts page (すべての投稿) shows all blog entries
The about page (ブログに付いて) tells something about the game and points to some external websites.

Everywhere where you can only see a limited amount of posts (this means except for the posts page) there is a button to go to the posts page, it reads show all (すべてを表示)

_includes:
  * posts_list.html:
     can create a list of the latest posts: the no. of posts, excerpt shown and class can be specified in the inclusion
  * time.html:
     creates an time element from a specified timedate, it converts the standard yyyy-mm-dd format to era yy-mm-dd. (where the month and day don't change) Where the standard eras are Showa (昭和), Heisei (平成) and Reiwa (令和). If a custom era start date & era name has been given it will use that instead.
     When the era format it is usually the case that if the year is era year 1, that it is written as era original year (元年) this has been inplemented in time.html.
     The conversion works as follows, first it assigns the start dates of the eras and the date. Then it converts those to UNIX timestamp numbers as ***_test. It also assigns the years of the dates minus 1 (because if the start year of Reiwa is 2019, Reiwa-0 will be in 2018 and the era always starts at 1). Next it checks in which era the date falls and does date_year - era_year and converts as numbers and if the year is 1 it will add the original year (元年) characters.

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
      contains all images
  * style:
      contains the scss file such that scss will be converted and also the location where to link from the skeleton to

404.html:
   contains the error message when page can be found (そのページを見つけませんでした), it has a page layout

CNAME:
  link for Custom Domain

index markdown:
   contains the content of the homepage (title: Top, permalink:/)

posts markdown:
   contains the content of the posts list page (title: all posts (すべての投稿), permalink:/posts/)
   
about markdown:
   contains the content of the about (title: about (ブログに付いて), permalink:/about/)
   WARNING: __the links in this content link to external websites, if you'd like to go back use the back button on the browser__

It is live at: http://proj-1.mprog.hakkajiten.com/