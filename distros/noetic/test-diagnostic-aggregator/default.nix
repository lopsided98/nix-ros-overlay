
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, pluginlib, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-test-diagnostic-aggregator";
  version = "1.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/test_diagnostic_aggregator/1.10.3-1.tar.gz";
    name = "1.10.3-1.tar.gz";
    sha256 = "9cc2fc2fbde8b5714e61d04e8d08cbd36be3e8b1e79ff3c0a601634458387d92";
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
