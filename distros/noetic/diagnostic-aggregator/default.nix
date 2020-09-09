
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bondcpp, bondpy, catkin, diagnostic-msgs, pluginlib, roscpp, rospy, rostest, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-diagnostic-aggregator";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/diagnostic_aggregator/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "51d6db5bd77af205d2c7123371b06c0d74199c6b9b95185fb9da3f40498c4483";
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
