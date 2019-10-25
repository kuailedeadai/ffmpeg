package com.daimeng.ffmpegdemo;

import java.io.File;

public class ListFiles {


    private static void enumFiles(String prefix, String path) {
        File directory = new File(path);
        if (directory != null && directory.isDirectory()) {
            File files[] = directory.listFiles();
            if (files != null) {
                for (int i = 0; i < files.length; i++) {
                    if (files[i].isDirectory()) {
                        if (prefix.equals("")) {
                            enumFiles(files[i].getName(), files[i].getAbsolutePath());
                        } else {
                            enumFiles(prefix + "/" + files[i].getName(), files[i].getAbsolutePath());
                        }
                    } else {
                        if (files[i].getName().contains(".c")) {
                            System.out.println(prefix + "/" + files[i].getName() + " \\");
                        }
                    }
                }
            }
        }
    }

    public static void main(String[] args) {
        String directory_name = "D:\\SpeechDemo2\\app\\src\\main\\jni\\x264\\common";
        enumFiles("", directory_name);
    }

}
