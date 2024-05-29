<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Book Your Stay</title>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="StyleSheet.css"> 
        <style>
            .inputBox {
                margin-bottom: 1rem;
            }

            .inputBox {
                display: inline-block;
                width: calc(50% - 5px);
                margin-right: 10px;
            }
            .btn-custom {
                background-color: #007bff;
                color: #fff;
                border-top-left-radius: 0;
                border-bottom-left-radius: 0;
            }
            .btn-custom:hover {
                background-color: #0056b3;
            }
            .card {
                border: none;
                border-radius: 10px;
            }
            .card-body {
                padding: 2rem;
            }
            .card-title {
                font-size: 1.5rem;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <section class="book py-5" id="book">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6">
                        <div class="card p-4 shadow-sm">
                            <div class="card-body">
                                <h3 class="card-title text-center mb-4">Book Your Stay</h3>
                                <form action="search-house-main" method="get">
                                    <div class="inputBox">
                                        <input type="text" name="whereTo" placeholder="Place name">
                                        <input type="number" name="guests" placeholder="Number of guests">
                                    </div>
                                    <div class="inputBox">
                                        <h3>Arrivals</h3>
                                        <input name="arrivals" type="date">
                                    </div>
                                    <div class="inputBox">
                                        <h3>Leaving</h3>
                                        <input name="leaving" type="date">
                                    </div>
                                    <input type="submit" class="btn btn-custom" value="Book now">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#searchForm').submit(function (e) {
                    e.preventDefault();
                    console.log("Search button clicked!");
                });
            });
        </script>
    </body>
</html>
