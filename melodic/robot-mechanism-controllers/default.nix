
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, rospy, actionlib, tf-conversions, diagnostic-msgs, tf, geometry-msgs, realtime-tools, message-filters, pr2-controller-manager, message-generation, message-runtime, angles, eigen-conversions, pr2-controllers-msgs, control-msgs, trajectory-msgs, catkin, libtool, std-msgs, roscpp, pr2-mechanism-model, kdl-parser, pr2-controller-interface, pluginlib, control-toolbox }:
buildRosPackage {
  pname = "ros-melodic-robot-mechanism-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/robot_mechanism_controllers/1.10.17-1.tar.gz;
    sha256 = "9872fd46f89691f6d95342683735e9963d8f170889c5ccc2f2e9a01d437e3800";
  };

  buildInputs = [ filters actionlib tf-conversions diagnostic-msgs tf geometry-msgs realtime-tools message-filters pr2-controller-manager message-generation angles eigen-conversions pr2-controllers-msgs control-msgs trajectory-msgs libtool std-msgs roscpp pr2-mechanism-model kdl-parser pr2-controller-interface pluginlib control-toolbox ];
  propagatedBuildInputs = [ filters actionlib tf-conversions rospy diagnostic-msgs tf geometry-msgs realtime-tools message-filters pr2-controller-manager message-runtime angles eigen-conversions pr2-controllers-msgs control-msgs trajectory-msgs libtool std-msgs roscpp pr2-mechanism-model kdl-parser pr2-controller-interface pluginlib control-toolbox ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
