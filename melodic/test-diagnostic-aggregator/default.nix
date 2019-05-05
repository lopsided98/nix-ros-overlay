
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rostest, rospy, diagnostic-msgs, roscpp, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-test-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/test_diagnostic_aggregator/1.9.3-0.tar.gz;
    sha256 = "4c49680ea5fe2d6e4c792d09848623c3b0206126ad171c4b4dd61f400c9abfe3";
  };

  buildInputs = [ pluginlib rostest rospy diagnostic-msgs roscpp diagnostic-aggregator ];
  propagatedBuildInputs = [ pluginlib rospy diagnostic-msgs roscpp diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Basic diagnostic_aggregator tests are  in the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
