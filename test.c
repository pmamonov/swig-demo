#include "test.h"

void set_a(struct hz *hz, int val)
{
	hz->a = val;
}

void set_b(struct hz *hz, int val)
{
	hz->b = val;
}

int sum_ab(struct hz *hz)
{
	return hz->a + hz->b;
}
