
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, eigen-conversions, pluginlib, libtool, tf, kdl-parser, diagnostic-msgs, pr2-controller-interface, message-filters, pr2-mechanism-model, std-msgs, filters, catkin, realtime-tools, roscpp, angles, rospy, message-generation, control-msgs, trajectory-msgs, actionlib, pr2-controllers-msgs, message-runtime, tf-conversions, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-robot-mechanism-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/robot_mechanism_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "47c7eb96c4e87aaf97b7787dd7b89125bbc08ecc8dc50ce58ab501ce7f9ecbca";
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
