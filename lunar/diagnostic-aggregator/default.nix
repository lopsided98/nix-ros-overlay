
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, bondcpp, bondpy, catkin, rostest, xmlrpcpp, rospy, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/diagnostic_aggregator/1.9.3-0.tar.gz;
    sha256 = "27d89805025bf504ae3f1ce2b1889b15ee4b58cb14f69d92869967940bd004c0";
  };

  buildInputs = [ rostest pluginlib xmlrpcpp rospy bondcpp bondpy roscpp diagnostic-msgs ];
  propagatedBuildInputs = [ pluginlib xmlrpcpp rospy bondcpp bondpy roscpp diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    #license = lib.licenses.BSD;
  };
}
