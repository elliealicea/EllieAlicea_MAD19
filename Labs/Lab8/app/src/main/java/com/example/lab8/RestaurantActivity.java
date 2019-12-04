package com.example.lab8;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class RestaurantActivity extends AppCompatActivity {
    private String restaurant;
    private String restaurantURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_restaurant);
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        FloatingActionButton fab = findViewById(R.id.fab);
        fab.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                loadWebSite(view);
            }
        });

        Intent intent = getIntent();
        restaurant = intent.getStringExtra("restaurantName");
        restaurantURL = intent.getStringExtra("restaurantURL");
        Log.i("restaurant received", restaurant);
        Log.i("url received", restaurantURL);

        TextView messageView = findViewById(R.id.restaurantTextView);
        messageView.setText("You should check out " + restaurant);
    }

    private void loadWebSite (View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(restaurantURL));
        startActivity(intent);
    }

}
