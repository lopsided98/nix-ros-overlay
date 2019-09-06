
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, sensor-msgs, catkin, rostest, controller-interface, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-joint-state-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/joint_state_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "50d0f2fa818edd65260c974843e584e7556fecc7ca3058950d6f9aef30162951";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface pluginlib realtime-tools sensor-msgs controller-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
