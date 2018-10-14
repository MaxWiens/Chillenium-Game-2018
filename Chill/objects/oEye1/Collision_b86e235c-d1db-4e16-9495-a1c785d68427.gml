if other.against_player == false{
	HP -= other.damage;
	instance_destroy(other);
}