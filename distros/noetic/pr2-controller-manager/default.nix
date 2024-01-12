
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, pluginlib, pr2-controller-interface, pr2-description, pr2-hardware-interface, pr2-mechanism-diagnostics, pr2-mechanism-model, pr2-mechanism-msgs, realtime-tools, robot-state-publisher, roscpp, roslaunch, rosparam, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-controller-manager";
  version = "1.8.21-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/pr2_controller_manager/1.8.21-1.tar.gz";
    name = "1.8.21-1.tar.gz";
    sha256 = "7ee04c0a574c04e73efba92a61e9d62cc44916ea119873ba1de723f49dd4f791";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ diagnostic-msgs pluginlib pr2-controller-interface pr2-description pr2-hardware-interface pr2-mechanism-diagnostics pr2-mechanism-model pr2-mechanism-msgs realtime-tools robot-state-publisher roscpp rosparam rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
