
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, web-video-server, usb-cam, xiaoqiang-description, catkin, rplidar-ros, xiaoqiang-driver, message-runtime, rospy, std-msgs, robot-upstart, xiaoqiang-monitor }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-bringup";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_bringup/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "e2449e6b905156df39b5980764c9d728e44eb15246a77e46f13c6b9d60f7c473";
  };

  buildType = "catkin";
  buildInputs = [ web-video-server usb-cam xiaoqiang-description rplidar-ros xiaoqiang-driver message-runtime rospy std-msgs robot-upstart xiaoqiang-monitor ];
  propagatedBuildInputs = [ web-video-server usb-cam xiaoqiang-description rplidar-ros xiaoqiang-driver message-runtime rospy std-msgs robot-upstart xiaoqiang-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang bringup package, including launch files for many devices'';
    license = with lib.licenses; [ mit ];
  };
}
