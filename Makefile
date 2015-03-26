AutomatedMakefile = am
CC = g++

FILES = SortPlot.o	Point.o	Points.o	QuickTest.o	SortPlot.o	Plot.o
EXECUTABLE = Test.exe

PROJECT_PATH = $(PROJECT_DIR)
GTK_PATH = /$(DRIVE_LETTER)/MinGW/GTK
GTKMM3_PATH = /$(DRIVE_LETTER)/MinGW/gtkmm3

INC_DIRS = -I$(PROJECT_PATH)/CSC2110 -I$(PROJECT_PATH)/GUI  -I$(GTK_PATH)/include/gtk-3.0 -I$(GTK_PATH)/include/cairo -I$(GTK_PATH)/include/pango-1.0 -I$(GTK_PATH)/include/atk-1.0 -I$(GTK_PATH)/include/pixman-1 -I$(GTK_PATH)/include -I$(GTK_PATH)/include/freetype2 -I$(GTK_PATH)/include/libpng15 -I$(GTK_PATH)/include/gdk-pixbuf-2.0 -I$(GTK_PATH)/include/glib-2.0 -I$(GTK_PATH)/lib/glib-2.0/include -I$(GTKMM3_PATH)/include/gtkmm-3.0 -I$(GTKMM3_PATH)/lib/gtkmm-3.0/include -I$(GTKMM3_PATH)/include/atkmm-1.6 -I$(GTKMM3_PATH)/include/gdkmm-3.0 -I$(GTKMM3_PATH)/lib/gdkmm-3.0/include -I$(GTKMM3_PATH)/include/giomm-2.4 -I$(GTKMM3_PATH)/lib/giomm-2.4/include -I$(GTKMM3_PATH)/include/pangomm-1.4 -I$(GTKMM3_PATH)/lib/pangomm-1.4/include -I$(GTKMM3_PATH)/include/glibmm-2.4 -I$(GTKMM3_PATH)/lib/glibmm-2.4/include -I$(GTKMM3_PATH)/include/cairomm-1.0 -I$(GTKMM3_PATH)/lib/cairomm-1.0/include -I$(GTKMM3_PATH)/include/sigc++-2.0 -I$(GTKMM3_PATH)/lib/sigc++-2.0/include
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110 -L$(PROJECT_PATH)/GUI  -L$(GTK_PATH)/lib -L$(GTKMM3_PATH)/lib
LIBS = -lCSC2110 -lgui -lgtkmm-3.0 -latkmm-1.6 -lgdkmm-3.0 -lgiomm-2.4 -lpangomm-1.4 -lglibmm-2.4 -lgtk-3 -lgdk-3 -lgdi32 -limm32 -lshell32 -lole32 -Wl,-luuid -lpangocairo-1.0 -lpangoft2-1.0 -lfreetype -lfontconfig -lpangowin32-1.0 -lgdi32 -lpango-1.0 -lm -latk-1.0 -lcairo-gobject -lgio-2.0 -lcairomm-1.0 -lcairo -lsigc-2.0 -lgdk_pixbuf-2.0 -lgobject-2.0 -lglib-2.0 -lintl

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

all: Lab09

Lab09: 		$(FILES)
		$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)

SortPlot.o:	SortPlot.h	SortPlot.cpp
	$(COMPILE)	SortPlot.cpp

Point.o:	Point.h	Point.cpp
	$(COMPILE)	Point.cpp

Points.o:	Points.h	Points.cpp
	$(COMPILE)	Points.cpp

QuickTest.o:	Sort.h	QuickTest.cpp
	$(COMPILE)	QuickTest.cpp

SortPlot.o:	SortPlot.h	SortPlot.cpp
	$(COMPILE)	SortPlot.cpp

Plot.o:	Plot.h	Plot.cpp
	$(COMPILE)	Plot.cpp