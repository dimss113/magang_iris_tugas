#include <bits/stdc++.h>
#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "IRIS/data.h"

using namespace std;

class Hitung_luas{
    private:
        int panjang;
        int lebar;
        int tinggi;

        IRIS::data data;

    public:
        Hitung_luas(int _panjang, int _lebar, int _tinggi){
            this->panjang = _panjang;
            this->lebar = _lebar;
            this->tinggi = _tinggi;
        }

        int getPanjang(){
            return this->panjang;
        }

        int getLebar(){
            return this->lebar;
        }

        int getTinggi(){
            return this->tinggi;
        }

        void setPanjag(int _panjang){
            this->panjang = _panjang;
        }

        void setLebar(int _lebar){
            this->lebar = _lebar;
        }

        void setTinggi(int _tinggi){
            this->tinggi = _tinggi;
        }


        int getLuas(){
            return this->panjang * this->lebar * this->tinggi;
        }

        ~Hitung_luas(){
            ROS_INFO("object destructor");
        }
};

int main(int argc, char** argv){
    ros::init(argc, argv , "setData");

    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<IRIS::data>("chatter", 1000);

    ros::Rate loop_rate(10);

    Hitung_luas hluas = Hitung_luas(10,10,10);


    while(ros::ok()){   
        IRIS::data data;
        data.panjang = hluas.getPanjang();
        data.lebar = hluas.getLebar();
        data.tinggi = hluas.getTinggi();
        data.luas = hluas.getLuas();


        pub.publish(data);

        ros::spinOnce();

        loop_rate.sleep();
    }


    return 0;
}


