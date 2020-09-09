
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, pluginlib, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-test-diagnostic-aggregator";
  version = "1.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/test_diagnostic_aggregator/1.10.2-1.tar.gz";
    name = "1.10.2-1.tar.gz";
    sha256 = "3677c12737db9d85180220c33166fbe666b9a807684686e1946788437355d412";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic diagnostic_aggregator tests are  in the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
