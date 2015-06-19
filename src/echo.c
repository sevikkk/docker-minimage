#include <string.h>
#include <unistd.h>

int main(const int argc, const char* const argv[]) {
	int newline;

	if (*++argv && !strcmp(*argv, "-n")) {
		newline = 0;
		++argv;
	} else {
		newline = 1;
	}

	while (*argv) {
		write(1, *argv, strlen(*argv));
		if (*++argv != 0) {
			write(1, " ", 1);
		}
	}

	if (newline) {
		write(1,"\n",1);
	}

	return 0;
}
