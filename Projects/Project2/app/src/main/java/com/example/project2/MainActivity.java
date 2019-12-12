package com.example.project2;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private TextView zodiacAnswer;
    private Spinner condition;
    private Spinner style;
    private RadioGroup location;
    private String zodiac;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        zodiacAnswer = findViewById(R.id.answerTextView);
        condition = findViewById(R.id.conditionSpinner);
        style = findViewById(R.id.styleSpinner);
        location = findViewById(R.id.radioGroup);

        if (savedInstanceState!=null){
            zodiac = savedInstanceState.getString("ans");

            zodiacAnswer.setText(zodiac);
        }


    }

    public void findZodiac(View view) {

        String conditionState = String.valueOf(condition.getSelectedItem());
        String styleState = String.valueOf(style.getSelectedItem());
        int location_Id = location.getCheckedRadioButtonId();




        if (conditionState.equals("Clean")) { //conditionspinner
            if (location_Id == R.id.radioButton1){//mountains
                switch (styleState){
                    case "Rustic":
                        zodiac = "Aquarius";
                        break;
                    case "Hippie":
                        zodiac = "Aquarius.";
                        break;
                    case "Minimal":
                        zodiac = "Aries";
                        break;
                    case "Grunge":
                        zodiac = "Scorpio";
                        break;
                        default:
                            zodiac = "error";
                }

            } else if (location_Id == R.id.radioButton2){//beach
                switch (styleState){
                    case "Rustic":
                        zodiac = "Libra";
                        break;
                    case "Hippie":
                        zodiac = "Aquarius";
                        break;
                    case "Minimal":
                        zodiac = "Pisces";
                        break;
                    case "Grunge":
                        zodiac = "Sagittarius";
                        break;
                    default:
                        zodiac = "error";
                }
            } else if (location_Id == R.id.radioButton3){ //city
                switch (styleState){
                    case "Rustic":
                        zodiac = "Capricorn ";
                        break;
                    case "Hippie":
                        zodiac = "Libra";
                        break;
                    case "Minimal":
                        zodiac = "Virgo";
                        break;
                    case "Grunge":
                        zodiac = "Scorpio";
                        break;
                    default:
                        zodiac = "error";
                }
            } else if (location_Id == R.id.radioButton4){ //forest
                switch (styleState){
                    case "Rustic":
                        zodiac = "Virgo";
                        break;
                    case "Hippie":
                        zodiac = "Libra";
                        break;
                    case "Minimal":
                        zodiac = "Virgo.";
                        break;
                    case "Grunge":
                        zodiac = "Taurus";
                        break;
                    default:
                        zodiac = "error";
                }
            }
        } else if (conditionState.equals("Messy")){
            if (location_Id == R.id.radioButton1){ //mountains
                switch (styleState){
                    case "Rustic":
                        zodiac = "Leo";
                        break;
                    case "Hippie":
                        zodiac = "Gemini";
                        break;
                    case "Minimal":
                        zodiac = "Aries";
                        break;
                    case "Grunge":
                        zodiac = "Taurus";
                        break;
                    default:
                        zodiac = "error";
                }

            } else if (location_Id == R.id.radioButton2){//beach
                switch (styleState){
                    case "Rustic":
                        zodiac = "Taurus";
                        break;
                    case "Hippie":
                        zodiac = "Gemini";
                        break;
                    case "Minimal":
                        zodiac = "Leo";
                        break;
                    case "Grunge":
                        zodiac = "Capricorn";
                        break;
                    default:
                        zodiac = "error";
                }
            } else if (location_Id == R.id.radioButton3){ //city
                switch (styleState){
                    case "Rustic":
                        zodiac = "Aries";
                        break;
                    case "Hippie":
                        zodiac = "Aquarius";
                        break;
                    case "Minimal":
                        zodiac = "Taurus";
                        break;
                    case "Grunge":
                        zodiac = "Scorpio";
                        break;
                    default:
                        zodiac = "error";
                }
            } else if (location_Id == R.id.radioButton4){ //forest
                switch (styleState){
                    case "Rustic":
                        zodiac = "Virgo";
                        break;
                    case "Hippie":
                        zodiac = "Aries";
                        break;
                    case "Minimal":
                        zodiac = "Scorpio";
                        break;
                    case "Grunge":
                        zodiac = "Gemini";
                        break;
                    default:
                        zodiac = "error";
                }
            }


        }
        zodiacAnswer.setText(zodiac);

    }
    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putString("ans",zodiac);


    }


}
