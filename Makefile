PROGRAM = galaxsee
CXXSRCS = Gal.cpp derivs.cpp diffeq.cpp modeldata.cpp point.cpp derivs_client.cpp
INCS = Gal.h diffeq.h modeldata.h mpidata.h point.h
CLEAN = $(PROGRAM).exe

MPICC = cc
MPICXX = CC

CFLAGS += -DNO_X11

LIBS += -lm
LDFLAGS += $(LIBS)

$(PROGRAM).exe: $(CXXSRCS) $(INCS)
	$(MPICXX) $(CXXSRCS) $(EXTRA_CXXOBJS) $(CFLAGS) $(MPIFLAGS) $(LDFLAGS) -o $@

clean:
	/bin/rm -f $(CLEAN)

