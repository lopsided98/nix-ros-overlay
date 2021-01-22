
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-common";
  version = "1.1.5-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_metrics_common/1.1.5-2.tar.gz";
    name = "1.1.5-2.tar.gz";
    sha256 = "0ecbbae6720a7bd62f44db9864ffb9676cc9a9f97b5ede6d1145a7fb1a561d7c";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
