
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-state-controller";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_state_controller/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "eff367735f79b32aa52aba89499345d6b4389bb3cd2883d58f57c04b7ec89dd4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
