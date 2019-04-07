
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, pluginlib, roslint, libyamlcpp, nav-core2, catkin, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-global-planner-tests";
  version = "0.2.5-r1";

  src = fetchurl {
    url = https://github.com/DLu/robot_navigation-release/archive/release/melodic/global_planner_tests/0.2.5-1.tar.gz;
    sha256 = "39e04b13a621dc4fd2ceec66debbb65c93034d192a2d238c26fc425a67325074";
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
