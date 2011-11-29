#include "material.h"

Material::Material(const Vector& pamb, const Vector& pdif,
	const Vector& pspec, const int pshi) : amb(pamb), dif(pdif),
	spec(pspec), shi(pshi) {}
