#include "vector.h"
#include "light.h"
#include "object.h"

Light::Light(const Vector& ppos, const Vector& pdir, double pang,
	const Vector& pdif, const Vector& pspec) : pos(ppos), 
	dir(pdir), ang(pang), dif(pdif), spec(pspec) {}

Vector Light::calculateContrib(Vector& pv, Vector& pt, Object& obj) {
	Vector n = obj.getNormalAtPoint(pt);
	
	Vector l = this->pos-pt;
	l.normalize();
	Vector r = (n*(l*n))*2.0-l;
	r.normalize();
	Vector v = pv-pt;
	v.normalize();

	Vector col(0.0,0.0,0.0,0.0);
		
	//Diffuse
	col+=this->dif*(l*n)*obj.getDif();
//	col+=this->spec*(r*v)*obj.getSpec();

	return col;
}
