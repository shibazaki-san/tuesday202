
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{	
	SESprite bg;

	public static int px;
	public static int py;
	int i;
	
	public void initialize(SEResourceCache rsc) {
		
		base.initialize(rsc);
	//	AudioClipManager.prepare("");
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		var w=get_scene_width(), h=get_scene_height(); 

	//	px = 0;
	//	py = 0;

		rsc.prepare_image("Chrysanthemum","Chrysanthemum", w, h);
		bg = add_sprite_for_image(SEImage.for_resource("Chrysanthemum"));
		bg.move(0,0);
		
	    add_entity(new PlayerEntity());
		for(i=0; i<Math.random(5,15); i++) {
			add_entity(new MonsterEntity());}
	}

	public void on_pointer_move(SEPointerInfo pi) {
		px = pi.get_x();
		py = pi.get_y();
		var mx = MonsterEntity.mx;
		var my = MonsterEntity.my;
		if((mx>=px && mx<=px+136) && (my>=py && my<=py+76))
		{switch_scene(new GameOver());}
	//	AudioClipManager.play("");
	}


	public void cleanup() {
		base.cleanup();
	}
}