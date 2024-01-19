
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, control-toolbox, diagnostic-msgs, eigen-conversions, filters, geometry-msgs, kdl-parser, libtool, message-filters, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-mechanism-model, realtime-tools, roscpp, rospy, std-msgs, tf, tf-conversions, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-robot-mechanism-controllers";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/robot_mechanism_controllers/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "74305f5067b74273f7fd18d723134d8616b25231a2aa64db5e97cedd3582a847";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox diagnostic-msgs eigen-conversions filters geometry-msgs kdl-parser libtool message-filters message-runtime pluginlib pr2-controller-interface pr2-controller-manager pr2-controllers-msgs pr2-mechanism-model realtime-tools roscpp rospy std-msgs tf tf-conversions trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
