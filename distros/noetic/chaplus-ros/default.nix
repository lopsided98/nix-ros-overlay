
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-chaplus-ros";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/chaplus_ros/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "b72862efa5d0643671e7be61c98fc81d1c67282b6782f6eb8e3f8603a44829be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The ROS package for chaplus service";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
