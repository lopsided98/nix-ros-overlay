
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, control-toolbox, diagnostic-msgs, eigen-conversions, filters, geometry-msgs, kdl-parser, libtool, message-filters, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-mechanism-model, realtime-tools, roscpp, rospy, std-msgs, tf, tf-conversions, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-robot-mechanism-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/robot_mechanism_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "47c7eb96c4e87aaf97b7787dd7b89125bbc08ecc8dc50ce58ab501ce7f9ecbca";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox diagnostic-msgs eigen-conversions filters geometry-msgs kdl-parser libtool message-filters message-runtime pluginlib pr2-controller-interface pr2-controller-manager pr2-controllers-msgs pr2-mechanism-model realtime-tools roscpp rospy std-msgs tf tf-conversions trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
