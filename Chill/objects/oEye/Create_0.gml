

HP = 10;
weapon_L = noone;
weapon_R = noone;
sp = 20;
facing = Direction.S; // direction facing
sprite_data = 0;
is_enemy = true;
mask_index = sBigBullet;




give_weapon(self, instance_create_depth(0,0,0,oCannon));

ai = instance_create_depth(0,0,0,oStrafingAI);
ai.effective_range = 100;
