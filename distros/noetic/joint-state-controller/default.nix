
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joint-state-controller";
  version = "0.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/noetic/joint_state_controller/0.18.0-1.tar.gz";
    name = "0.18.0-1.tar.gz";
    sha256 = "2b3305f5d86be2e61aecffdb5605c502f3384787595018134ecde89dfa912298";
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
