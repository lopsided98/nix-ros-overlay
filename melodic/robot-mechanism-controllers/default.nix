
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, rospy, actionlib, tf-conversions, diagnostic-msgs, tf, geometry-msgs, realtime-tools, message-filters, pr2-controller-manager, message-generation, message-runtime, angles, eigen-conversions, pr2-controllers-msgs, control-msgs, trajectory-msgs, catkin, libtool, std-msgs, roscpp, pr2-mechanism-model, kdl-parser, pr2-controller-interface, pluginlib, control-toolbox }:
buildRosPackage {
  pname = "ros-melodic-robot-mechanism-controllers";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/robot_mechanism_controllers/1.10.16-1.tar.gz;
    sha256 = "5b89dc10710bc53e63ea53a93c0ae5634fd0ebd2da3a17b31c693dc6518bb6f2";
  };

  buildInputs = [ filters actionlib tf-conversions diagnostic-msgs tf geometry-msgs realtime-tools message-filters pr2-controller-manager message-generation angles eigen-conversions pr2-controllers-msgs control-msgs trajectory-msgs libtool std-msgs roscpp pr2-mechanism-model kdl-parser pr2-controller-interface pluginlib control-toolbox ];
  propagatedBuildInputs = [ filters actionlib tf-conversions rospy diagnostic-msgs tf geometry-msgs realtime-tools message-filters pr2-controller-manager message-runtime angles eigen-conversions pr2-controllers-msgs control-msgs trajectory-msgs libtool std-msgs roscpp pr2-mechanism-model kdl-parser pr2-controller-interface pluginlib control-toolbox ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
