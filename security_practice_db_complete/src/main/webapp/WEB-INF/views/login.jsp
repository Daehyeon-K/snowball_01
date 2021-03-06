<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Co-Mapping - Login</title> <!-- 이거 페이지마다 다르게 하려면? -->
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Co-Mapping</h3></div>
                                    <div class="card-body">
                                        <form action="/login" method="post" class="form-signin">
                                            <div class="form-floating mb-3">
                                            	<input type="text" id="username" name="username" class="form-control" placeholder="아이디를 입력해 주세요" required autofocus/>
                                                <label for="username">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호를 입력해 주세요" required/>   
                                                <label for="password">비밀번호</label>
                                            </div>
                         
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-lg btn-primary btn-block" type="submit" >로그인</button>
                                            </div>
                                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
											<div class="error-message">
												<span>${loginError}</span>
											</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
<%@include file="../views/includes/footer.jsp" %>
