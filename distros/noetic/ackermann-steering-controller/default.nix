
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, controller-manager-msgs, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, std-msgs, std-srvs, tf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-ackermann-steering-controller";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ackermann_steering_controller/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "58506e4644b956f71b96fae9bae470062fb74482bfb9749db057b8a7cb3bd402";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager controller-manager-msgs geometry-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
