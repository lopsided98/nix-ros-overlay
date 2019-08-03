
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, dataflow-lite, gtest, catkin, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logs-common";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_common-release/archive/release/kinetic/cloudwatch_logs_common/1.1.0-2.tar.gz;
    sha256 = "8819864f2a0a3017184a1e882204609b8582655615063ee36c3c78f5e178a611";
  };

  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
