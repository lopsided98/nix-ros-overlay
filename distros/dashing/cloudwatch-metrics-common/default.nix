
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, aws-common, cmake, dataflow-lite, file-management }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-common";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_metrics_common/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "6f99b5a7abac254acb71a5857b3d7233bce11c1417f2bdaeb17651c34122ba23";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
