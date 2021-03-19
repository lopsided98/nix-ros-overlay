
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, pluginlib, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-test-diagnostic-aggregator";
  version = "1.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/test_diagnostic_aggregator/1.10.4-1.tar.gz";
    name = "1.10.4-1.tar.gz";
    sha256 = "d3267d8a07e6ac5b14a94b43dd32a2d1931df27ab18d881e38ef706345e86c4a";
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
