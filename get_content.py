from multiprocessing import Process, Array, Value
import urllib
import sys



def f(inputfile, outputfile):
    
    with open (inputfile, "r") as myfile:
        code=myfile.read().replace('\n', ''); 
        myfile.close();
    url= "http://hq.sinajs.cn/list=%s" % (code);
    write_data = urllib.urlopen(url).read().strip().strip('"');
    #write_data = write_data.split(';')[0].split('=')[1];
    #write_data = write_data.replace(';', '');
    #write_data = write_data.replace(',', '\t');
    fout = open(outputfile, "awr"); # a means append
    fout.write(write_data); 
    fout.close();
    
    
if __name__ == "__main__":
    #f("./szcode/sz_input1.txt", "temp.txt")
    f(sys.argv[1], sys.argv[2]);

