
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, diagnostic-msgs, pluginlib, pr2-controller-interface, pr2-description, pr2-hardware-interface, pr2-mechanism-diagnostics, pr2-mechanism-model, pr2-mechanism-msgs, realtime-tools, roscpp, rosparam, rospy, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controller-manager";
  version = "1.8.17";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_controller_manager/1.8.17-0.tar.gz";
    name = "1.8.17-0.tar.gz";
    sha256 = "d0d577b2683d834e7da013d1e06ec4ea4f5851344215240844a176845b01d688";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules rostest ];
  propagatedBuildInputs = [ diagnostic-msgs pluginlib pr2-controller-interface pr2-description pr2-hardware-interface pr2-mechanism-diagnostics pr2-mechanism-model pr2-mechanism-msgs realtime-tools roscpp rosparam rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
