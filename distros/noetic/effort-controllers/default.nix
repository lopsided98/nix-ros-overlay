
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, joint-state-controller, pluginlib, realtime-tools, robot-state-publisher, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-effort-controllers";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/effort_controllers/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "aa5535538919427dc66474499c9c8595403c92fda6dda7ac54c952dd3c38203b";
  };

  buildType = "catkin";
  buildInputs = [ angles pluginlib ];
  checkInputs = [ controller-manager joint-state-controller robot-state-publisher rosgraph-msgs rostest sensor-msgs xacro ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface forward-command-controller hardware-interface realtime-tools roscpp std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
