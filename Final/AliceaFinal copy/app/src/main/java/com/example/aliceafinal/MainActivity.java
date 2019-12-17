package com.example.aliceafinal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
    private TextView suggestedText;
    private EditText name;
    private String nameValue;
    private ToggleButton meatVeg;
    private String perfectBurrito;
    private Spinner location;
    private String locationForFood;
    private RadioGroup type;
    private String typeWrap;
    private ImageView foodPic;
    private Switch gluten;
    private String tortilla;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        suggestedText = findViewById(R.id.textView);
        name = findViewById(R.id.editText);
        meatVeg = findViewById(R.id.toggleButton);
        location = findViewById(R.id.spinner);
        type = findViewById(R.id.radioGroup);
        foodPic = findViewById(R.id.imageView);
        gluten = findViewById(R.id.switch1);

    }

    public void buildFood(View view){

        //get name
        nameValue = name.getText().toString();

        //veggie or meat
        boolean veggie = meatVeg.isChecked();

        if (veggie){
        perfectBurrito = "vegetarian";
        } else {
            perfectBurrito = "chicken";
        }

        //location
        String locationFood = String.valueOf(location.getSelectedItem());
        switch (locationFood){
            case "The Hill":
                locationForFood = "Illegal Petes";
                break;
            case "29th Street":
                locationForFood = "Chipotle";
                break;
            case "Pearl Street":
                locationForFood = "Bartaco";
                break;
                default:
                    locationForFood = "Error";
        }

        //taco or burrito
        int type_id =type.getCheckedRadioButtonId();

        if (type_id == -1){
            Context context = getApplicationContext();
            CharSequence text = "Please choose a taco or a burrito";
            int duration = Toast.LENGTH_SHORT;
            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else if (type_id == R.id.radioButton1){
            typeWrap = "burrito";
            foodPic.setImageResource(R.drawable.burrito); //display burrito image
        } else {
            typeWrap= "taco";
            foodPic.setImageResource(R.drawable.taco); //display taco image
        }

        //gluten free

        boolean glutenFree = gluten.isChecked();
        if (glutenFree) {
            tortilla = "corn";
        } else {
            tortilla = "flower";
        }

        //display text
        suggestedText.setText(nameValue + " wants a " + typeWrap + " with a " + tortilla + " tortilla that is "+ perfectBurrito + ". You should eat at " + locationForFood +".");

    }
}
