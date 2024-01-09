#include <iostream>
#include <cstdlib>
#include <string>


void installDesktopFiles() {
    const char *username = getenv("USER");
    if (username == nullptr) {
        std::cerr << "Unable to retrieve username." << std::endl;
        return;
    }

    std::string command = "cp desktopfiles/* /home/" + std::string(username) + "/.local/share/applications/";
    system(command.c_str());
}

int main() {
    installDesktopFiles();
    return 0;
}
