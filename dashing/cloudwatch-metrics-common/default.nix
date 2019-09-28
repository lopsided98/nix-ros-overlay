
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, ament-cmake-gmock, dataflow-lite, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-common";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_metrics_common/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "30cb38d89cab29d88538f07f4c698e89755b60a71d3e403531806549ddb84c11";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ ament-cmake-gtest ament-cmake-gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
