package coursera.noknod.pa1;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;

public class Rectangles {

	Rectangles() {
		rRects = new Rectangle[5];
		rCount = 0;
	}

	public View add(View view) {
		rRects[rCount] = new Rectangle(view);
		rCount += 1;
		return view;
	}

	public void setColor(int progress) {
		for (int i = 0; i < rCount; ++i) {
			rRects[i].setColor(progress);
		}
	}

	private Rectangle[] rRects;
	private int rCount;

}

class Rectangle {

	Rectangle(View view) {
		rView = view;
		rColor = ((ColorDrawable) rView.getBackground()).getColor();
	}

	public void setColor(int progress) {
		float[] hsvColor = new float[3];
        Color.colorToHSV(rColor, hsvColor);
        hsvColor[0] = (hsvColor[0] + progress) % 360;
        rView.setBackgroundColor(
        		Color.HSVToColor(Color.alpha(rColor), hsvColor));  
	}

	private View rView;
	private int rColor;
};