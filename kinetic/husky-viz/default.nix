
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-description, rviz-imu-plugin, rviz, robot-state-publisher, roslaunch, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-husky-viz";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_viz/0.3.2-0.tar.gz;
    sha256 = "7c81fc30270feac8fed1a8e716f1f83f4c902c3ce6e85a8bcdb80fa3b810db3c";
  };

  propagatedBuildInputs = [ husky-description rviz-imu-plugin rviz robot-state-publisher joint-state-publisher ];
  nativeBuildInputs = [ roslaunch catkin ];

  meta = {
    description = ''Visualization configuration for Clearpath Husky'';
    #license = lib.licenses.BSD;
  };
}
