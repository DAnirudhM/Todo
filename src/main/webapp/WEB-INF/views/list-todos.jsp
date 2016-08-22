
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation-todo.jspf" %>


    <div class="container">
        <table class="table table-striped">
            <caption>Hi ${name} Your Todo's are</caption>

            <thead>
                <tr>
                    <th>Description</th>
                    <th>Date</th>
                    <th>Completed</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.desc}</td>
                       
                        <td> <fmt:formatDate pattern ="MM/dd/yyyy" value="${todo.targetDate}"/></td>
                        <td>${todo.done}</td>
                        <td><a href="/delete-todo?id=${todo.id}" class="btn btn-Danger">Delete</a></td>
                        <td><a href="/update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div>
            <a class="btn btn-success" href="/add-todo">Add</a>
        </div>
    </div>
    <%@ include file="common/footer.jspf" %>

  