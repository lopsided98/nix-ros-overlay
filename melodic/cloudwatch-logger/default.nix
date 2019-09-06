
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, rostest, aws-common, cloudwatch-logs-common, std-msgs, aws-ros1-common, roscpp, gmock }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logger";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/melodic/cloudwatch_logger/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "03cca488a1f918e13adf56eda946a89c3858f949cac82f14ccc1cbeb9c3bce81";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs aws-common cloudwatch-logs-common std-msgs aws-ros1-common roscpp ];
  checkInputs = [ rostest gtest gmock ];
  propagatedBuildInputs = [ std-srvs aws-common cloudwatch-logs-common std-msgs aws-ros1-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
