
#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<string> split_str(const std::string &string, char sep) {
    vector<std::string> list;
    string::size_type start = 0;
    string::size_type end;

    while ((end = string.find(sep, start)) != string::npos) {
        if (start != end)
            list.push_back(string.substr(start, end - start));
        start = end + 1;
    }

    if (start != string.size())
        list.push_back(string.substr(start));

    return list;
}

void usage() {
    cout << "usage: main -ip <addr>\n";
}

int main(int argc, char **argb) {
    return 0;
}