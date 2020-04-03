
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gmock, gtest }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-common";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_metrics_common/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "0ddb4fa17d979a3e9b966ad684099ce481f33173d85511d84b0b87b467936cf6";
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
