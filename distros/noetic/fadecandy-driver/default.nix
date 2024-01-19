
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, libusb1, roscpp, rospy }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-driver";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_driver/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "5c394c5199a5bbb0fc45a5229d0cd16629438feec207996af14d0c57a114f2f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rospy ];
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs libusb1 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
