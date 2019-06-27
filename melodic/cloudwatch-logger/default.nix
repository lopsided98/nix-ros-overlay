
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, aws-common, cloudwatch-logs-common, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logger";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/melodic/cloudwatch_logger/2.1.0-1.tar.gz;
    sha256 = "959398f364fb17914a2236732b98425db13aee0dfaee503a39741c9b4daead33";
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
