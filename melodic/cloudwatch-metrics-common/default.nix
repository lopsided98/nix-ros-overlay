
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-common";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_metrics_common/1.0.1-0.tar.gz;
    sha256 = "05af61ad2cb0a12df52a90b5ecc8f812a40bebe45e3a243930ff568f3655e98e";
  };

  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake aws-common ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    #license = lib.licenses.Apache 2.0;
  };
}
