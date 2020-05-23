
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, pluginlib, realtime-tools, robot-state-publisher, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-effort-controllers";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/effort_controllers/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "228a9714ec28778f5dce22475a3c151dc95dbb865ae916a34c21108b00bf251d";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager hardware-interface robot-state-publisher rosgraph-msgs rostest sensor-msgs std-msgs xacro ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller pluginlib realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
