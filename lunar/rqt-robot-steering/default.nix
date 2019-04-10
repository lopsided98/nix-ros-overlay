
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rostopic, python-qt-binding, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-rqt-robot-steering";
  version = "0.5.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_steering-release/archive/release/lunar/rqt_robot_steering/0.5.9-0.tar.gz;
    sha256 = "96539f087b129a3420b216a7adb0e00cc9a594044c274d21f8b50b75e225e2c6";
  };

  propagatedBuildInputs = [ rqt-gui-py rostopic pythonPackages.rospkg rqt-gui python-qt-binding geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    #license = lib.licenses.BSD;
  };
}
