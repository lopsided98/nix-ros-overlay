
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logs-common";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_logs_common/1.0.1-1.tar.gz;
    sha256 = "981400211d0443ab558868c8f90dffc5d5021291bbf204827cf5d832b735fe97";
  };

  buildInputs = [ aws-common ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
