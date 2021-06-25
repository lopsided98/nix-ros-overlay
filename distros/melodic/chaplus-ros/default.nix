
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-chaplus-ros";
  version = "2.1.22-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/chaplus_ros/2.1.22-1.tar.gz";
    name = "2.1.22-1.tar.gz";
    sha256 = "c37f88ea93357f57bf6caeddff4a99565b08d9b95285552c849f7c7e0a0f8917";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for chaplus service'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
