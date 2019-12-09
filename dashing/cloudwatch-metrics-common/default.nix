
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ament-cmake-gmock, file-management, dataflow-lite, aws-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-common";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/dashing/cloudwatch_metrics_common/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "aa6226c67e5609a4c0266f64492155d352b404564ee9839f8aaa3277bd68432e";
  };

  buildType = "cmake";
  buildInputs = [ file-management dataflow-lite aws-common ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ dataflow-lite file-management aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
