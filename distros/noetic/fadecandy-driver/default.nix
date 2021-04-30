
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, libusb1, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-driver";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_driver/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "0b54a26391d8f1a2c8ef375a254cac0a97f4f39eb0cd01b1fc7f52a7e4f75a37";
  };

  buildType = "catkin";
  checkInputs = [ rospy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
