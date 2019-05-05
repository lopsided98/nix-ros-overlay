
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, gtest, cmake }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logs-common";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_logs_common/1.0.1-0.tar.gz;
    sha256 = "cda8f3c7329460e52f3d90c4072ab345cfd7de20b8faee0b99895644f0639312";
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
