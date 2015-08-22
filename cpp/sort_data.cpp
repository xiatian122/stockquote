#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <cstdlib>
#include <netdb.h>
#include <unistd.h>
#include <unistd.h>
#include <string>
#include <pthread.h>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <cstring>


using namespace std;


string get_code(string input) {
    string result;
    char *cline = (char*)input.c_str();
    const char *tok = strtok(cline, "_=");
    tok = strtok(NULL, "_=");
    if (tok == NULL) {         // for the last line
        result = "";
        return result;
    }
    tok = strtok(NULL, "_=");
    result = tok;


    tok = strtok(NULL, "_=");
    tok = strtok(NULL, "_=");
    tok = strtok(NULL, "_=");

    if (NULL != tok) {
        result = tok;
    }
        
    
    return result;
}

int main(int argc, char** argv) {
    
    if (argc < 3) {
        cout << "[prgram_name] [input_file] [output_file]" << endl;
        exit(0);
    }

    //ifstream fin("/Users/lance/Finance/temp.txt");
    //ofstream fout("/Users/lance/Finance/temp2.txt");
    
    ifstream fin(argv[1]);
    ofstream fout(argv[2]);
	
	//cout << argv[1] << endl;
	//cout << argv[2] << endl;
    
    string line;
    ostringstream oss;
    
    oss.str("");
    
    int i = 0;
    int j = 0;
    int k = 0;

    while (getline(fin, line, ',')) {
        if (i == 0) {
            oss << get_code(line);
            k++;
            //fout << line << endl;
            // deal with var hq_str_sz399384="";wc -l tmp3. 
        } else if (i == 31) {
            oss << "," << line;
            fout << oss.str() << endl;
            oss.str("");
            i = 0;
                 
            continue;
        } else {
        

            oss << "," << line;
        }
        
    
        ++i;
    }
    
   // cout << j << endl;

    fin.close();
    fout.close();

}
