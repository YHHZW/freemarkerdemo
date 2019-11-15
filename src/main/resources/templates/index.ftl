<!DOCTYPE html>
<html lang="en">
    <head>
        <title>FreeMarkerDemo</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/assets/layui/css/layui.css" media="all">
        <script src="/assets/layui/layui.js"></script>
    </head>
    <body>
        <h1>Hello everybody</h1>
        <p>The time is now: ${.now?string("yyyy-MM-dd HH:mm:ss.sss")}</p>
        <table id="demo" lay-filter="autoTest"></table>
        <h1>--------------------------------我是分割线------------------------------------</h1>
        <table class="layui-table" lay-data="{url:'/freemarker/queryNameTable', page:true, cellMinWidth:80, toolbar:'#toolbarDemo'}" lay-filter="test">
            <thead>
                <tr>
                    <th lay-data="{fixed: 'left', type: 'checkbox'}"/>
                    <th lay-data="{field: 'name', sort: true}">姓名</th>
                    <th lay-data="{field: 'url', sort: true}">路径</th>
                    <th lay-data="{field: 'iconId', sort: true}">图标编号</th>
                    <th lay-data="{field: 'level', sort: true}">等级</th>
                    <th lay-data="{field: 'module', sort: true}">模板</th>
                    <th lay-data="{field: 'weight', sort: true}">高度</th>
                    <th lay-data="{field: 'pid', sort: true}">附编号</th>
                    <th lay-data="{fixed: 'right', toolbar: '#barDemo'}">操作</th>
                </tr>
            </thead>
        </table>

    <script>
        console.log("nihaoa")
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#demo',
                cellMinWidth: 80,
                url: '/freemarker/queryNameTable',
                toolbar: '#toolbarDemo',
                page: true,
                cols: [[
                    {type: 'checkbox', fixed: 'left'},
                    {field: 'name', title: '姓名', sort: true},
                    {field: 'url', title: '路径', sort: true},
                    {field: 'iconId', title: '图标编号', sort: true},
                    {field: 'level', title: '等级', sort: true},
                    {field: 'module', title: '模板', sort: true},
                    {field: 'weight', title: '高度', sort: true},
                    {field: 'pid', title: '附id', sort: true},
                    {fixed: 'right', title: '操作', toolbar: '#barDemo'}
                ]]
            });

        });
    </script>
    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
            <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数据</button>
            <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
        </div>
    </script>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
    </script>
    </body>
</html>