
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, four-wheel-steering-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rosgraph-msgs, rostest, std-msgs, std-srvs, tf, urdf-geometry-parser, xacro }:
buildRosPackage {
  pname = "ros-noetic-four-wheel-steering-controller";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/four_wheel_steering_controller/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "707059f1318b760df190f02b0ef8473cd27dbe1025043d14620ef054d8563e15";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib urdf-geometry-parser ];
  checkInputs = [ controller-manager geometry-msgs rosgraph-msgs rostest std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface four-wheel-steering-msgs hardware-interface nav-msgs realtime-tools roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
