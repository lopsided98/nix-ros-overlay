
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-driver";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_driver/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "8127adc92c19930bb41d8e332f94febe5256a04402970b18f20f10e6c7155874";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs python3Packages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
