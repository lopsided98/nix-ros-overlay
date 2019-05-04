
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, pr2-hardware-interface, pluginlib, pr2-description, cmake-modules, pr2-controller-interface, pr2-mechanism-diagnostics, realtime-tools, catkin, sensor-msgs, rosparam, rostest, rospy, diagnostic-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controller-manager";
  version = "1.8.17";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_controller_manager/1.8.17-0.tar.gz;
    sha256 = "d0d577b2683d834e7da013d1e06ec4ea4f5851344215240844a176845b01d688";
  };

  buildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib cmake-modules pr2-controller-interface pr2-mechanism-diagnostics realtime-tools sensor-msgs pr2-description rostest diagnostic-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib pr2-controller-interface pr2-description pr2-mechanism-diagnostics realtime-tools rosparam sensor-msgs rospy diagnostic-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
