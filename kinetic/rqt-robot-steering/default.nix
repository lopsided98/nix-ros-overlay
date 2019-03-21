
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rostopic, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-robot-steering";
  version = "0.5.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/kinetic/rqt_robot_steering/0.5.9-0.tar.gz;
    sha256 = "8cd85787b711e36106b36b131aa88c4d9bd82bfd1fa7b254cd72e549d7efe8c7";
  };

  propagatedBuildInputs = [ rqt-gui-py rostopic pythonPackages.rospkg rqt-gui python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    #license = lib.licenses.BSD;
  };
}
