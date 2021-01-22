
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, diagnostic-msgs, pluginlib, roscpp, rospy, rostest, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-aggregator";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_aggregator/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "7dd96707460744a7d34fcabf80a8d8aad89da24f7e71d8892cb80fbd30bbb92b";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ bondcpp bondpy diagnostic-msgs pluginlib roscpp rospy xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''diagnostic_aggregator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
