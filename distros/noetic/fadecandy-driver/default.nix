
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, fadecandy-msgs, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-driver";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_driver/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "109358fbe47d2113a169631ae42fad3f410d93c4a22f5e0143be153435d0ef0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-updater fadecandy-msgs python3Packages.pyusb rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
