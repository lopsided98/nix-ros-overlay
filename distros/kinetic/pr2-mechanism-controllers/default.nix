
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, diagnostic-msgs, diagnostic-updater, filters, geometry-msgs, message-generation, message-runtime, nav-msgs, pluginlib, pr2-controller-interface, pr2-controllers-msgs, pr2-mechanism-model, pr2-mechanism-msgs, pr2-msgs, realtime-tools, robot-mechanism-controllers, rosconsole, roscpp, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-controllers";
  version = "1.10.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_mechanism_controllers/1.10.14-0.tar.gz";
    name = "1.10.14-0.tar.gz";
    sha256 = "9d2484a38c6db5057f097dec74cbd66a8d8ba01b1c7050f82f16f56f2d77be94";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ angles control-toolbox diagnostic-msgs diagnostic-updater filters geometry-msgs message-runtime nav-msgs pluginlib pr2-controller-interface pr2-controllers-msgs pr2-mechanism-model pr2-mechanism-msgs pr2-msgs realtime-tools robot-mechanism-controllers rosconsole roscpp rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mechanism_controllers package contains realtime
    controllers that are meant for specific mechanisms of the PR2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
