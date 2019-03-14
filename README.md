<h1>graphplot</h1>
<pre>
rautaplop
github.com/rautaplop
</pre>

<h2>HOW TO USE</h2>
<pre>
graphplot(x,[y1,y2,y3],info);
</pre>

<h2>HOW TO USE STRUCT INFO</h2>
<pre>
info.title        NAME_OF_THE_GRAPH
info.color        COLOR_AND_STYLE
info.xlabel       LABEL_X
info.ylabel       LABEL_Y
info.legend       LEGEND                  JUST IF MORE THAN 1 PLOT
info.sub          SUBPLOT_MATRIX          0 IF NO SUBPLOT
info.print        NAME_OF_FILE_TO_PRINT   0 IF NO PRINT
</pre>

<h2>EXAMPLE</h2>
<pre>
x12 = -10:0.001:10;
y1 = sin(x12);
y2 = cos(x12);

x34 = 1:0.001:2;
y3 = exp(x34);
y4 = -exp(x34);

info.title = 'sin(x) and cos(x)';
info.color = {'-r', '-g'};
info.xlabel = 'x';
info.ylabel = 'y';
info.legend = {'sin(x)', 'cos(x)'};
info.sub = [2,1,1];
info.print = 0;
graphplot(x12,{y1,y2},info);

info.title = 'exp(x) and -exp(x)';
info.color = {'-m', '-c'};
info.xlabel = 'x';
info.ylabel = 'y';
info.legend = {'exp(x)', '-exp(x)'};
info.sub = [2,1,2];
info.print = 'output.png';
graphplot(x34,{y3,y4},info);
</pre>
