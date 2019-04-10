
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, rospy, actionlib, tf-conversions, diagnostic-msgs, tf, geometry-msgs, realtime-tools, message-filters, pr2-controller-manager, message-generation, message-runtime, angles, eigen-conversions, pr2-controllers-msgs, control-msgs, trajectory-msgs, catkin, libtool, std-msgs, roscpp, pr2-mechanism-model, kdl-parser, pr2-controller-interface, pluginlib, control-toolbox }:
buildRosPackage {
  pname = "ros-lunar-robot-mechanism-controllers";
  version = "1.10.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/lunar/robot_mechanism_controllers/1.10.15-0.tar.gz;
    sha256 = "8c4aee6056447c63d40f7dc7cd88b783995f598f61a7401379d33376b99a4c51";
  };

  buildInputs = [ pr2-controllers-msgs filters control-msgs trajectory-msgs libtool actionlib tf-conversions std-msgs diagnostic-msgs roscpp tf pr2-mechanism-model geometry-msgs kdl-parser pr2-controller-interface pluginlib control-toolbox realtime-tools message-filters pr2-controller-manager message-generation angles eigen-conversions ];
  propagatedBuildInputs = [ pr2-controllers-msgs filters control-msgs trajectory-msgs libtool actionlib std-msgs tf-conversions rospy tf roscpp pr2-mechanism-model diagnostic-msgs geometry-msgs kdl-parser pr2-controller-interface pluginlib control-toolbox realtime-tools message-filters pr2-controller-manager message-runtime angles eigen-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    #license = lib.licenses.BSD;
  };
}
