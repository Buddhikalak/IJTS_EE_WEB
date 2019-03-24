<%-- 
    Document   : network
    Created on : Feb 20, 2015, 4:13:20 PM
    Author     : Buddhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
        <script src="bootstrap-modal.js"></script>
        <script src="bootstrap-modalmanager.js"></script>
        <link rel="stylesheet" href="bootstrap-modal.css">
    </head>
    <body>



        <div class="wrapper">
            <h1>Simple jQuery Modal</h1>
            <button class="modal-toggle">Show modal</button>
        </div>

        <div class="modal">
            <div class="modal-overlay modal-toggle"></div>
            <div class="modal-wrapper modal-transition">
                <div class="modal-header">
                    <button class="modal-close modal-toggle"><svg class="icon-close icon" viewBox="0 0 32 32"><use xlink:href="#icon-close"></use></svg></button>
                    <h2 class="modal-heading">This is a modal</h2>
                </div>

                <div class="modal-body">
                    <div class="modal-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit eum delectus, libero, accusantium dolores inventore obcaecati placeat cum sapiente vel laboriosam similique totam id ducimus aperiam, ratione fuga blanditiis maiores.</p>
                        <button class="modal-toggle">Update</button>
                    </div>
                </div>
            </div>
        </div>

        <style></style>

        <script>
            $('.modal-toggle').on('click', function(e) {
                e.preventDefault();
                $('.modal').toggleClass('is-visible');
            });
        </script>

    </body>
</html>
