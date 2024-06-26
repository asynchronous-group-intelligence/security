#include <stdio.h>

extern "C" {
	void assembly_function(void);
};

int main(void) {
	printf("Calling assembly_function:\n");
	assembly_function();
	printf("Returned from assembly_function\n");
}