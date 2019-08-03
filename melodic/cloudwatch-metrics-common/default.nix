
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, dataflow-lite, gtest, catkin, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-common";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_metrics_common/1.1.0-1.tar.gz;
    sha256 = "6d863bb18e1f995e5e4e2b80aff9fe00be3e0dc48724b8e89165fae56d32b169";
  };

  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
