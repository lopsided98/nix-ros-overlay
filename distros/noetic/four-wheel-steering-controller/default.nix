
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rosgraph-msgs, rostest, std-msgs, std-srvs, tf, urdf-geometry-parser, xacro }:
buildRosPackage {
  pname = "ros-noetic-four-wheel-steering-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/four_wheel_steering_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "47cd5261df2ae3f07ec7145db669e74033abae8f3802f99089f4662e7235e6c6";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib urdf-geometry-parser ];
  checkInputs = [ controller-manager geometry-msgs rosgraph-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface four-wheel-steering-msgs hardware-interface nav-msgs realtime-tools roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
