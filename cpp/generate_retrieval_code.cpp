//
//  generate_retrival_code.cpp
//  Finance
//
//  Created by Tian Xia on 5/30/15.
//  Copyright (c) 2015 Himorrow. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

using namespace std;


int main(int argc, char** argv) {

    string ifile, ofile, line;
    
    // Input files are line by line stock codes
    // The aim here is to concatenate all codes with comma
    ifile = argv[1];
    ofile = argv[2];
    ostringstream oss;
    ifstream fin(ifile);
    ofstream fout(ofile);
    while (getline(fin, line)) {
        oss << line << ",";
    }
    
    fout << oss.str() << endl;
    
    fout.close();
    fin.close();
}
