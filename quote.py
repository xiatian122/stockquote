from time import strftime;
import os, sys, urllib;
import time, datetime;
import pytz;


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

# argv[1] for input_code_file; argv[2] for output_path; argv[3] for output_prefix
if __name__=="__main__":
    # get local date
    tz = pytz.timezone('Asia/Shanghai');
    current_time = datetime.datetime.now(tz);
    current_time = current_time.strftime('%Y-%m-%d');
    current_time = sys.argv[3] + current_time;
    # 2 hour
    for x in range(0, 120):
        f(sys.argv[1], sys.argv[2]+"/"+current_time + ".txt");
        time.sleep(60);    # 1 minute period
    #f(sys.argv[1], sys.argv[2]+"/"+current_time + ".txt");
