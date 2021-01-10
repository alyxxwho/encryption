// Copyright 2020 Alisa <alisa_rudovskaya@mail.ru>

#include <iostream>
#include <string>
#include <fstream>
#include <vector>

void encryption(std::vector<char> bytes, int key, const std::string& file_name) {
    srand(key);
    std::ofstream outputFile(file_name, std::ios::binary);
    unsigned int rightshift = 2;
    for (int i = 0; i < bytes.size(); i += 2) {
        unsigned int gamma = rand();
        unsigned char b1 = bytes[i];
        unsigned char b2 = i + 1 < bytes.size() ? bytes[i + 1] : 0u;
        unsigned int xored = ((static_cast<unsigned int>(b1) << 8u)
                | (static_cast<unsigned int>(b2))) ^gamma;
        unsigned int encrypted_block = (xored >> rightshift)
                | (xored << (16 - rightshift));
        char r1=encrypted_block>>8;
        char r2=encrypted_block;
        outputFile.write(&r1, sizeof(r1));
        outputFile.write(&r2, sizeof(r2));
    }
    outputFile.close();
}

std::string decryption(int key, const std::string& file_name) {
    srand(key);
    unsigned int rightshift = 2;
    std::ifstream readFile(file_name, std::ios::binary);
    std::vector<char> encryptedData((std::istream_iterator<char>(readFile)),
                                    std::istream_iterator<char>());
    readFile.close();

    std::vector<char> decryptedData(encryptedData.size());
    for (int i = 0; i < encryptedData.size(); i += 2) {
        unsigned int gamma = rand();
        unsigned char b1 = encryptedData[i];
        unsigned char b2 = i + 1 < encryptedData.size() ? encryptedData[i + 1] : 0u;
        unsigned int encrypted_block =
                ((static_cast<unsigned int>(b1) << 8u) | (static_cast<unsigned int>(b2)));
        unsigned int shifted_encrypted_block =
                (encrypted_block << rightshift) | (encrypted_block >> (16 - rightshift));
        unsigned int result =
                shifted_encrypted_block ^gamma;
        unsigned char r1 = result >> 8;
        unsigned char r2 = result;
        decryptedData[i] = r1;
        decryptedData[i + 1] = r2;
    }
}

int main(int argc, const char *argv[]) {
    const std::string mode(argv[1]);
    const std::string file_name(argv[2]);
    if (argc != 3) {
        std::cerr << "Error: Use three parameters\n";
    }
    int key;
    std::cout << "Enter the key: \n";
    std::cin >> key;

    if (mode == "encryption") {
        std::string text;
        std::cout << "Enter the text: \n";
        std::cin >> text;
        const char *input = text.data();
        std::vector<char> bytes;
        for (unsigned int i = 0; i < text.size(); i++) {
            bytes.push_back(input[i]);
        }
        encryption(bytes, key, file_name);
    } else if (mode == "decryption") {
        decryption(key, file_name);
    } else {
        std::cout << "Error! Input data is incorrect";
    }
}
