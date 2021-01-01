
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-controller";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_state_controller/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "2b31f7599a1a6680d18e99f931e0e3bdfb55953e430f1d10e9d3516f5a33e171";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish joint state'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
