
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, map-server, nav-core2, nav-msgs, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-kinetic-global-planner-tests";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/global_planner_tests/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9d5e024fa82776742215ea0abcadce6239f3954dc5b1b626355ece6bdfef1daa";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ libyamlcpp map-server nav-core2 nav-msgs pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tests for checking the validity and completeness of global planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
