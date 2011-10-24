#ifndef SPHERE_H
#define SPHERE_H

#include "vector.h"
#include "object.h"

class Ray;

class Sphere : public Object {
	Vector color;
	Vector pos;
	double r;

	public:
		Sphere(const Vector& pcolor, const Vector& ppos, double pr);
		Vector& getColor();
		
		Object* checkIntersection(Ray& r);
		Vector getIntersectionPoint(Ray& r);
		Vector getNormalAtPoint(Vector& p);
};

#endif // SPHERE _H
