
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, controller-manager-msgs, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, std-msgs, std-srvs, tf, urdfdom, xacro }:
buildRosPackage {
  pname = "ros-noetic-ackermann-steering-controller";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/ackermann_steering_controller/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "f48ecda6c297da3a8a25179219ddb619790598d50a89871804fca0610f56c2fd";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager controller-manager-msgs geometry-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
