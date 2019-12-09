
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, catkin, cmake, gtest, gmock, dataflow-lite, aws-common }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-common";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_metrics_common/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "3c282acd458d7f092443dffc0cff8da79fa23186931f6bc1b4d9886ce15695b9";
  };

  buildType = "cmake";
  buildInputs = [ file-management dataflow-lite aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite file-management aws-common ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
