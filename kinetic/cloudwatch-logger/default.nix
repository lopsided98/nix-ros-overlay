
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, aws-common, cloudwatch-logs-common, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logger";
  version = "2.1.0-r2";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/kinetic/cloudwatch_logger/2.1.0-2.tar.gz;
    sha256 = "006d0e5a98afaf1c9bf2d20205f4a8641a343087e6da46e6a869b6f8a125aa5f";
  };

  buildInputs = [ aws-ros1-common aws-common roscpp cloudwatch-logs-common ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ aws-ros1-common aws-common roscpp cloudwatch-logs-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
