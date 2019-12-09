
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ament-cmake-gmock, file-management, dataflow-lite, aws-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logs-common";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_logs_common/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "02a0f0b6fa4f57da332b379dbb2b5d12a1dae647be942232c6078430f38c1ee7";
  };

  buildType = "cmake";
  buildInputs = [ file-management dataflow-lite aws-common ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ dataflow-lite file-management aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
