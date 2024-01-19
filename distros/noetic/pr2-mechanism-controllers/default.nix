
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, diagnostic-msgs, diagnostic-updater, filters, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, pr2-controller-interface, pr2-controllers-msgs, pr2-mechanism-model, pr2-mechanism-msgs, pr2-msgs, realtime-tools, robot-mechanism-controllers, rosconsole, roscpp, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-mechanism-controllers";
  version = "1.10.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/pr2_mechanism_controllers/1.10.18-1.tar.gz";
    name = "1.10.18-1.tar.gz";
    sha256 = "5126a1cb20e26793ed2c29a3aea466c4832fdab5cd0675cc665b20c266701ce7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ angles control-toolbox diagnostic-msgs diagnostic-updater filters geometry-msgs message-runtime nav-msgs pluginlib pr2-controller-interface pr2-controllers-msgs pr2-mechanism-model pr2-mechanism-msgs pr2-msgs realtime-tools robot-mechanism-controllers rosconsole roscpp rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism_controllers package contains realtime
    controllers that are meant for specific mechanisms of the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
