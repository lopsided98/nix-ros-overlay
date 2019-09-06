
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, bondcpp, bondpy, catkin, rostest, xmlrpcpp, rospy, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/diagnostic_aggregator/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "d57390287aaa8d8b86d146c67802505de9fee725577fb41c6ff2cbc404816b95";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib bondcpp bondpy rostest xmlrpcpp rospy diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pluginlib bondcpp bondpy xmlrpcpp rospy diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
