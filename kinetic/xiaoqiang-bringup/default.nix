
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, web-video-server, xiaoqiang-monitor, std-msgs, usb-cam, xiaoqiang-driver, robot-upstart, catkin, rospy, xiaoqiang-description, message-runtime, rplidar-ros }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-bringup";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_bringup/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "e2449e6b905156df39b5980764c9d728e44eb15246a77e46f13c6b9d60f7c473";
  };

  buildType = "catkin";
  buildInputs = [ web-video-server xiaoqiang-monitor std-msgs usb-cam xiaoqiang-driver robot-upstart rospy xiaoqiang-description message-runtime rplidar-ros ];
  propagatedBuildInputs = [ web-video-server xiaoqiang-monitor message-runtime std-msgs usb-cam xiaoqiang-driver robot-upstart xiaoqiang-description rospy rplidar-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''xiaoqiang bringup package, including launch files for many devices'';
    license = with lib.licenses; [ mit ];
  };
}
