
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rostopic, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-robot-steering";
  version = "0.5.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/melodic/rqt_robot_steering/0.5.9-0.tar.gz;
    sha256 = "88c3867ac42fc3ad6533f1fabc58ab169a1f3d4cbe9ae0e165edae28ad5b4df4";
  };

  propagatedBuildInputs = [ rqt-gui-py rostopic pythonPackages.rospkg rqt-gui python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    #license = lib.licenses.BSD;
  };
}
