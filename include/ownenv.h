#ifndef OWN_DEBUG
#define OWN_DEBUG
#include <bits/stdc++.h>
#define endl std::endl

// pair用デバッグ
template<typename T1,typename T2>
void DEBUG(const char* varName, const std::pair<T1,T2>& p) {
    std::cerr << varName << "(" << p.first << ", " << p.second << ")" << endl;
}

// 基本データ型用のデバッグ関数
template<typename T>
void DEBUG(const char* varName, const T& value) {
    std::cerr  << varName << ":" << value << endl;
}

// string用のデバッグ関数
void DEBUG(const char* varName, const std::string& value) {
    std::cerr  << varName  << ":"<< value << endl;
}

// array用のデバッグ関数
template<typename T, std::size_t N>
void DEBUG(const char* varName, const std::array<T, N>& arr) {
    std::cerr  << varName << ":";
    for (const auto& el : arr) std::cerr << el << " ";
    std::cerr << endl;
}

// vector用のデバッグ関数
template<typename T>
void DEBUG(const char* varName, const std::vector<T>& vec) {
    std::cerr  << varName << ":";
    for (const auto& el : vec) std::cerr << el << " ";
    std::cerr << endl;
}

// stack用のデバッグ関数
template<typename T>
void DEBUG(const char* varName, const std::stack<T> &stk) {
    std::cerr  << varName << ":";
    std::stack<T> copy = stk;
    std::vector<T> res;
    while (!copy.empty()) {
        res.push_back(copy.top());
        copy.pop();
    }
    Rev(res);
    debug(res);
}

// set用のデバッグ関数
template<typename T>
void DEBUG(const char* varName, const std::set<T>& s) {
    std::cerr  << varName << ":";
    for (const auto& el : s) std::cerr << el << " ";
    std::cerr << endl;
}

// 二次元配列用のデバッグ関数
template<typename T>
void DEBUG(const char* varName, const std::vector<std::vector<T>>& matrix) {
    std::cerr  << varName << ":"<< endl;
    for (const auto& row : matrix) {
        for (const auto& el : row) {
            std::cerr << el << " ";
        }
        std::cerr << endl;
    }
}
// 特殊化: mint 型の要素を持つ二次元配列に対する DEBUG 関数
//void DEBUG(const char* varName, const std::vector<std::vector<mint>>& matrix) {std::cerr << varName << ":" << endl;for (const auto& row : matrix) {for (const auto& el : row) {std::cerr << el.val() << " ";}std::cerr << endl;}}

#endif