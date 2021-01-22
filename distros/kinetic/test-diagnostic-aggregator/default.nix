
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, pluginlib, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-test-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/test_diagnostic_aggregator/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "51a8ae09d06caaf2521869f374a5e44348f37850a75b7ea0e0252a69b49d10e1";
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
