package com.example.lab6;



import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void sayHello(View view){
        TextView helloText = findViewById(R.id.message);
        EditText name = findViewById(R.id.editText);
        String nameValue = name.getText().toString();
        helloText.setText("Hello " + nameValue + "!");
        ImageView waving = findViewById(R.id.imageView3);
        waving.setImageResource(R.drawable.waving);
    }
}
