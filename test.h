#ifndef __TEST_H__
#define __TEST_H__

struct hz {
	int a;
	int b;
};

void set_a(struct hz *hz, int val);
void set_b(struct hz *hz, int val);
int sum_ab(struct hz *hz);

#endif /* __TEST_H__ */
