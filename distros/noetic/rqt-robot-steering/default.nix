
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, python3Packages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-robot-steering";
  version = "0.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/noetic/rqt_robot_steering/0.5.13-1.tar.gz";
    name = "0.5.13-1.tar.gz";
    sha256 = "fac18ca09687c28905f56000a283176be6208851483a3e18fda78504429a65f4";
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
