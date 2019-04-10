
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rostest, rospy, diagnostic-msgs, roscpp, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-lunar-test-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/lunar/test_diagnostic_aggregator/1.9.3-0.tar.gz;
    sha256 = "5502c53d3770c04a7bcb406a81c21ec569f2ec30edb55b6eb72d8b3c9be774f0";
  };

  buildInputs = [ rostest pluginlib rospy diagnostic-msgs roscpp diagnostic-aggregator ];
  propagatedBuildInputs = [ pluginlib rospy diagnostic-msgs roscpp diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic diagnostic_aggregator tests are  in the'';
    #license = lib.licenses.BSD;
  };
}
