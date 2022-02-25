
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gtest }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-common";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_metrics_common/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "ffe43bbe3567d57586e1cee957002b8123d07a3d70508081d4e783fccf801d8c";
  };

  buildType = "cmake";
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
