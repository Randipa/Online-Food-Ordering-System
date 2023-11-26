<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Food Website</title>
   <style>
    body {
  margin: 0px;
  padding: 0px;
}

/* Navigation Bar  */
.navbar {
  display: flex;
  position: relative;
  /* background-color: lightgrey; */
}
.navbar::before {
  content: " ";
  background-color: black;
  position: absolute;
  height: 100%;
  width: 100%;
  z-index: -1;
  opacity: 0.3;
}

/* image css */
.logo img {
    width: 73px;
    height: 66px;
    background: none;
}

ul {
    display: flex;
    list-style: none;
}
li a {
    color: white;
    text-decoration: none;
    margin: 3px;
    font-size: 20px;
    display: block;
    padding: 5px;
}
li a:hover {
    color: black;
    background-color: white;
  border-radius: 3px;
  transition: all 0.8s ease-in-out;
}
/* Home Section Css */

#home {
    height: 720px;
    position: relative;
}
#home::before{
    content: "";
    background-image: url(https://images.unsplash.com/photo-1684243841385-18c29dd5ab29?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80);
    background-size: cover;
    position: absolute;
    height: 100%;
    width: 100%;
    z-index: -1;
    opacity: 0.9;
    
}

.welcome {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 220px 125px 26px;
  font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
}

.h-primary {
  text-align: center;
  margin-top: 20px;
  color: white;
  font-size: 2rem;
  font-family: 'Roboto Slab', serif;
}

.fpara {
  /* background-color: bisque; */
  margin: 0px;
  font-size: 1.2rem;
  color: black;
  font-weight: bold;
}

#order-btn{
    border-radius: 10px;
    cursor: pointer;
    margin: 20px ;
    font-size: 1.3rem;
    background-color: white;
    color: brown;
    border: 2px solid brown;
    /* height: 2rem;
    width: 2rem; */
  }
  #order-btn:hover{
    background-color: brown;
    color: white;
    border: 2px solid white;
}
/* #service {
  
} */
#serv{
  display: flex;
}
.box{
  border: 4px solid brown;
  background-color: rgb(245, 232, 198);
  margin: 6px;
  padding: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border-radius: 30px;
}
@media (max-width: 600px) {
  #serv{
  flex-direction: column;
  }
}

@media (max-width:500px){
  .welcome{
    padding: 100px;
  }
}

.box img{
  height: 100px;
  width: 100px;
}
/* about us section  */
.h-second{
  text-align: left;
  text-decoration:underline ;
  color: whitesmoke;
  font-size: 40px;
}
.about-info{
  width: 50%;
  font-size: 1.4rem;
  display: inline-block;
  color: black;
}
#about img{
  width: 300px;
  height: 300px;
  float: right;

}
.about-bg{
  position: relative;
}
.about-bg::before{
    content: "";
    background-image: url(https://images.pexels.com/photos/832982/pexels-photo-832982.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
    background-size: cover;
    position: absolute;
    height: 100%;
    width: 100%;
    z-index: -1;
    opacity: 0.6;
  }



*, *:before, *:after {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
button, input {
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  letter-spacing: 1.4px;
}

.background {
  display: flex;
  min-height: 100vh;
}

.container {
  flex: 0 1 700px;
  margin: auto;
  padding: 10px;
}

.screen {
  position: relative;
  background: black;
  border-radius: 15px;
}

.screen:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 20px;
  right: 20px;
  bottom: 0;
  border-radius: 15px;
  box-shadow: 0 20px 40px rgba(0, 0, 0, .4);
  z-index: -1;
}

.screen-header {
  display: flex;
  align-items: center;
  padding: 10px 20px;
  background: #4d4d4f;
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
}

.screen-header-left {
  margin-right: auto;
}

.screen-header-button {
  display: inline-block;
  width: 8px;
  height: 8px;
  margin-right: 3px;
  border-radius: 8px;
  background: white;
}

.screen-header-button.close {
  background: #ed1c6f;
}

.screen-header-button.maximize {
  background: #e8e925;
}

.screen-header-button.minimize {
  background: #74c54f;
}

.screen-header-right {
  display: flex;
}

.screen-header-ellipsis {
  width: 3px;
  height: 3px;
  margin-left: 2px;
  border-radius: 8px;
  background: #999;
}

.screen-body {
  display: flex;
}

.screen-body-item {
  flex: 1;
  padding: 50px;
}

.screen-body-item.left {
  display: flex;
  flex-direction: column;
}

.app-title {
  display: flex;
  flex-direction: column;
  position: relative;
  color: #ea1d6f;
  font-size: 26px;
}

.app-title:after {
  content: '';
  display: block;
  position: absolute;
  left: 0;
  bottom: -10px;
  width: 25px;
  height: 4px;
  background: #ea1d6f;
}

.app-contact {
  margin-top: auto;
  font-size: 15px;
  color: #888;
}

.app-form-group {
  margin-bottom: 15px;
}

.app-form-group.message {
  margin-top: 40px;
}

.app-form-group.buttons {
  margin-bottom: 0;
  text-align: right;
}
 
.app-form-control {
  width: 100%;
  padding: 10px 0;
  background: none;
  border: none;
  border-bottom: 1px solid #666;
  color: #ddd;
  font-size: 14px;
  text-transform: uppercase;
  outline: none;
  transition: border-color .2s;
}

.app-form-control::placeholder {
  color: #666;
}

.app-form-control:focus {
  border-bottom-color: #ddd;
}

.app-form-button {
  background: none;
  border: none;
  color: #ea1d6f;
  font-size: 14px;
  cursor: pointer;
  outline: none;
}

.app-form-button:hover {
  color: #b9134f;
}

.credits {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
  color: #ffa4bd;
  font-family: 'Roboto Condensed', sans-serif;
  font-size: 16px;
  font-weight: normal;
}

.credits-link {
  display: flex;
  align-items: center;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}

.dribbble {
  width: 20px;
  height: 20px;
  margin: 0 5px;
}

@media screen and (max-width: 520px) {
  .screen-body {
    flex-direction: column;
  }

  .screen-body-item.left {
    margin-bottom: 30px;
  }

  .app-title {
    flex-direction: row;
  }

  .app-title span {
    margin-right: 12px;
  }

  .app-title:after {
    display: none;
  }
}

@media screen and (max-width: 600px) {
  .screen-body {
    padding: 40px;
  }

  .screen-body-item {
    padding: 0;
  }
}
/* utitlity tag */
h1{
  text-align: center;
  font-size: 40px;
  font-family: 'Roboto Slab', serif;
}
h2{
  cursor: pointer;
  text-align: center;
}
h2:hover{
  text-decoration: underline;
 
}
p{
  /* font-family: 'Bree Serif', serif; */
  font-family: 'Roboto Slab', serif;
}


/* Scroll animation */
.hidden{
  opacity: 0;
  transition: all 1s;
  transform: translateX(-100%);
  filter: blur(5px);

}
.show{
  opacity: 1;
  filter: blur(0);
  transform: translateX(0);
}
@media(prefer-reduced-motion){
  .hidden{
    transition: none;
  }
}

#item1{
  transition-delay:200ms ;
}
#item2{
  transition-delay:400ms ;
  
}
#item3{
  transition-delay:600ms ;
  
}


   </style>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <header>
      <nav class="navbar">
        <div class="logo">
          <img src="https://cdn-icons-png.flaticon.com/128/3170/3170733.png" alt="logo" />
        </div>
        <div>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#service">Services </a></li>
            <li><a href="#about">About </a></li>
            <li><a href="#contact">Contact us</a></li>
          </ul>
        </div>
      </nav>
    </header>
    <section id="home">
      <div class="welcome">
        <h1 class="h-primary">Hello, Welcome Online Food Order</h1>
        <p class="fpara">
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolor
          reprehenderit, sint esse nulla mollitia sequi consectetur alias sed
          quae eos!
        </p>
        <p class="fpara">
          Lorem ipsum dolor sit, amet consectetur adipisicing elit.
        </p>
        <button id="order-btn" onclick="sp()">Order Now</button>
      </div>
    </section>
    <section id="service">
      <div>
        <h1>Our Services</h1>
      </div>
      <div id="serv">
        <div class="box" id="item">

          <img src="https://cdn-icons-png.flaticon.com/128/1404/1404945.png" alt="food" />
          <h2>Food Order</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Delectus
            fugit quam repellendus animi a vel, qui quod dolor excepturi cum
            distinctio eum perspiciatis dolores commodi velit iste rem itaque?
            Laboriosam, fuga voluptates.
          </p>
        </div>
        <div class="box" id="item">
    
          <img src="https://cdn-icons-png.flaticon.com/128/1830/1830351.png" alt="restaurant" />
          <h2>Restaurants</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Delectus
            fugit quam repellendus animi a vel, qui quod dolor excepturi cum
            distinctio eum perspiciatis dolores commodi velit iste rem itaque?
            Laboriosam, fuga voluptates.
          </p>
        </div>
        <div class="box" id="item">
 
          <img src="https://cdn-icons-png.flaticon.com/128/9561/9561688.png" alt="delivery boy" />
          <h2>Home Delivery</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Delectus
            fugit quam repellendus animi a vel, qui quod dolor excepturi cum
            distinctio eum perspiciatis dolores commodi velit iste rem itaque?
            Laboriosam, fuga voluptates.
          </p>
        </div>
      </div>
    </section>
    <section id="about">
        <div>
            <h1>About Us</h1>
        </div>
        <div class="about-bg">
            <h2 class="h-second">Who we are?</h2>
            <p class="about-info">
                We are working as food order delivery last 5 years and our services in this field.
                we connect Customers,restaurant partners,serving their multiple needs.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates autem magni fugit quia expedita explicabo maiores eius dolores totam, ut earum aperiam quam, laudantium placeat ex similique voluptas facilis tempore distinctio eum harum quos rem deleniti. Laboriosam repellendus perspiciatis rem eaque! Dolor, reprehenderit!
            </p>
            <p class="about-info">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptate nihil in magnam optio alias nisi eveniet praesentium vitae illo sequi aliquam delectus reprehenderit, atque nostrum numquam possimus ipsam impedit, nobis eos magni pariatur repudiandae maxime! Delectus fugiat consectetur, corrupti qui consequatur sed, aut, omnis placeat tempora at dolores sit quaerat!</p>
        </div>
   

    </section>
    <section id="contact">

        <div class="background">
          <div class="container">
            <div class="screen">
              <div class="screen-body">
                <div class="screen-body-item left">
                  <div class="app-title">
                    <span>CONTACT</span>
                    <span>US</span>
                  </div>
                  <div class="app-contact">CONTACT INFO : +94 761341023</div>
                </div>
                <div class="screen-body-item">
                  <div class="app-form">
                    <div class="app-form-group">
                      <input class="app-form-control" placeholder="NAME">
                    </div>
                    <div class="app-form-group">
                      <input class="app-form-control" placeholder="EMAIL">
                    </div>
                    <div class="app-form-group">
                      <input class="app-form-control" placeholder="CONTACT NO">
                    </div>
                    <div class="app-form-group message">
                      <input class="app-form-control" placeholder="MESSAGE">
                    </div>
                    <div class="app-form-group buttons">
                      <button class="app-form-button">CANCEL</button>
                      <button class="app-form-button">SEND</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        
          </div>
        </div>
    </section>
    <script>
        function sp(){

    let msg = new SpeechSynthesisUtterance ('order now');
    speechSynthesis.speak (msg);

};
    </script>
  </body>
</html>



