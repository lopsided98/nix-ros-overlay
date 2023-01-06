
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-controller";
  version = "0.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_state_controller/0.21.0-1.tar.gz";
    name = "0.21.0-1.tar.gz";
    sha256 = "481caa3fa4796a9094a2c572b686bf9ebfd2e349e0681cac3d33b447f22b2ff7";
  };

  buildType = "catkin";
  buildInputs = [ catkin pluginlib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
