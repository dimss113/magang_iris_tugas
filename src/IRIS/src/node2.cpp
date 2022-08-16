#include <bits/stdc++.h>
#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "IRIS/data.h"


void callback(const IRIS::data msg){
    ROS_INFO("Data panjang: [%d] || Data Lebar [%d] || Data tinggi [%d] || Data luas [%d]", msg.panjang, msg.lebar, msg.tinggi, msg.luas);

}

int main(int argc, char** argv){
    ros::init(argc, argv, "getData");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("chatter", 1000, callback);

    ros::spin();

    return 0;
}