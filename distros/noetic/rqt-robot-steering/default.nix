
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-robot-steering";
  version = "0.5.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/noetic/rqt_robot_steering/0.5.11-1.tar.gz";
    name = "0.5.11-1.tar.gz";
    sha256 = "d3f47de4765dadc24e492a76934cb13132c2a514d9039c4768cdbe6e4c7949da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
