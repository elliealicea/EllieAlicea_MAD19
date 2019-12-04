package com.example.lab8;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {
    private Button button;
    private Spinner typeSpinner;
    private Restaurant myRestaurant = new Restaurant();


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        typeSpinner = (findViewById(R.id.spinner));
        button = (findViewById(R.id.button));

        View.OnClickListener onclick = new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                findRestaurant(view);
            }
        };
        button.setOnClickListener(onclick);
    }

    private void findRestaurant(View view){
        Integer types = typeSpinner.getSelectedItemPosition();

        myRestaurant.setRestaurant(types);

        String suggestedRestaurant = myRestaurant.getRestaurant();
        String suggestedRestaurantURL = myRestaurant.getRestaurantURL();
        Log.i("restaurant suggested", suggestedRestaurant);
        Log.i("url suggested", suggestedRestaurantURL);

        Intent intent = new Intent(this, RestaurantActivity.class);
        intent.putExtra("restaurantName", suggestedRestaurant);
        intent.putExtra("restaurantURL", suggestedRestaurantURL);
        startActivity(intent);
    }


}
