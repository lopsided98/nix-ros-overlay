
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, image-transport, libfreenect, log4cxx, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-freenect-camera";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_freenect_camera/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "e159e48b78634f19fdb4bcac8b0b5299c07456335656bf578b06334f3d3de47b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-transport libfreenect log4cxx nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect.  This is
    a port of the OpenNI driver that uses libfreenect instead, because
    on some systems with some devices it works better.
    Modified version of xiaoqiang_freenect_stack, add tilt angle control support'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
