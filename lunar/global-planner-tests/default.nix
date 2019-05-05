
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, pluginlib, roslint, libyamlcpp, nav-core2, catkin, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-global-planner-tests";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/global_planner_tests/0.2.5-0.tar.gz;
    sha256 = "18b60ddc37621ef453f2b06b7c322fb07bfc7512b50693050a2fd8cacf214797";
  };

  buildInputs = [ map-server pluginlib libyamlcpp nav-core2 nav-msgs roscpp ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ map-server pluginlib libyamlcpp nav-core2 nav-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tests for checking the validity and completeness of global planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
