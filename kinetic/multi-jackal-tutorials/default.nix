
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, multi-jackal-base, rviz, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-tutorials";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_tutorials/0.0.5-0.tar.gz;
    sha256 = "5d364f22fa53a8f40ddc77ca8ba02eba4722f1fdf03c24c11d28db21c7df87d5";
  };

  propagatedBuildInputs = [ gazebo-ros multi-jackal-base rviz ];
  nativeBuildInputs = [ gazebo-ros catkin rviz roslaunch multi-jackal-base ];

  meta = {
    description = ''Tutorials for multi-Jackal simulations.'';
    #license = lib.licenses.BSD;
  };
}
