<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Newz Application</title>
</head>

<body onload="">
<!-- Create a form which will have text boxes for News Name, News Author, description, content along with a Add 
         button. Handle errors like empty fields.
         
    <!-- display all existing news in a tabular structure with News Name, News Author, 
    description, content, Publish Date and Action -->

    <div class="container">
        <div class="jumbotron" style="margin: 45px 0px;">
            <h2 class="text-center">Newz Application Assignment</h2>
        </div>
<div class="container" style="margin-right: auto;">
       <form method="POST" action="updates" >

            <div class="form-group">
                <input type="hidden"
                    id="newsId" aria-describedby="name"
                     name="newsId" value=${newobj.newsId}>
            </div>
            <div class="form-group">
                <label for="newsid">Name</label> <input type="text"
                    class="form-control" id="newsName" aria-describedby="name"
                    placeholder="Name" name="newsName">
            </div>
            <div class="form-group">
                <label for="exampleInputTitle">Author</label> 
                <input type="text"
                    class="form-control" id="newsAuthor" aria-describedby="name"
                    placeholder="Author" name="newsAuthor">
            </div>
            
            <div class="form-group">
                <label for="exampleInputNoteText">Description</label> 
                <input type="text" class="form-control" id="newsDescription"
                    placeholder="Description" name="newsDescription">
            </div>
            
            <div class="form-group">
                <label for="exampleInputNoteCategory">Content</label> 
                <input type="text" class="form-control" id="newsContent"
                    placeholder="Content" name="newsContent">
            </div>

            <button type="submit" class="btn btn-primary">Update News</button>
        </form>
</div>

        <div style="margin-top: 1em; text-align: center; background-color:Black;color:White;">
         
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Newsid</th>
                        <th scope="col">Name</th>
                        <th scope="col">Author</th>
                         <th scope="col">Description</th>
                          <th scope="col">PublishedAt</th>
                        <th scope="col">Content</th>
                    </tr>
                </thead>
                <tbody id='table-body'>
                    <div>
                        <tr>
                            <td>${newobj.newsId}</td>
                            <td>${newobj.name}</td>
                            <td>${newobj.author}</td>
                            <td>${newobj.description}</td>
                            <td>${newobj.publishedAt}</td>
                            <td>${newobj.content}</td>
                          <td><form action="delete" method="post">
            <input type="hidden" id="newsId" name="newsId" value="${newobj.newsId}"/>
            <button type="submit">Delete</button>
        </form></td>
                            <td><form action="update" method="post">
            <input type="hidden" id="newsId" name="newsId" value="${newobj.newsId}"/>
            <button type="submit">Update</button>
        </form></td>
                        </tr>
                    </div>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>