
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, catkin, cmake, dataflow-lite, file-management, gtest }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logs-common";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_common-release/archive/release/melodic/cloudwatch_logs_common/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "34f60d17cd9747fc6f691ab0da37a5ae48f19d60e03e21fdf9e30582f625199c";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ aws-common dataflow-lite file-management ];
  nativeBuildInputs = [ catkin cmake ];

  meta = {
    description = ''AWS CloudWatch management library used by ROS1/2 node to publish logs to CloudWatch service'';
    license = with lib.licenses; [ asl20 ];
  };
}
