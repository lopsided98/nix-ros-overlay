
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake, dataflow-lite, file-management }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logs-common";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_logs_common/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "774e21f3b7e04156c08596e67f0c04696d8f91f95e16618ff5c5cdf353431450";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
