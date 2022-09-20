
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, nav2d-msgs, nav2d-operator, pluginlib, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-nav2d-navigator";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_navigator/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "d2f314f6da94486aaa5a19d27aa7c1a598950b95287b37a494359ba2911881aa";
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
