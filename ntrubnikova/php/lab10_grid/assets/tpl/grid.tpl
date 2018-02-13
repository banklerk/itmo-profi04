<!doctype html>
<html lang="en">
  <head>
    <!-- Meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/custom.css">
    <link rel="stylesheet" href="assets/css/bootstrap-sortable.css">
    
    <title>Grid</title>
  </head>
  
  <body>
    <!-- Navigation Bar -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <span class="navbar-brand mb-0">Grid</span>
     </nav>
    
    <!-- Content -->
    <main role="main" class="container">
         <h2 class="mt-5">Пользователи</h2>
         <p class="lead">Управление</p>
          
         <div class="container">
               <div class="row">
                    <div class="col-sm nopadding">
                        <button type="button" class="btn btn-success" onclick="addRecord()">Новая запись</button>
                    </div>
    
           <!-- Number of rows dropdown-->
               <div class="col-sm col-md-auto">
                  <p class="float-left m-2">Записей на странице:</p>
                   <select class="form-control mb-3 rows-per-page">
                      <option>5</option>
                      <option>10</option>
                      <option>20</option>
                    </select>
                    </div>
                  </div>
        </div>
       
    <!-- Table -->
        <table class="table table-striped sortable">
               <thead>
                 <tr>
                     <th scope="col">ID</th>
                     <th scope="col">Логин</th>
                     <th scope="col">Пароль</th>
                     <th scope="col">Имя</th>
                     <th scope="col">Фамилия</th>
                     <th scope="col" width="150px" data-defaultsort="disabled">Редактировать</th>
                     <th scope="col" width="150px" data-defaultsort="disabled">Удалить</th>
                </tr>
              </thead>
              <tbody id="table"> 
              <?php echo $tableHtml; ?>       
<!--
                <tr>
                     <td id="id-1">1</td>
                     <td id="login-1">vasya</td>
                     <td id="pass-1">123</td>
                     <td id="name-1">Василий</td>
                     <td id="lastname-1">Третьяков</td>
                      
                     <td><button type="button" class="btn btn-outline-warning" id="edit-1" onclick="editRecord(this.id)"><img src="assets/img/edit.svg" width=20/></button></td>
                     <td><button type="button" id="delete-1" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal" data-login="vasya" data-id="1"><img src="assets/img/trash.svg" width=20/></button></td>
                </tr>
                <tr>
                      <td id="id-2">2</td>
                      <td id="login-2">fat_sid</td>
                      <td id="pass-2">321</td>
                      <td id="name-2">Сидор</td>
                      <td id="lastname-2">Петров</td>
                      
                      <td><button type="button" class="btn btn-outline-warning" id="edit-2" onclick="editRecord(this.id)"><img src="assets/img/edit.svg" width=20/></button></td>
                      <td><button type="button" id="delete-2" class="btn btn-outline-danger" data-toggle="modal" data-target="#deleteModal" data-login="fat_sid" data-id="2"><img src="assets/img/trash.svg" width=20/></button></td>
                </tr>
-->   
              </tbody>
        </table>
            
    <!--Pagination-->
        <nav aria-label="Page navigation example">
               <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
                  </ul>
        </nav>
            
    <!--End of table-->
    </main>
    
    <!--Delete modal dialog-->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Удалить запись</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Нет</button>
            <button type="button" class="btn btn-danger" onclick="deleteRecord(this.id)">Да</button>
          </div>
        </div>
      </div>
    </div>
    
    <!--Error modal dialog-->
    <div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ошибка</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Закрыть</button>
          </div>
        </div>
      </div>
    </div>
    
    <!-- JavaScript -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap-sortable.js"></script>
    <script src="assets/js/custom.js"></script>
    
  </body>
</html>