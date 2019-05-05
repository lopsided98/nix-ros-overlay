
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, bondcpp, bondpy, catkin, rostest, xmlrpcpp, rospy, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_aggregator/1.9.3-0.tar.gz;
    sha256 = "60f22960bd3056e62b0d354e4de2b80c3f5e377e31e330c91d82b0c4dcd8e70c";
  };

  buildInputs = [ pluginlib bondcpp bondpy rostest xmlrpcpp rospy diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pluginlib bondcpp bondpy xmlrpcpp rospy diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
