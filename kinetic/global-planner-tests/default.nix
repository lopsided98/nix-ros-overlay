
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, pluginlib, roslint, libyamlcpp, nav-core2, catkin, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-global-planner-tests";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/global_planner_tests/0.2.5-0.tar.gz;
    sha256 = "2c761414f62dd5d044ab2da756b4ad74babf71d304d5c616f1955e0d5be75615";
  };

  buildInputs = [ map-server nav-msgs pluginlib libyamlcpp nav-core2 roscpp ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ map-server nav-msgs pluginlib libyamlcpp nav-core2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tests for checking the validity and completeness of global planners.'';
    #license = lib.licenses.BSD;
  };
}
