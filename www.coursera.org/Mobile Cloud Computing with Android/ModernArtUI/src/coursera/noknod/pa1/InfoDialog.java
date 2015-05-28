package coursera.noknod.pa1;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

public class InfoDialog extends DialogFragment {

	final private int MESSAGE_STRING = R.string.dialog_message;
	final private int OK_STRING = R.string.dialog_ok;
	final private int CANCEL_STRING = R.string.dialog_cancel;
	final private int URL = R.string.URL;
	
    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
    	// Use the Builder class for convenient dialog construction
    	
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(MESSAGE_STRING)
               .setPositiveButton(OK_STRING, new DialogInterface.OnClickListener() {

                   public void onClick(DialogInterface dialog, int id) {

                       String url = getActivity().getApplicationContext().getString(URL);
                	   
                       Intent intent = new Intent(Intent.ACTION_VIEW).setData(Uri.parse(url));
                       startActivity(intent);
                   }
               })
               .setNegativeButton(CANCEL_STRING, new DialogInterface.OnClickListener() {
            	   
                   public void onClick(DialogInterface dialog, int id) {
                	   dialog.cancel();
                   }
               });
        // Create the AlertDialog object and return it
        return builder.create();
    }
}