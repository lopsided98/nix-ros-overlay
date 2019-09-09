
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, ament-cmake-gmock, dataflow-lite, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logs-common";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_logs_common/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "569a934666bffe768204f21454537cf00a0bd582d5aba153424213f0876aa7a7";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
