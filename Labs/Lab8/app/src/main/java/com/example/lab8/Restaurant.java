package com.example.lab8;

public class Restaurant {
    private String restaurant;
    private String restaurantURL;

    private void setRestaurantInfo(Integer restType){
        switch (restType){
            case 0: //Mexican
                restaurant= "Centro Mexican Kitchen";
                restaurantURL="https://www.centromexican.com/";
                break;
            case 1: //Chinese
                restaurant= "Golden Sun";
                restaurantURL= "https://www.bouldergoldensun.com/";
                break;
            case 2: //American
                restaurant= "Dark Horse Bar and Grill";
                restaurantURL= "http://darkhorsebar.com/";
                break;
            case 3: //Italian
                restaurant= "Pasta Jay's";
                restaurantURL= "https://pastajays.com/";
                break;
            case 4: //Indian
                restaurant= "Kathmandu Restaurant";
                restaurantURL= "https://www.kathmandurestaurant.us/boulder/";
                break;
                default:
                    restaurant="None";
                    restaurantURL= "https://www.google.com/search?q=boulder+restaurants&oq=boulder+re&aqs=chrome.0.0l8.2024j1j4&sourceid=chrome&ie=UTF-8";

        }
    }
        public void setRestaurant (Integer restType){
        setRestaurantInfo(restType);
        }

        public void setRestaurantURL (Integer restType){
        setRestaurantInfo(restType);
        }

        public String getRestaurant(){
        return restaurant;
        }

        public String getRestaurantURL(){
        return restaurantURL;
    }
}
