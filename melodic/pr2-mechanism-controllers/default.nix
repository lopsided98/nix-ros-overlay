
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, rosconsole, rospy, diagnostic-msgs, tf, geometry-msgs, realtime-tools, message-generation, message-runtime, angles, pr2-msgs, pr2-controllers-msgs, pr2-mechanism-msgs, catkin, robot-mechanism-controllers, nav-msgs, std-msgs, roscpp, visualization-msgs, pr2-mechanism-model, pr2-controller-interface, pluginlib, control-toolbox, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-controllers";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_mechanism_controllers/1.10.15-1.tar.gz;
    sha256 = "890a0f35fb6cc047e87cc265a82e5e54988d7095db41b53f4182590b434ed6ec";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs filters rosconsole robot-mechanism-controllers nav-msgs rospy std-msgs diagnostic-msgs roscpp tf pr2-mechanism-model visualization-msgs geometry-msgs pr2-controller-interface pluginlib control-toolbox realtime-tools diagnostic-updater message-runtime angles pr2-msgs ];
  nativeBuildInputs = [ pr2-controllers-msgs pr2-mechanism-msgs filters rosconsole catkin robot-mechanism-controllers nav-msgs rospy std-msgs diagnostic-msgs roscpp tf pr2-mechanism-model visualization-msgs geometry-msgs pr2-controller-interface pluginlib control-toolbox realtime-tools diagnostic-updater message-generation angles pr2-msgs ];

  meta = {
    description = ''The pr2_mechanism_controllers package contains realtime
    controllers that are meant for specific mechanisms of the PR2.'';
    #license = lib.licenses.BSD;
  };
}
