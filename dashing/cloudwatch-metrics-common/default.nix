
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, ament-cmake-gmock, dataflow-lite, ament-cmake-gtest, aws-common, cmake }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-common";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_metrics_common/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6e4be9e356ace32eab46d1811e486cb02fff75d35e6af45b21ff2ce4c970afb1";
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
