
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, forward-command-controller, hardware-interface, pluginlib, realtime-tools, robot-state-publisher, rosgraph-msgs, rostest, sensor-msgs, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "f646bf26b6253bccccd8b69dfbc2bcb0c5a956101019d2265edc5f0d330fac58";
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
