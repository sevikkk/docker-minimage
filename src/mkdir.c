#include <sys/stat.h>

int main(const int argc, const char* const argv[]) {
	int err = 0;

	while (*argv) {
		if (mkdir(*argv, 0777)) err = 1;
		argv++;
	}

	return err;
}
