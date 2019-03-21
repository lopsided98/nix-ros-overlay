
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, rostest, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.14.3-0.tar.gz;
    sha256 = "23c02e2b6b37c5502acb54ae071ee257f7803f0265d1b5e301444762108999a0";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools sensor-msgs roscpp ];
  nativeBuildInputs = [ hardware-interface controller-interface catkin pluginlib realtime-tools sensor-msgs roscpp ];

  meta = {
    description = ''Controller to publish joint state'';
    #license = lib.licenses.BSD;
  };
}
