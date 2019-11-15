<!DOCTYPE html>
<html lang="en">
    <head>
        <title>FreeMarkerDemo</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <h1>Hello everybody</h1>
        <p>now time: ${.now?string("yyyy-MM-dd HH:mm:ss.sss")}</p>
            <#list data>
                <ul>
                    <#items as d>
                        <li>${d.name} ${d.module}</li>
                    </#items>
                </ul>
            </#list>
    </body>
</html>