
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, catkin, cmake, gtest, gmock, dataflow-lite, aws-common }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logs-common";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_logs_common/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "9112c93641794ca1c8bd3c51becbf8509d772ed61f5420349877544ecee5bdc9";
  };

  buildType = "cmake";
  buildInputs = [ file-management dataflow-lite aws-common ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite file-management aws-common ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
