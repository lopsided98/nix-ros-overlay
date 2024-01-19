
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, nav2d-msgs, nav2d-operator, pluginlib, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-nav2d-navigator";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/noetic/nav2d_navigator/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "ce183be0588c405387ab166f3d42e8b01d204a6205a2be4d34e2c40ecc186863";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime nav2d-msgs nav2d-operator pluginlib roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node for higher level navigation of a mobile
    robot in a planar environment. It needs a map and the robot's position
    within this map to create a plan for navigation. When used together with
    a SLAM module it can also be used to perform autonomous exploration of
    the robot's workspace.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
