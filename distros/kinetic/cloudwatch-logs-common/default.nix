
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logs-common";
  version = "1.1.5-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_logs_common/1.1.5-2.tar.gz";
    name = "1.1.5-2.tar.gz";
    sha256 = "1526ea2072a5c810d14c743342c8c91fdf7adbbf9833ebaa4eca6ece74b9b8c1";
  };

  buildType = "cmake";
  checkInputs = [ gmock gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
