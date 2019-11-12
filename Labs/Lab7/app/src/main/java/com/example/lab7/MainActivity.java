package com.example.lab7;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    private TextView songSelection;
    private ToggleButton toggle;
    private Spinner genre;
    private RadioGroup speed;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        songSelection = findViewById(R.id.songTextView);
        toggle = findViewById(R.id.toggleButton);
        genre = findViewById(R.id.spinner);
        speed = findViewById(R.id.radioGroup);
    }

    public void findSong(View view) {

        boolean artist = toggle.isChecked();

        String songGenre = String.valueOf(genre.getSelectedItem());

        int speed_id = speed.getCheckedRadioButtonId();


        String perfectSong;

        if (speed_id == -1) { //toast
            Context context = getApplicationContext();
            CharSequence text = "Please select 'Upbeat' or 'Slow'";
            int duration = Toast.LENGTH_SHORT;

            Toast toast = Toast.makeText(context, text, duration);
            toast.show();
        } else {
            if (artist) { //female
                if (speed_id == R.id.radioButton1) { //Slow
                    switch (songGenre) {
                        case "EDM":
                            perfectSong = "H E X by Rezz";
                            break;
                        case "Country":
                            perfectSong = "Before He Cheats by Carrie Underwood";
                            break;
                        case "Hip-Hop":
                            perfectSong = "Work It by Missie Elliot";
                            break;
                        default:
                            perfectSong = "Error";
                    }
                } else { //Upbeat
                    switch (songGenre) {
                        case "EDM":
                            perfectSong = "Xanax by Elohim";
                            break;
                        case "Country":
                            perfectSong = "Stay by Sugarland";
                            break;
                        case "Hip-Hop":
                            perfectSong = "California King Bed by Rihanna";
                            break;
                        default:
                            perfectSong = "Error";
                    }
                }
            } else { //male
                if (speed_id == R.id.radioButton1) { //Slow
                    switch (songGenre) {
                        case "EDM":
                            perfectSong = "Red Step by Bassnectar";
                            break;
                        case "Country":
                            perfectSong = "Red Solo Cup by Blake Shelton";
                            break;
                        case "Hip-Hop":
                            perfectSong = "Bricks by Migos";
                            break;
                        default:
                            perfectSong = "Error";
                    }
                } else { //Upbeat
                    switch (songGenre) {
                        case "EDM":
                            perfectSong = "Insane by Flume";
                            break;
                        case "Country":
                            perfectSong = "Colder Weather by Zac Brown Band";
                            break;
                        case "Hip-Hop":
                            perfectSong = "How to Love by Lil Wayne";
                            break;
                        default:
                            perfectSong = "Error";
                    }

                }
            }
            songSelection.setText(perfectSong + " is the song for you");

        }


    }
}





