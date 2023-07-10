#include <math.h>

extern float greater_root(float a, float b, float c) {
    return (-b + sqrt(b*b - 4*a*c))/(2*a);
}

extern float lesser_root(float a, float b, float c) {
    return (-b - sqrt(b*b - 4*a*c))/(2*a);
}