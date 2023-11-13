#define _CRT_SECURE_NO_WARNINGS
#include <conio.h>
#include <locale>
#include <iostream>

extern "C" int solution(float x, float* y);

//�������� ������� ������
bool is_float(const char* s, float* dest) {
	if (s == NULL) {
		return false;
	}
	char* endptr;
	*dest = (float)strtod(s, &endptr);
	if (s == endptr) {
		return false;
	}
	while (isspace((unsigned char)*endptr))
		endptr++;
	return *endptr == '\0';
}

void main()
{
	char buf[100];
	int out;
	float x, y;
	printf("ctg(x)-2x\nEnter the x: ");
	gets_s(buf);
	if (is_float(buf, &x)) {
		out = solution(x, &y);
		printf("Result: ");
		printf(" %f", y);
	}
	else {

		printf("Invalid character!");
	}
}
