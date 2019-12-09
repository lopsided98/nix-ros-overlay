
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, diagnostic-msgs, bondpy, xmlrpcpp, pluginlib, catkin, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/diagnostic_aggregator/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "60f22960bd3056e62b0d354e4de2b80c3f5e377e31e330c91d82b0c4dcd8e70c";
  };

  buildType = "catkin";
  buildInputs = [ bondcpp rostest diagnostic-msgs pluginlib roscpp bondpy rospy xmlrpcpp ];
  propagatedBuildInputs = [ bondcpp diagnostic-msgs pluginlib roscpp bondpy rospy xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
