
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, pluginlib, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-test-diagnostic-aggregator";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/test_diagnostic_aggregator/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "906daf33a3082bfa16016e05efa5fb009504735474c60e3e6b3e70c8b4acbbdd";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs pluginlib roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Basic diagnostic_aggregator tests are  in the";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
