
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite gameover;

	String boo;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w=get_scene_width(), h=get_scene_height(); 


		boo = "Game Over";
		rsc.prepare_font("myfont","verdana bold color=black",40);
		gameover = add_sprite_for_text(boo,"myfont");
		gameover.move(w*0.5-100,h*0.5-30);
		
		
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		switch_scene(new Main());
		}

	public void cleanup() {
		base.cleanup();
	}
}
