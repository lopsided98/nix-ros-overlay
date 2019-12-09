
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, pluginlib, std-srvs, tf, actionlib, catkin, roscpp, actionlib-msgs, nav2d-operator, message-runtime, nav2d-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav2d-navigator";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/skasperski/navigation_2d-release/archive/release/melodic/nav2d_navigator/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "d2f314f6da94486aaa5a19d27aa7c1a598950b95287b37a494359ba2911881aa";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib std-srvs actionlib tf roscpp actionlib-msgs nav2d-operator message-generation nav2d-msgs ];
  propagatedBuildInputs = [ geometry-msgs pluginlib std-srvs tf actionlib nav2d-operator actionlib-msgs roscpp message-runtime nav2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node for higher level navigation of a mobile
    robot in a planar environment. It needs a map and the robot's position
    within this map to create a plan for navigation. When used together with
    a SLAM module it can also be used to perform autonomous exploration of
    the robot's workspace.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
