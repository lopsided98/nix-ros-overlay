
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, map-server, nav-core2, nav-msgs, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-global-planner-tests";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/global_planner_tests/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "c462f9fda089a5e0533506ac0de665a520a58407acafd379e97edcf100f754b7";
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
