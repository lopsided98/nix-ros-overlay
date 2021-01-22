
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, rostopic, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-robot-steering";
  version = "0.5.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/kinetic/rqt_robot_steering/0.5.9-0.tar.gz";
    name = "0.5.9-0.tar.gz";
    sha256 = "8cd85787b711e36106b36b131aa88c4d9bd82bfd1fa7b254cd72e549d7efe8c7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg rostopic rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
