package com.example.mohamed.filemanager;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    boolean isFile = true;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //get the spinner from the xml.
        Spinner dropdown = (Spinner) findViewById(R.id.spnr);
        //create a list of items for the spinner.
        String items[] = {"File", "Folder"};
        //create an adapter to describe how the items are displayed, adapters are used in several places in android.
        //There are multiple variations of this, but this is the basic variant.
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, items);
        //set the spinners adapter to the previously created one.
        TextView t = (TextView) findViewById(R.id.lst);
        dropdown.setAdapter(adapter);
        dropdown.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {
                if(i==0)
                    isFile=true;
                else
                    isFile=false;
            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
                // Do Nothing
            }
        });
    }

    public void chmod(View v){

    }

    public void create(View v){

    }

    public void delete(View v){

    }

    public void link(View v){

    }
}
