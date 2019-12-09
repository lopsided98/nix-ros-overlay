
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cloudwatch-logs-common, std-msgs, aws-ros1-common, std-srvs, catkin, roscpp, gtest, gmock, aws-common, rostest }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logger";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/kinetic/cloudwatch_logger/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "98734d499324a044e0099062ae3c32e342b813457822a521acec95f878d0c7a4";
  };

  buildType = "catkin";
  buildInputs = [ cloudwatch-logs-common std-msgs std-srvs aws-ros1-common roscpp aws-common ];
  checkInputs = [ gtest gmock rostest ];
  propagatedBuildInputs = [ cloudwatch-logs-common std-msgs std-srvs aws-ros1-common roscpp aws-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
