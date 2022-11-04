
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, pluginlib, realtime-tools, robot-state-publisher, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "87ac8f3079b57ca3c35361d3005d85c09170b21cf0b01fc2ac078fddf05c4ec1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager hardware-interface robot-state-publisher rosgraph-msgs rostest sensor-msgs std-msgs xacro ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller pluginlib realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
