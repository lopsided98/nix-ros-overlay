
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, pluginlib, tf, nav-msgs, diagnostic-msgs, pr2-controller-interface, rosconsole, pr2-mechanism-msgs, pr2-mechanism-model, pr2-msgs, std-msgs, filters, catkin, realtime-tools, roscpp, angles, message-generation, rospy, robot-mechanism-controllers, visualization-msgs, diagnostic-updater, pr2-controllers-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_mechanism_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "9d2484a38c6db5057f097dec74cbd66a8d8ba01b1c7050f82f16f56f2d77be94";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs control-toolbox pluginlib tf nav-msgs diagnostic-msgs pr2-controller-interface rosconsole pr2-mechanism-msgs pr2-mechanism-model pr2-msgs std-msgs filters realtime-tools roscpp angles rospy message-generation robot-mechanism-controllers visualization-msgs diagnostic-updater pr2-controllers-msgs ];
  propagatedBuildInputs = [ geometry-msgs control-toolbox pluginlib tf nav-msgs diagnostic-msgs pr2-controller-interface rosconsole pr2-mechanism-msgs pr2-mechanism-model pr2-msgs std-msgs filters realtime-tools roscpp angles rospy robot-mechanism-controllers visualization-msgs diagnostic-updater pr2-controllers-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism_controllers package contains realtime
    controllers that are meant for specific mechanisms of the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
