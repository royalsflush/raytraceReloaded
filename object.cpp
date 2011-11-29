#include "object.h"

Object::Object(const Material& pmat) : mat(pmat) {}

Material& Object::getMat() {
	return mat; 
}
