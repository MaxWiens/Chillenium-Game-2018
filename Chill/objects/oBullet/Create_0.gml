// To be parent of all bullets

enum BulletFlags { 
	None =		0x000,
	Beam =		0x001,
	Fire =		0x002,
	Ice =		0x004,
	Corrosive = 0x008,
	Explosive = 0x010
}

against_player = true;
sp_x = 0;				//speed of bullet in x direction in pixels per second
sp_y = 0;				//speed of bullet in y direction in pixels per second
time_until_decay = 0;   //time until the bullet decays in seconds
damage = 0;				//base damage the bullet deals

flags = BulletFlags.None; 
