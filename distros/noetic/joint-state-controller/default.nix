
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-controller";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_state_controller/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "60971dd00558f070dd85da9d25f68a2ecb438137f19550485c630fa673cea251";
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
