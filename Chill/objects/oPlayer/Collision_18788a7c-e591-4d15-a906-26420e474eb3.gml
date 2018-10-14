if other.against_player {
	HP -= other.damage;
	instance_destroy(other);
}