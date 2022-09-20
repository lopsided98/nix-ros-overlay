
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gtest }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-common";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_metrics_common/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "5bf53ce407e01c6461fb30d1cbb09721c2e452f52751c7bbf3fb0e80f6e10ed7";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
