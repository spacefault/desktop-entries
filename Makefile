CXX = g++
CXXFLAGS = -std=c++11 -Wall

SRC = main.cxx

TARGET = installDesktopFiles

all:
	@echo ".desktop file installation"
	@echo
	@echo "This script will let you import the .desktop files I use on my computer to your system."
	@echo "WARNING: SOME FILES MIGHT NOT WORK PROPERLY"
	@echo "It is your job to review these files and make sure they work with your system."
	@echo "This is designed for personal use only! Please be careful. (I am not responsible for damages to your system)"
	@echo "Please make sure everything is where it's supposed to be."
	@echo
	@echo "use 'make install' to install, and 'make uninstall' to uninstall."
	@echo

	@echo "Building $(TARGET)..."
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)
	@echo "Build complete."

install: $(TARGET)
	./$(TARGET)

uninstall:
	rm /home/$(USER)/.local/share/applications/Minecraft\ Launcher.desktop

clean:
	rm $(TARGET)

.PHONY: all install uninstall clean
