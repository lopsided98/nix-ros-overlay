
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_metrics_common/1.0.1-1.tar.gz;
    sha256 = "80bb44578788707b799a0b5d6ae287c00d145100e92b3ff4d4ad55179deb5233";
  };

  buildInputs = [ aws-common ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Library used by ROS1/2 node to publish metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
