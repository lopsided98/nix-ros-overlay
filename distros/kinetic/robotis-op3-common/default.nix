
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, op3-description, op3-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-robotis-op3-common";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-Common-release/archive/release/kinetic/robotis_op3_common/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "b8512812619cf37760e26a0dac1d80c288d875a2aa656f11898a7b23b1229bf3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ op3-description op3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the ROBOTIS OP3 (meta package).
    This meta package provides launch files and plug-in for Gazebo and RViz.'';
    license = with lib.licenses; [ asl20 ];
  };
}
