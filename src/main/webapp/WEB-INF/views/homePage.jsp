<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image img-responsive" src="<c:url value="/resources/images/mcd3.jpg"/>" alt="First slide" />
            <div class="container">
                <div class="carousel-caption">
                    <p><a class="btn btn-danger" href="#" role="button" style="border-radius: 20px ;width: 300px; height:40px">FIND MCDELIVERY NEAR YOU</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image img-responsive" src="<c:url value="/resources/images/mcd2.jpg"/>" alt="Second slide" />
            <div class="container">
                <div class="carousel-caption">
                    <p><a class="btn btn-danger" href="#" role="button" style="border-radius: 20px;width: 200px ; height:40px">TRY IT NOW</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image img-responsive" src="<c:url value="/resources/images/mcd5.jpg"/>" alt="Third slide" />
            <div class="container">
                <div class="carousel-caption">
                    <p><a class="btn btn-danger" href="#" role="button" style="border-radius: 20px; width: 200px; height:40px">FIND SOME JOY</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row" style="height: 300px">
        <div class="col-lg-4" style="height: 300px; alignment: center">
            <img class="img-square"
                 src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mcdonalds-cold-brew-1529093777.jpg?resize=480:*" alt="Generic placeholder image" width="280" height="280">
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4" style="height: 300px; alignment: center">
            <img class="img-square"
                 src="https://www.eatthis.com/wp-content/uploads/2019/03/mcdonalds-mccafe-caramel-cappuccino-500x366.jpg" alt="Generic placeholder image" width="280" height="280">
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4"style="height: 300px; alignment: center;">
            <img class="img-square"
                 src="https://images.wagjag.com/images/deals/64-off-mcdonalds-coffee-2-855602-regular.jpg" alt="Generic placeholder image" width="280" height="280">
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


</div>