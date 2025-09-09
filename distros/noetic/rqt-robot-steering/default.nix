
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, python3Packages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-robot-steering";
  version = "0.5.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/noetic/rqt_robot_steering/0.5.14-1.tar.gz";
    name = "0.5.14-1.tar.gz";
    sha256 = "2010fb0a201b93262f9c5357a2185439c2a507a96e9faf53c998d3e8e431a158";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding python3Packages.rospkg rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
