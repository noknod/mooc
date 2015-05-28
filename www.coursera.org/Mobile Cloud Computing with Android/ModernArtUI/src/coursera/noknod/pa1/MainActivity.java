package coursera.noknod.pa1;

import android.app.Activity;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

import coursera.noknod.pa1.Rectangles;

public class MainActivity extends Activity {

	final private String mDialog = "Info";
	
	final private Rectangles mRectangles = new Rectangles();

    private SeekBar mColorBar = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		mRectangles.add(findViewById(R.id.rect1));
		mRectangles.add(findViewById(R.id.rect2));
		mRectangles.add(findViewById(R.id.rect3));
		mRectangles.add(findViewById(R.id.rect4));
		mRectangles.add(findViewById(R.id.rect5));
		
		mColorBar = (SeekBar) findViewById(R.id.color_bar);
		mColorBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {

            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                mRectangles.setColor(progress);
            }

			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}

			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}
		} );
	}


	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
	    // Inflate the menu; this adds items to the action bar if it is present.
	    getMenuInflater().inflate(R.menu.menu, menu);
	    return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
	        // Handle action bar item clicks here. The action bar will
	        // automatically handle clicks on the Home/Up button, so long
	        // as you specify a parent activity in AndroidManifest.xml.
	        int id = item.getItemId();

	        if (id == R.id.menu_more_info) {
	            DialogFragment info = new InfoDialog();
	            info.show(getFragmentManager(), mDialog);
	            return true;
	        }
	        return super.onOptionsItemSelected(item);
	    } 
}