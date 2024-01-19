
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-urdf-tutorial";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_tutorial-release/archive/release/noetic/urdf_tutorial/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "1140907900dc413b980ce0180c93d84ec04d285530632b83d71f1fa2c63229e8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
