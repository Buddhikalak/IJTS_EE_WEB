<%-- 
    Document   : foot
    Created on : Jan 28, 2015, 9:25:17 PM
    Author     : Buddhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
              
<div class="mb_share">
    <div class="button facebook slide_x">
        <div class="icon"></div>
        <div class="slide">
            <span>
                facebook
            </span>
        </div>
        <div class="native_button">
          <div>
            Content here    
          </div>
      </div>
    </div>
    <div class="button twitter slide_y">
        <div class="icon"></div>
        <div class="slide">
            <span>
                twitter
            </span>
        </div>
        <div class="native_button">
          <div>Content here        
          </div>
      </div>
    </div>
  <div class="button youtube slide_nx">
        <div class="icon"></div>
        <div class="slide">
            <span>
                youtube
            </span>
        </div>
               <div class="native_button">
         <div>Content here        
          </div>
      </div>
    </div>
  <div class="button gplus slide_ny">
        <div class="icon"></div>
        <div class="slide">
            <span>
                google
            </span>
        </div>
                <div class="native_button">
<div>Content here        
          </div>
      </div>
    </div>
 
</div>
                
            </div>
        
        <style>
                
.separator {
  width:300px;
  border-bottom:1px solid rgb(224, 224, 224);
  margin:0 auto 50px;
}
pre.prettyprint {
  width:656px;
  height:200px;
  margin:25px auto 50px;
  overflow-y:scroll;
}
pre.lang-html.over span {
  opacity:0.5;  
}
pre.lang-html.over span.tutorial, pre.lang-html.over span.tutorial span {
  opacity:1;  
}
.info {
  margin:50px auto 90px;
  width:600px;
  font-size:12px;
}
.info li {
  margin:0 0 10px;
}
.info li span {
  font-family:Menlo, 'Bitstream Vera Sans Mono', 'DejaVu Sans Mono', Monaco, Consolas, monospace;
  display:inline-block;
  padding:5px 10px;
  background:#1d1f21;
  color:#fff;
}
.mb_share {
  width:656px !important;
  overflow:hidden;
  margin:50px auto;
}
.mb_share .button .native_button div {
  font-size:11px;
  color:rgb(124, 124, 124);
}
/*=======================*/

/*=== MB share buttons ===*/
.mb_share .button {
  background:#DCE0E0;
  position:relative;
  float:left;
  margin:0 7px 14px;
  width:150px;
  height:40px; 
  overflow:hidden;
  -webkit-border-radius:3px;
  -moz-border-radius:3px;
  border-radius:3px;
}
.mb_share .button .icon {
  float:left;
  z-index:200;
  position:relative;
  width:40px;
  height:40px;
  -webkit-border-radius:3px 0px 0px 3px;
  -moz-border-radius:3px 0px 0px 3px;
  border-radius:3px 0px 0px 3px;
  background-repeat:no-repeat;
  background-image: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAxNy4wLjAsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+DQo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB3aWR0aD0iMTIwcHgiIGhlaWdodD0iMTIwcHgiIHZpZXdCb3g9IjAgMCAxMjAgMTIwIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAxMjAgMTIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxwYXRoIGlkPSJGYWNlYm9va18zXyIgZmlsbD0iI0ZGRkZGRiIgZD0iTTU3Ljg5NiwxNC42NmMwLDAuNDMyLDAsMi4zNTksMCwyLjM1OWgtMS43Mjl2Mi44ODdoMS43Mjl2OC41NzRoMy41NTZ2LTguNTc0aDIuMzg0DQoJYzAsMCwwLjIyMy0xLjM4NSwwLjMzMS0yLjg5OGMtMC4zMTIsMC0yLjcwMSwwLTIuNzAxLDBzMC0xLjY3OCwwLTEuOTczczAuMzg4LTAuNjkxLDAuNzcxLTAuNjkxczEuMTg4LDAsMS45MzYsMA0KCWMwLTAuMzkzLDAtMS43NSwwLTMuMDA0Yy0wLjk5NywwLTIuMTMxLDAtMi42MzEsMEM1Ny44MSwxMS4zNCw1Ny44OTYsMTQuMjI2LDU3Ljg5NiwxNC42NnoiLz4NCjxwYXRoIGlkPSJMaW5rZWRJbl8zXyIgZmlsbD0iI0ZGRkZGRiIgZD0iTTY3LjcxMiw2MS45OHY1LjYwOUg2NC40NnYtNS4yMzRjMC0xLjMxMy0wLjQ3Mi0yLjIxMS0xLjY0Ny0yLjIxMQ0KCWMtMC44OTksMC0xLjQzNSwwLjYwNC0xLjY3LDEuMTg4Yy0wLjA4NiwwLjIwOS0wLjEwNywwLjUtMC4xMDcsMC43OTN2NS40NjRINTcuNzhjMCwwLDAuMDQ1LTguODY1LDAtOS43ODNoMy4yNTZ2MS4zODgNCgljLTAuMDA4LDAuMDEyLTAuMDE2LDAuMDIxLTAuMDIxLDAuMDNoMC4wMjF2LTAuMDNjMC40MzItMC42NjYsMS4yMDMtMS42MTcsMi45MzEtMS42MTdDNjYuMTA3LDU3LjU3NSw2Ny43MTIsNTguOTc1LDY3LjcxMiw2MS45OHoNCgkgTTU0LjM3NSw1My4wOWMtMS4xMTMsMC0xLjg0MywwLjcyOS0xLjg0MywxLjY4OGMwLDAuOTQxLDAuNzA4LDEuNjkzLDEuNzk5LDEuNjkzaDAuMDIyYzEuMTM1LDAsMS44NDEtMC43NTIsMS44NDEtMS42OTMNCglDNTYuMTczLDUzLjgyMSw1NS40ODgsNTMuMDksNTQuMzc1LDUzLjA5eiBNNTIuNzI1LDY3LjU5aDMuMjU0di05Ljc4M2gtMy4yNTRWNjcuNTl6Ii8+DQo8cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMjguNzEsMTUuMTdjLTAuNjIyLDAuMjc2LTEuMjkxLDAuNDYyLTEuOTkyLDAuNTQ2YzAuNzE2LTAuNDMsMS4yNjYtMS4xMDksMS41MjUtMS45Mg0KCWMtMC42NywwLjM5OC0xLjQxMywwLjY4Ny0yLjIwMywwLjg0MmMtMC42MzItMC42NzQtMS41MzUtMS4wOTYtMi41MzItMS4wOTZjLTEuOTE2LDAtMy40NjksMS41NTMtMy40NjksMy40NjkNCgljMCwwLjI3MiwwLjAzMSwwLjUzNywwLjA5LDAuNzkxYy0yLjg4NC0wLjE0NS01LjQzOS0xLjUyNi03LjE1MS0zLjYyNWMtMC4yOTksMC41MTItMC40NywxLjEwOC0wLjQ3LDEuNzQ1DQoJYzAsMS4yMDQsMC42MTIsMi4yNjUsMS41NDMsMi44ODdjLTAuNTY5LTAuMDE5LTEuMTA0LTAuMTc0LTEuNTcyLTAuNDM0YzAsMC4wMTQsMCwwLjAyOSwwLDAuMDQzYzAsMS42ODEsMS4xOTYsMy4wODMsMi43ODMsMy40MDINCgljLTAuMjkxLDAuMDgtMC41OTcsMC4xMjItMC45MTQsMC4xMjJjLTAuMjI0LDAtMC40NDEtMC4wMjItMC42NTMtMC4wNjJjMC40NDEsMS4zNzgsMS43MjMsMi4zODEsMy4yNDEsMi40MDkNCgljLTEuMTg3LDAuOTMxLTIuNjgzLDEuNDg1LTQuMzA5LDEuNDg1Yy0wLjI4LDAtMC41NTYtMC4wMTYtMC44MjgtMC4wNDhjMS41MzUsMC45ODQsMy4zNTksMS41NTgsNS4zMTgsMS41NTgNCgljNi4zODEsMCw5Ljg3MS01LjI4Niw5Ljg3MS05Ljg3MWMwLTAuMTUtMC4wMDMtMC4zLTAuMDEtMC40NDhDMjcuNjU3LDE2LjQ3NywyOC4yNDQsMTUuODY2LDI4LjcxLDE1LjE3eiIvPg0KPHBhdGggaWQ9IlR1bWJscl8yXyIgZmlsbD0iI0ZGRkZGRiIgZD0iTTEwMS40MjksNjUuNDYxYy0wLjI3OC0wLjE2NC0wLjUzNi0wLjQ0NS0wLjYzOC0wLjcyYy0wLjEwNC0wLjI3Mi0wLjA5Mi0wLjgyOC0wLjA5Mi0xLjc5Mw0KCXYtNC4yNjRoMy44Nzd2LTIuOTY3aC0zLjg3N3YtMy44NDZoLTIuMzgzYy0wLjEwNywwLjg1NS0wLjMwNCwxLjU2My0wLjU4OSwyLjExOWMtMC4yODQsMC41NTUtMC42NTksMS4wMjktMS4xMzEsMS40MjgNCgljLTAuNDY5LDAuMzk2LTEuMjMxLDAuNzAxLTEuODkyLDAuOTF2Mi4zNTRoMi4yNzd2NS44M2MwLDAuNzYzLDAuMDgsMS4zNDIsMC4yNCwxLjc0MmMwLjE2MiwwLjM5NywwLjQ0OSwwLjc3NiwwLjg2NiwxLjEzNQ0KCWMwLjQxNSwwLjM1MywwLjkxOCwwLjYyNywxLjUwNywwLjgyYzAuNTg5LDAuMTg4LDEuMDQxLDAuMjg0LDEuODA5LDAuMjg0YzAuNjc2LDAsMS4zMDMtMC4wNjcsMS44ODUtMC4xOTgNCgljMC41OC0wLjEzOCwxLjIyOS0wLjM3MywxLjk0NS0wLjcwNXYtMi42MjFjLTAuODQsMC41NDctMS42ODUsMC44MTktMi41MzMsMC44MTlDMTAyLjIyNCw2NS43OSwxMDEuODAxLDY1LjY4MiwxMDEuNDI5LDY1LjQ2MXoiLz4NCjxwYXRoIGlkPSJZb3VUdWJlXzJfIiBmaWxsPSIjRkZGRkZGIiBkPSJNMTA1Ljk0MywyNC40MDRoLTEuMTAxbDAuMDA2LTAuNjM5YzAtMC4yODQsMC4yMzEtMC41MTYsMC41MTktMC41MTZoMC4wNw0KCWMwLjI4NCwwLDAuNTIsMC4yMzIsMC41MiwwLjUxNkwxMDUuOTQzLDI0LjQwNHogTTEwMS44MiwyMy4wMzVjLTAuMjc4LDAtMC41MDgsMC4xODctMC41MDgsMC40MTd2My4xMDYNCgljMCwwLjIyOSwwLjIyOSwwLjQxNiwwLjUwOCwwLjQxNmMwLjI3OSwwLDAuNTA4LTAuMTg4LDAuNTA4LTAuNDE2di0zLjEwNkMxMDIuMzI2LDIzLjIyMiwxMDIuMSwyMy4wMzUsMTAxLjgyLDIzLjAzNXoNCgkgTTEwOC41MTYsMjEuMjk4djUuOTA3YzAsMS40MTgtMS4yMjksMi41NzctMi43MywyLjU3N0g5NC41NTNjLTEuNTAzLDAtMi43My0xLjE1OS0yLjczLTIuNTc3di01LjkwNw0KCWMwLTEuNDE3LDEuMjI5LTIuNTc4LDIuNzMtMi41NzhoMTEuMjMyQzEwNy4yODcsMTguNzIsMTA4LjUxNiwxOS44OCwxMDguNTE2LDIxLjI5OHogTTk1LjMwMiwyNy44NDd2LTYuMjI0bDEuMzk0LDAuMDAxdi0wLjkyMg0KCWwtMy43MTMtMC4wMDV2MC45MDZsMS4xNTksMC4wMDN2Ni4yNDFIOTUuMzAyeiBNOTkuNDc3LDIyLjU1MWgtMS4xNnYzLjMyNGMwLDAuNDgsMC4wMjcsMC43MjEtMC4wMDIsMC44MDYNCgljLTAuMDk2LDAuMjU4LTAuNTIsMC41MzEtMC42ODUsMC4wMjhjLTAuMDI4LTAuMDg5LTAuMDA0LTAuMzU0LTAuMDA1LTAuODEybC0wLjAwNC0zLjM0NmgtMS4xNTRsMC4wMDMsMy4yOTMNCgljMC4wMDEsMC41MDUtMC4wMTMsMC44ODIsMC4wMDQsMS4wNTNjMC4wMjgsMC4zMDIsMC4wMTksMC42NTUsMC4zLDAuODU1YzAuNTIxLDAuMzc2LDEuNTIyLTAuMDU3LDEuNzcyLTAuNTk0bC0wLjAwMSwwLjY4Nw0KCWwwLjkzMiwwLjAwMUM5OS40NzcsMjcuODQ2LDk5LjQ3NywyMi41NTEsOTkuNDc3LDIyLjU1MXogTTEwMy4xOTEsMjYuMzU1bC0wLjAwNC0yLjc2NmMtMC4wMDEtMS4wNTUtMC43ODktMS42ODYtMS44NjEtMC44MzMNCglsMC4wMDYtMi4wNTdsLTEuMTU5LDAuMDAxbC0wLjAwNyw3LjFsMC45NTEtMC4wMTVsMC4wODgtMC40NDFDMTAyLjQyNSwyOC40NjMsMTAzLjE5MywyNy42OTcsMTAzLjE5MSwyNi4zNTV6IE0xMDYuODIyLDI1Ljk4OQ0KCWwtMC44NjksMC4wMDRjLTAuMDAyLDAuMDM1LTAuMDAyLDAuMDc1LTAuMDA0LDAuMTE5djAuNDg1YzAsMC4yNTktMC4yMTUsMC40NzEtMC40NzUsMC40NzFoLTAuMTcxDQoJYy0wLjI2MiwwLTAuNDc2LTAuMjEyLTAuNDc2LTAuNDcxdi0wLjA1NHYtMC41MzVWMjUuMzJoMS45OTJ2LTAuNzUxYzAtMC41NDgtMC4wMTUtMS4wOTYtMC4wNi0xLjQxDQoJYy0wLjE0Mi0wLjk5MS0xLjUzNC0xLjE0OS0yLjIzNy0wLjY0MWMtMC4yMjEsMC4xNTgtMC4zODksMC4zNy0wLjQ4NiwwLjY1NmMtMC4xLDAuMjg0LTAuMTQ3LDAuNjc1LTAuMTQ3LDEuMTY5djEuNjQ5DQoJQzEwMy44OSwyOC43MzYsMTA3LjIyLDI4LjM0NywxMDYuODIyLDI1Ljk4OXogTTEwMi4zNTcsMTcuMDM1YzAuMDYyLDAuMTQ2LDAuMTUzLDAuMjY0LDAuMjgsMC4zNTINCgljMC4xMjMsMC4wODgsMC4yODMsMC4xMzIsMC40NzYsMC4xMzJjMC4xNjYsMCwwLjMxMy0wLjA0NSwwLjQ0My0wLjEzOWMwLjEyOS0wLjA5MiwwLjIzNy0wLjIzMSwwLjMyNi0wLjQxNmwtMC4wMjEsMC40NTVoMS4yOTMNCgl2LTUuNTAzaC0xLjAxOXY0LjI4M2MwLDAuMjMyLTAuMTkyLDAuNDIyLTAuNDI1LDAuNDIycy0wLjQyNC0wLjE5LTAuNDI0LTAuNDIydi00LjI4M2gtMS4wNjN2My43MTENCgljMCwwLjQ3MywwLjAwOSwwLjc4OCwwLjAyMiwwLjk0OEMxMDIuMjYyLDE2LjczNSwxMDIuMjk4LDE2Ljg4OCwxMDIuMzU3LDE3LjAzNXogTTk4LjQzOCwxMy45MjdjMC0wLjUyOCwwLjA0NS0wLjk0LDAuMTMxLTEuMjM3DQoJYzAuMDg4LTAuMjk3LDAuMjQ2LTAuNTM1LDAuNDc3LTAuNzE1YzAuMjI5LTAuMTgsMC41MjEtMC4yNzEsMC44NzctMC4yNzFjMC4yOTksMCwwLjU1NiwwLjA1OSwwLjc3MSwwLjE3NA0KCWMwLjIxNSwwLjExNiwwLjM4MSwwLjI2NiwwLjQ5NiwwLjQ1MmMwLjExNiwwLjE4NiwwLjE5NiwwLjM3NywwLjIzOCwwLjU3M2MwLjA0NCwwLjE5OCwwLjA2NCwwLjQ5NywwLjA2NCwwLjkwMXYxLjM5Mg0KCWMwLDAuNTEtMC4wMjEsMC44ODYtMC4wNiwxLjEyNGMtMC4wNCwwLjIzOS0wLjEyNSwwLjQ2LTAuMjU2LDAuNjY5Yy0wLjEyOSwwLjIwNi0wLjI5NiwwLjM1OS0wLjQ5OCwwLjQ1Nw0KCWMtMC4yMDQsMC4xLTAuNDM4LDAuMTQ4LTAuNzAyLDAuMTQ4Yy0wLjI5NCwwLTAuNTQzLTAuMDQxLTAuNzQ3LTAuMTI2Yy0wLjIwNi0wLjA4NC0wLjM2NC0wLjIxMi0wLjQ3OC0wLjM4MQ0KCWMtMC4xMTQtMC4xNjktMC4xOTQtMC4zNzYtMC4yNDMtMC42MTdzLTAuMDcxLTAuNjAzLTAuMDcxLTEuMDg1TDk4LjQzOCwxMy45MjdMOTguNDM4LDEzLjkyN3ogTTk5LjQ0OSwxNi4xMTMNCgljMCwwLjMxMiwwLjIzMiwwLjU2NiwwLjUxNSwwLjU2NnMwLjUxNC0wLjI1NCwwLjUxNC0wLjU2NnYtMi45MjljMC0wLjMxMi0wLjIyOS0wLjU2NS0wLjUxNC0wLjU2NQ0KCWMtMC4yODEsMC0wLjUxNSwwLjI1NC0wLjUxNSwwLjU2NVYxNi4xMTN6IE05NS44NjksMTcuNTkzaDEuMjIxbDAuMDAxLTQuMjIxbDEuNDQyLTMuNjE1aC0xLjMzNmwtMC43NjcsMi42ODZsLTAuNzc4LTIuNjkyaC0xLjMyDQoJbDEuNTM1LDMuNjI0TDk1Ljg2OSwxNy41OTN6Ii8+DQo8Zz4NCgk8Zz4NCgkJPHBvbHlnb24gZmlsbD0iI0ZGRkZGRiIgcG9pbnRzPSIyOC4zNTEsNTkuMzkxIDI1Ljg5LDU5LjM5MSAyNS44OSw1Ni45MjkgMjQuNjU4LDU2LjkyOSAyNC42NTgsNTkuMzkxIDIyLjE5Nyw1OS4zOTEgDQoJCQkyMi4xOTcsNjAuNjIgMjQuNjU4LDYwLjYyIDI0LjY1OCw2My4wODEgMjUuODksNjMuMDgxIDI1Ljg5LDYwLjYyIDI4LjM1MSw2MC42MiAJCSIvPg0KCTwvZz4NCgk8Zz4NCgkJPGc+DQoJCQk8cGF0aCBmaWxsPSIjRkZGRkZGIiBkPSJNMTkuNjYxLDYyLjI3OGMtMC40OTUtMC4zNzEtMS41NzEtMS4xMzItMS41NzEtMS42NDRjMC0wLjU5OSwwLjE3Mi0wLjg5NCwxLjA3Mi0xLjU5Nw0KCQkJCWMwLjkyMy0wLjcyMywxLjU3Ni0xLjY3MiwxLjU3Ni0yLjg1M2MwLTEuMjg2LTAuNTI1LTIuNDUtMS41MTUtMy4wMTloMS40MDFsMS4xOTItMS4yNWMwLDAtMy45NCwwLTUuMzM2LDANCgkJCQljLTIuNzA5LDAtNC45NjQsMS45OTYtNC45NjQsNC4xOTNjMCwyLjI0MywxLjQ4Miw0LjAzMSw0LjAyOCw0LjAzMWMwLjE3OCwwLDAuMzQ5LTAuMDA5LDAuNTE4LTAuMDIxDQoJCQkJYy0wLjE2NSwwLjMxNi0wLjI4MywwLjY3LTAuMjgzLDEuMDM5YzAsMC42MjUsMC4zNDQsMC45NzksMC43NjgsMS4zOTRjLTAuMzIxLDAtMC42MzEsMC4wMDgtMC45NjcsMC4wMDgNCgkJCQljLTMuMTAyLDAtNS4yNzEsMi4xMzQtNS4yNzEsNC4xODNjMCwyLjAxNiwyLjYxNiwzLjI3Niw1LjcxNiwzLjI3NmMzLjUzNSwwLDUuNzA4LTIuMDA2LDUuNzA4LTQuMDIxDQoJCQkJQzIxLjczNCw2NC4zODMsMjEuMzg0LDYzLjU2OSwxOS42NjEsNjIuMjc4eiBNMTYuNTc4LDU5LjMyN2MtMS40MzgtMC4wNDMtMi44MDYtMS4zNjItMy4wNTUtMy4yNQ0KCQkJCWMtMC4yNDctMS44OSwwLjcxNy0zLjMzNCwyLjE1NC0zLjI5M2MxLjQzOCwwLjA0NSwyLjY2OSwxLjU5NSwyLjkxNywzLjQ4MUMxOC44NDMsNTguMTU1LDE4LjAxNSw1OS4zNywxNi41NzgsNTkuMzI3eg0KCQkJCSBNMTYuMDE1LDY5LjEzYy0yLjE0NCwwLTMuNjktMS4zNTYtMy42OS0yLjk4NWMwLTEuNTk3LDEuODE1LTIuOTc1LDMuOTU4LTIuOTVjMC41LDAuMDA0LDAuOTY2LDAuMDg2LDEuMzg5LDAuMjIzDQoJCQkJYzEuMTY0LDAuODA5LDIuMTAyLDEuMzEzLDIuMzM4LDIuMjM2YzAuMDQ0LDAuMTg2LDAuMDY3LDAuMzc5LDAuMDY3LDAuNTc0QzIwLjA3Niw2Ny44NTgsMTkuMDI3LDY5LjEzLDE2LjAxNSw2OS4xM3oiLz4NCgkJPC9nPg0KCTwvZz4NCjwvZz4NCjxwYXRoIGlkPSJHaXRodWJfX3gyOF9hbHRfeDI5X18zXyIgZmlsbD0iI0ZGRkZGRiIgZD0iTTI1LjQ4Nyw5MS4zNGMwLjMxMSwwLjcwMywwLjUxMiwxLjg3MywwLjIxMiwyLjcyOQ0KCWMxLjIyNSwxLjA0NywxLjY0NiwzLjU5MiwxLjA1NSw1LjY3YzEuNzQ3LDAuMTMzLDMuODI3LTAuMDYzLDUuMTcxLDAuNDcxYy0xLjI1Ni0wLjE1OS0yLjk3MS0wLjQ3Ny00LjU5LTAuMzY2DQoJYy0wLjMwOCwwLjAyMS0wLjc2Mi0wLjAxMS0wLjczOSwwLjQyYzEuODc0LDAuMTQ2LDMuNzM3LDAuMzEsNS4yNzYsMC43ODljLTEuNTI2LTAuMjUtMy4zNzktMC42MjktNS4yNzYtMC42ODUNCgljLTAuNzg0LDEuNTQ3LTIuMzYxLDIuMzA4LTQuNTM3LDIuNDY4YzAuMjMzLDAuNTEsMC42ODIsMC43MDIsMC43OTIsMS41MjFjMC4xNjIsMS4yMjUtMC4yNTYsMy4wMTYsMC4xNTYsMy44MzINCgljMC4xOTksMC4zOTEsMC41MjIsMC40LDAuNzQsMC43MzZjLTAuNTM0LDAuNjMxLTEuODU1LTAuMDcyLTIuMDA3LTAuNzM2Yy0wLjI1Ny0xLjEzOSwwLjM5My0yLjkwMi0wLjMxNS0zLjY3NA0KCWMwLjA1LDEuMjQyLTAuMjkzLDIuOTg0LDAuMDUzLDQuMDk0YzAuMTM3LDAuNDM3LDAuNTMsMC42MDUsMC40MjMsMC45OThjLTIuNDc5LDAuMjUyLTEuNDQzLTMuMjA3LTEuODUtNS4yNQ0KCWMtMC4zNzMsMC4wMjctMC4yMSwwLjU2MS0wLjIxMSwwLjc4OWMtMC4wMSwxLjk5NCwwLjQwOCw0LjcyOS0xLjc0MSw0LjQ2MWMtMC4wNjMtMC40MTgsMC4yODgtMC41NjIsMC40MjEtMC45NDMNCgljMC4zOTUtMS4xMjMtMC4wNzItMi43OTUsMC4xMDctNC4xNDdjLTAuODIsMC42MTksMC4wODYsMi43NzYtMC40MjIsMy44ODZjLTAuMjkzLDAuNjM3LTEuMjM4LDAuOTEzLTEuOTU0LDAuNjI5DQoJYzAuMDkzLTAuNDc2LDAuNTg1LTAuMzk2LDAuNzkyLTAuODQxYzAuMjkxLTAuNjE0LDAuMDAyLTEuNTA0LDAuMTA1LTIuNDEzYy0xLjUxOSwwLjMwMy0yLjY5Ny0wLjA0NC0zLjI3My0wLjk5OA0KCWMtMC4yNTgtMC40MjktMC4zMjItMC45MzMtMC42MzMtMS4zMTJjLTAuMzExLTAuMzgxLTAuODA3LTAuNDMzLTAuOTUtMC45NDVjMS44OC0wLjQ1MiwxLjk1MywxLjkzNywzLjY0MywxLjk5NA0KCWMwLjUxOCwwLjAyMSwwLjc4Ni0wLjE0NywxLjI2Ny0wLjI2MmMwLjEzNS0wLjYwNCwwLjQyMi0xLjA1MiwwLjg0NC0xLjM2NWMtMi4xMDItMC4yODctMy44MzgtMC45NC00LjY0NS0yLjUyMQ0KCWMtMS45MTIsMC4wOTUtMy42NiwwLjM1MS01LjI3OSwwLjczNmMxLjQ2OS0wLjUzNSwzLjI4My0wLjcyNyw1LjIyNy0wLjc4OWMtMC4xMTUtMC42ODgtMS4xMTktMC40OTgtMS43NDItMC40NzMNCgljLTEuMTU4LDAuMDUxLTIuNjE3LDAuMTk1LTMuNTM3LDAuMzY3YzEuMzM2LTAuNDc1LDMuMjA3LTAuNDE2LDUuMDE2LTAuNDE4Yy0wLjU1NC0xLjczNC0wLjM2MS00LjQ4NiwwLjg0NS01LjUxMg0KCWMtMC4zNDMtMC44NjEtMC4yMzUtMi4yNzEsMC4yMTEtMi45MzljMS4zNDcsMC4wNjEsMi4xNjMsMC42NDYsMy4wMDksMS4yMDdjMS4wNDktMC4yOTksMi4xNTItMC40NDcsMy41OS0wLjM2Nw0KCWMwLjYwNSwwLjAzMywxLjIzMywwLjMwNSwxLjY4OCwwLjI2MmMwLjQ0Ni0wLjA0MywwLjkzOC0wLjU0MywxLjM3Mi0wLjczNEMyNC4zNjQsOTEuNDU3LDI0Ljg0Miw5MS4zNjMsMjUuNDg3LDkxLjM0eiIvPg0KPGc+DQoJPHBhdGggZmlsbD0iI0ZGRkZGRiIgZD0iTTU5LjE3LDkxLjkzN2MtNC40NjksMC04LjA5NCwzLjYyNC04LjA5NCw4LjA5M2MwLDMuMzEzLDEuOTk0LDYuMTYyLDQuODQ1LDcuNDE0DQoJCWMtMC4wMjItMC41NjQtMC4wMDUtMS4yNDQsMC4xNDEtMS44NTljMC4xNTYtMC42NTYsMS4wNDEtNC40MDgsMS4wNDEtNC40MDhzLTAuMjU4LTAuNTE4LTAuMjU4LTEuMjgxDQoJCWMwLTEuMTk5LDAuNjk0LTIuMDk2LDEuNTYyLTIuMDk2YzAuNzM2LDAsMS4wOTIsMC41NTMsMS4wOTIsMS4yMTVjMCwwLjc0MS0wLjQ3MywxLjg0OC0wLjcxNSwyLjg3Mw0KCQljLTAuMjAzLDAuODU3LDAuNDMxLDEuNTU5LDEuMjc3LDEuNTU5YzEuNTMzLDAsMi41NjYtMS45NywyLjU2Ni00LjMwM2MwLTEuNzczLTEuMTk1LTMuMTAyLTMuMzY4LTMuMTAyDQoJCWMtMi40NTYsMC0zLjk4MywxLjgzLTMuOTgzLDMuODc1YzAsMC43MDUsMC4yMDcsMS4yMDMsMC41MzIsMS41ODdjMC4xNDksMC4xNzgsMC4xNzEsMC4yNDksMC4xMTYsMC40NTINCgkJYy0wLjAzOSwwLjE0OC0wLjEyOCwwLjUwOC0wLjE2NSwwLjY0OWMtMC4wNTQsMC4yMDQtMC4yMiwwLjI3Ny0wLjQwMywwLjIwMmMtMS4xMzItMC40NjEtMS42NTgtMS43LTEuNjU4LTMuMDkzDQoJCWMwLTIuMywxLjkzOS01LjA1Niw1Ljc4NS01LjA1NmMzLjA4OCwwLDUuMTIzLDIuMjM1LDUuMTIzLDQuNjM3YzAsMy4xNzUtMS43NjYsNS41NDctNC4zNjcsNS41NDdjLTAuODczLDAtMS42OTUtMC40NzMtMS45NzktMS4wMQ0KCQljMCwwLTAuNDcxLDEuODYzLTAuNTY4LDIuMjI2Yy0wLjE3MiwwLjYyMy0wLjUwOCwxLjI0OC0wLjgxNCwxLjczM2MwLjcyOSwwLjIxNSwxLjQ5NiwwLjMzMiwyLjI5NCwwLjMzMg0KCQljNC40NywwLDguMDkzLTMuNjI1LDguMDkzLTguMDk0QzY3LjI2Myw5NS41NjEsNjMuNjQsOTEuOTM3LDU5LjE3LDkxLjkzN3oiLz4NCjwvZz4NCjwvc3ZnPg0K);
}
.mb_share .button .native_button {
  width:110px;
  height:40px;
  float:left;
  background:#DCE0E0 !important;
  display:table;
}
.mb_share .button .native_button > div {
  display:table-cell;
  vertical-align:middle;
  text-align:center;
}
.mb_share .button .slide {
  position:absolute;
  right:0;
  top:0;
  z-index:100;
  float:left;
  width:110px;
  height:40px;
  transition:.2s transform linear;
  -webkit-transition:.2s -webkit-transform linear;
  -moz-transition:.2s -moz-transform linear;
}
.mb_share .button .slide span {
  color:#fff;
  display:block;
  cursor:default;
  width:100%;
  text-align:center;
  margin:10px 0;
  padding:2px 0;
  font-size:16px;
  border-left:1px solid rgba(255,255,255,0.35);
}
/* Transitions */
.mb_share .button.slide_x:hover .slide {
  -webkit-transform:translateX(110px);
  -moz-transform:translateX(110px);
  transform:translateX(110px);
}
.mb_share .button.slide_nx:hover .slide {
  -webkit-transform:translateX(-110px);
  -moz-transform:translateX(-110px);
  transform:translateX(-110px);
}
.mb_share .button.slide_y:hover .slide {
  -webkit-transform:translateY(40px);
  -moz-transform:translateY(40px);
  transform:translateY(40px);
}
.mb_share .button.slide_ny:hover .slide {
  -webkit-transform:translateY(-40px);
  -moz-transform:translateY(-40px);
  transform:translateY(-40px);
}
/*========================*/
/*=== Colors ===*/

/* FACEBOOK */
.mb_share .button.facebook .icon {
  background-position:-40px 0;
}
.mb_share .button.facebook > div {
  background-color:#305c99;
}
/* TWITTER */
.mb_share .button.twitter .icon {
  background-position:0 0;
}
.mb_share .button.twitter > div {
  background-color:#00cdff;
}
/* YOUTUBE */
.mb_share .button.youtube .icon {
  background-position:-80px 0;
}
.mb_share .button.youtube > div {
  background-color:#e22b26;
}
/* GOOGLE PLUS */
.mb_share .button.gplus .icon {
  background-position:0 -40px;
}
.mb_share .button.gplus > div {
  background-color:#3f3d3e;
}
/* LINKEDIN */
.mb_share .button.linkedin .icon {
  background-position:-40px -40px;
}
.mb_share .button.linkedin > div {
  background-color:#007bb6;
}
/* TUMBLR */
.mb_share .button.tumblr .icon {
  background-position:-80px -40px;
}
.mb_share .button.tumblr > div {
  background-color:#2c4762;
}
/* GITHUB */
.mb_share .button.github .icon {
  background-position:0 -80px;
}
.mb_share .button.github > div {
  background-color:#42c0fb;
}
/* PINTEREST */
.mb_share .button.pinterest .icon {
  background-position:-40px -80px;
}
.mb_share .button.pinterest > div {
  background-color:#dc0d0a;
}

/*==============*/
            </style>
          
    </body>
</html>
