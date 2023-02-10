
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, joint-state-controller, pluginlib, realtime-tools, robot-state-publisher, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-effort-controllers";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/effort_controllers/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "a9a66d95cbf9f411432c02a64c2ec3b926e6d364cfad6af8e9a273a3a23fd871";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin pluginlib ];
  checkInputs = [ controller-manager joint-state-controller robot-state-publisher rosgraph-msgs rostest sensor-msgs xacro ];
  propagatedBuildInputs = [ control-msgs control-toolbox controller-interface forward-command-controller hardware-interface realtime-tools roscpp std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
