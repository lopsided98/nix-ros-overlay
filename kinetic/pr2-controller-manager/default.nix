
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, pr2-mechanism-model, diagnostic-msgs, pr2-description, pluginlib, pr2-mechanism-diagnostics, catkin, cmake-modules, rosparam, pr2-controller-interface, realtime-tools, roscpp, pr2-hardware-interface, rospy, rostest, pr2-mechanism-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controller-manager";
  version = "1.8.17";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_controller_manager/1.8.17-0.tar.gz";
    name = "1.8.17-0.tar.gz";
    sha256 = "d0d577b2683d834e7da013d1e06ec4ea4f5851344215240844a176845b01d688";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs pr2-mechanism-model diagnostic-msgs pr2-description pluginlib pr2-mechanism-diagnostics cmake-modules pr2-controller-interface realtime-tools roscpp pr2-hardware-interface rostest pr2-mechanism-msgs ];
  propagatedBuildInputs = [ sensor-msgs pr2-mechanism-model diagnostic-msgs pr2-description pluginlib pr2-mechanism-diagnostics rosparam pr2-controller-interface realtime-tools roscpp pr2-hardware-interface rospy pr2-mechanism-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
