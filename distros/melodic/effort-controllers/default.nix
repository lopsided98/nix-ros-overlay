
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, pluginlib, realtime-tools, robot-state-publisher, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "b7d33eecf773200de884f85cba7079e726966b5b8d8f094a60602f76cca1d203";
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
