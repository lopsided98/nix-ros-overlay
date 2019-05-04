
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, roscpp, libusb1, dynamic-reconfigure, nodelet, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-openni-camera";
  version = "1.11.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni_camera-release/archive/release/kinetic/openni_camera/1.11.0-0.tar.gz;
    sha256 = "b10cfd5d55e71c8f6f3837f8bea149ba58acc580a42a0f15dc7a1277b00a5438";
  };

  buildInputs = [ camera-info-manager image-transport sensor-msgs libusb1 nodelet dynamic-reconfigure roscpp log4cxx ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs libusb1 nodelet dynamic-reconfigure roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for OpenNI depth (+ RGB) cameras. These include: 
       Microsoft Kinect,
       PrimeSense PSDK,
       ASUS Xtion Pro and Pro Live

    The driver publishes raw depth, RGB, and IR image streams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
