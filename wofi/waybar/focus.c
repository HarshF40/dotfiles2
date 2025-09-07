#include<stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]){
    if (argc < 2) {
	fprintf(stderr, "Too few arguments");
	return 1;
    }

    const char* home = getenv("HOME");
    if(home == NULL){
	fprintf(stderr, "Cannot find HOME");
	return 2;
    }


    char path[128] = {0};
    snprintf(path + strlen(path), sizeof(path) - strlen(path), "%s", home);
    snprintf(path + strlen(path), sizeof(path) - strlen(path), "/.config/waybar/focus.txt");

    FILE *file = fopen(path, "w");

    if(file == NULL){
	fprintf(stderr, "Couldn't open the file");
	return 3;
    }

    fprintf(file, "%s", argv[1]);

    fclose(file);
    return 0;
}
