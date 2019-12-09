
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, eigen-conversions, pluginlib, libtool, tf, kdl-parser, diagnostic-msgs, pr2-controller-interface, message-filters, pr2-mechanism-model, std-msgs, filters, catkin, realtime-tools, roscpp, angles, rospy, message-generation, control-msgs, trajectory-msgs, actionlib, pr2-controllers-msgs, message-runtime, tf-conversions, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-robot-mechanism-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/robot_mechanism_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "9872fd46f89691f6d95342683735e9963d8f170889c5ccc2f2e9a01d437e3800";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs control-toolbox eigen-conversions pluginlib libtool tf kdl-parser diagnostic-msgs pr2-controller-interface pr2-mechanism-model message-filters std-msgs filters realtime-tools roscpp angles message-generation control-msgs trajectory-msgs actionlib pr2-controllers-msgs tf-conversions pr2-controller-manager ];
  propagatedBuildInputs = [ geometry-msgs control-toolbox eigen-conversions pluginlib libtool tf kdl-parser diagnostic-msgs pr2-controller-interface pr2-mechanism-model message-filters std-msgs filters realtime-tools roscpp angles rospy control-msgs trajectory-msgs actionlib pr2-controllers-msgs message-runtime tf-conversions pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
