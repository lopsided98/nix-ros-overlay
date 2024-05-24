
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rosgraph-msgs, rostest, std-msgs, std-srvs, tf, urdf-geometry-parser, xacro }:
buildRosPackage {
  pname = "ros-noetic-four-wheel-steering-controller";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/four_wheel_steering_controller/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "afa8b5661426f70d6b5316ef87e3cb90727d2b1da2dfdde29b3ba316053e7e9c";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib urdf-geometry-parser ];
  checkInputs = [ controller-manager geometry-msgs rosgraph-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface four-wheel-steering-msgs hardware-interface nav-msgs realtime-tools roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Controller for a four wheel steering mobile base.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
