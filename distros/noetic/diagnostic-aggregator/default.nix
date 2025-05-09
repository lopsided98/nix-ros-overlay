
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, diagnostic-msgs, pluginlib, roscpp, rospy, rostest, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-aggregator";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_aggregator/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "c01411f84fd4ed35804e6cfa0ad8dbfa0e94553d8832db465dc9e1d3eaff8ebe";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ bondcpp bondpy diagnostic-msgs pluginlib roscpp rospy xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "diagnostic_aggregator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
