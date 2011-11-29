#include <stdio.h>

#include <algorithm>
#include <vector>
using namespace std;

#include "vector.h"
#include "light.h"
#include "object.h"

enum tracerMode {
	ORTHO, PERSPECTIVE 
};

class Raytracer {
	double znear,zfar;
	Vector eye;
	double w,h;
	Vector bgVec;
	tracerMode currMode;
	vector<Light*> lights;
	vector<Object*> objs;
	int raysPP; 

	public:
	Raytracer(double width, double height, double near,
		double far);
	Vector getPixelColor(int px, int py);
	Vector getColor(double px, double py);
	void setBackground(float r, float g, float g, 
		float a); 
};
