https://github.com/DoersGuild/jQuery.print

```
$("#myElementId").print(/*options*/);
```

|参数	|默认值 |	接收值|	描述|<br>
|- | :-: | :-: |-|<br>
|globalStyles	|true	|Boolean|	是否包含父文档的样式|<br>
|mediaPrint	|false|	Boolean|	是否包含media='print'的链接标签。会被globalStyles选项覆盖|<br>
|stylesheet	|null	|URL-string|	外部样式表的URL地址|<br>
|noPrintSelector|	".no-print"	|任何可用的jQuery选择器	|不想打印的元素的jQuery选择器|<br>
|iframe|	默认true，如果没有iframe选择器被传入会创建一个隐藏的iframe	任何可用的jQuery选择器或Boolean	|是否使用一个iframe来替代打印表单的弹出窗口|<br>
|append/prepend	|null	|Boolean|	是否将用户更新的表单输入框内容作为打印内容（通过迭代每一个表单元素来实现）|<br>