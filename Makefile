CC = g++
CFLAGS= #-O2
LIBS = -lm #-lGLEW
SRC= main.cpp vector.cpp raytracer.cpp ray.cpp \
	sphere.cpp light.cpp object.cpp triangle.cpp material.cpp
OUTPUT=raytrace

OBJ=$(SRC:.cpp=.o)

CFLAGS+=-g
DBGFLAGS = #-D_FPVIEW -D_ANIM #-D_DBG

ifeq ($(shell uname),Darwin)
	LIBS+= -framework OpenGL -framework GLUT
else
	LIBS+= -lglut -lGLU
endif

all: gs

clean:
	rm $(OBJ)
	rm $(OUTPUT)

gs: $(OBJ)
	$(CC) $(CFLAGS) $(LIBS) $(DBGFLAGS) -o $(OUTPUT) $^

.cpp.o:
	$(CC) $(CFLAGS) $(DBGFLAGS) -c -o $@ $<

depend:
	makedepend -- $(CFLAGS) -- $(SRC)
# DO NOT DELETE

main.o: /usr/include/stdio.h /usr/include/_types.h /usr/include/sys/_types.h
main.o: /usr/include/sys/cdefs.h /usr/include/machine/_types.h
main.o: /usr/include/i386/_types.h /usr/include/secure/_stdio.h
main.o: /usr/include/secure/_common.h /usr/include/stdlib.h
main.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
main.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
main.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
main.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
main.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
main.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
main.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
main.o: /usr/include/libkern/_OSByteOrder.h
main.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
main.o: /usr/include/machine/types.h /usr/include/i386/types.h
main.o: /usr/include/math.h /usr/include/architecture/i386/math.h raytracer.h
main.o: vector.h light.h object.h material.h
vector.o: /usr/include/stdio.h /usr/include/_types.h
vector.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
vector.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
vector.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
vector.o: /usr/include/math.h /usr/include/architecture/i386/math.h vector.h
raytracer.o: /usr/include/math.h /usr/include/architecture/i386/math.h
raytracer.o: /usr/include/sys/cdefs.h /usr/include/stdlib.h
raytracer.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
raytracer.o: /usr/include/_types.h /usr/include/sys/_types.h
raytracer.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
raytracer.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
raytracer.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
raytracer.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
raytracer.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
raytracer.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
raytracer.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
raytracer.o: /usr/include/libkern/_OSByteOrder.h
raytracer.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
raytracer.o: /usr/include/machine/types.h /usr/include/i386/types.h
raytracer.o: raytracer.h /usr/include/stdio.h /usr/include/secure/_stdio.h
raytracer.o: /usr/include/secure/_common.h vector.h light.h object.h
raytracer.o: material.h ray.h sphere.h triangle.h
ray.o: vector.h ray.h
sphere.o: /usr/include/math.h /usr/include/architecture/i386/math.h
sphere.o: /usr/include/sys/cdefs.h /usr/include/stdlib.h
sphere.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
sphere.o: /usr/include/_types.h /usr/include/sys/_types.h
sphere.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
sphere.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
sphere.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
sphere.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
sphere.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
sphere.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
sphere.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
sphere.o: /usr/include/libkern/_OSByteOrder.h
sphere.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
sphere.o: /usr/include/machine/types.h /usr/include/i386/types.h sphere.h
sphere.o: vector.h object.h material.h ray.h
light.o: /usr/include/math.h /usr/include/architecture/i386/math.h
light.o: /usr/include/sys/cdefs.h vector.h light.h object.h material.h
object.o: object.h material.h vector.h
triangle.o: /usr/include/math.h /usr/include/architecture/i386/math.h
triangle.o: /usr/include/sys/cdefs.h /usr/include/stdlib.h
triangle.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
triangle.o: /usr/include/_types.h /usr/include/sys/_types.h
triangle.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
triangle.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
triangle.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
triangle.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
triangle.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
triangle.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
triangle.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
triangle.o: /usr/include/libkern/_OSByteOrder.h
triangle.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
triangle.o: /usr/include/machine/types.h /usr/include/i386/types.h triangle.h
triangle.o: object.h material.h vector.h ray.h
material.o: material.h vector.h
