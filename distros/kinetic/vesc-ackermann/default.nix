
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, geometry-msgs, nav-msgs, nodelet, pluginlib, roscpp, roslint, std-msgs, tf, vesc-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vesc-ackermann";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/kinetic/vesc_ackermann/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "413b38df7f20b5995d85298153d44192a2f5377c75ae30db40c7a4d8329ea8ad";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs nodelet pluginlib roscpp std-msgs tf vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translate between VESC messages and ROS ackermann and odometry messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
