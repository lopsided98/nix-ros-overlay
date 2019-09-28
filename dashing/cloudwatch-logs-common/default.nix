
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, ament-cmake-gmock, dataflow-lite, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logs-common";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_logs_common/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "959c34399c5ba6905d20b4f08ce75fee42a853f14d72d3199fff9eb24c420267";
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
