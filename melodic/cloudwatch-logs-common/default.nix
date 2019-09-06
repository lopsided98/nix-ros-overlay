
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, file-management, dataflow-lite, gtest, catkin, aws-common, cmake, gmock }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logs-common";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_logs_common/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1901327f87e630ea72137860d5dd79b9f1ca0770748aa4915cb8230c34d92f70";
  };

  buildType = "cmake";
  buildInputs = [ dataflow-lite aws-common file-management ];
  checkInputs = [ gtest gmock ];
  propagatedBuildInputs = [ dataflow-lite aws-common file-management ];
  nativeBuildInputs = [ cmake catkin ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
