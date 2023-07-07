
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-chaplus-ros";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/chaplus_ros/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "ae79ee80c96bbf0e602474b0cb400a1992e7f9507e101daa4545c24fb228d5ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for chaplus service'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
