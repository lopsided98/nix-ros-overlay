
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, pluginlib, tf, nav-msgs, diagnostic-msgs, pr2-controller-interface, rosconsole, pr2-mechanism-msgs, pr2-mechanism-model, pr2-msgs, std-msgs, filters, catkin, realtime-tools, roscpp, angles, message-generation, rospy, robot-mechanism-controllers, visualization-msgs, diagnostic-updater, pr2-controllers-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_mechanism_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "213c8983bad691bed5ffb69f027bf2035927a2ff2b45a7b87fd0547444c5db14";
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
