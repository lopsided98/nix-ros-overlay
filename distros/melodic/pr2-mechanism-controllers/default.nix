
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, diagnostic-msgs, diagnostic-updater, filters, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, pr2-controller-interface, pr2-controllers-msgs, pr2-mechanism-model, pr2-mechanism-msgs, pr2-msgs, realtime-tools, robot-mechanism-controllers, rosconsole, roscpp, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-mechanism-controllers";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_mechanism_controllers/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "213c8983bad691bed5ffb69f027bf2035927a2ff2b45a7b87fd0547444c5db14";
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
