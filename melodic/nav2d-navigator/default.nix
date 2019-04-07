
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, actionlib-msgs, nav2d-operator, nav2d-msgs, catkin, roscpp, message-generation, message-runtime, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-navigator";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_navigator/0.4.2-0.tar.gz;
    sha256 = "d2f314f6da94486aaa5a19d27aa7c1a598950b95287b37a494359ba2911881aa";
  };

  buildInputs = [ std-srvs pluginlib actionlib-msgs nav2d-operator nav2d-msgs roscpp message-generation actionlib tf geometry-msgs ];
  propagatedBuildInputs = [ std-srvs pluginlib actionlib-msgs nav2d-operator nav2d-msgs roscpp message-runtime actionlib tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node for higher level navigation of a mobile
    robot in a planar environment. It needs a map and the robot's position
    within this map to create a plan for navigation. When used together with
    a SLAM module it can also be used to perform autonomous exploration of
    the robot's workspace.'';
    #license = lib.licenses.GPLv3;
  };
}
