
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyamlcpp, catkin, yocs-msgs, roscpp, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-waypoint-provider";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_waypoint_provider/0.8.2-0.tar.gz;
    sha256 = "dedef537750bbe13bf390abb18260f3c5afad44e88c7247fffeee598ab35e7da";
  };

  propagatedBuildInputs = [ geometry-msgs libyamlcpp visualization-msgs yocs-msgs roscpp ];
  nativeBuildInputs = [ geometry-msgs libyamlcpp catkin visualization-msgs yocs-msgs roscpp ];

  meta = {
    description = ''Parse a multiple poses from yaml and provide as topic and service. This package is highly inspired by yocs_waypoints_navi'';
    #license = lib.licenses.BSD;
  };
}
