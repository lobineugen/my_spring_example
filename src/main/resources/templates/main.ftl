<#import "parts/login.ftl" as l>
<#import "parts/common.ftl" as c>

<@c.page>
    <div>
        <@l.logout />
    </div>

    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Введите сообщение">
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Добавить</button>
        </form>
    </div>
    <form method="get" action="/main">
        <input type="text" name="filter" value=${filter}>
        <button type="submit">Найти</button>
    </form>
    <div>Списко сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <b>${message.tag}</b>
            <strong>${message.authorName}</strong>
        </div>
    <#else >
        No messages
    </#list>
</@c.page>