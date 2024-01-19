
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, map-server, nav-core2, nav-msgs, pluginlib, roscpp, roslint, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-global-planner-tests";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/global_planner_tests/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "8f6ec1166452f3886e8ea39c541347398e1e7f97afb218cb01271e19bea16ee8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ map-server nav-core2 nav-msgs pluginlib roscpp yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tests for checking the validity and completeness of global planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
