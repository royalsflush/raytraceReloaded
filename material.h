#ifndef MATERIAL_H
#define MATERIAL_H

#include "vector.h"

class Material {
	public:
	Vector amb;
	Vector dif;
	Vector spec;
	int shi;

	Material(const Vector& pamb, const Vector& pdif,
		const Vector& pspec, const int shi);
};

#endif //MATERIAL_H
