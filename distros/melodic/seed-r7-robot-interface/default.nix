
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, seed-r7-ros-controller }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-robot-interface";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_robot_interface/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "f9a852559d704824b420e67f085064b434b29fe9c7bb9d7a24be71d97f2dfafb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp seed-r7-ros-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_robot_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
