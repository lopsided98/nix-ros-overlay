
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, cloudwatch-logs-common, gmock, gtest, roscpp, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logger";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/kinetic/cloudwatch_logger/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "30dc9d555f677995a3f02535c6fc8811ba3a0f6d04c68220e7f2cf200bd7d3dd";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common cloudwatch-logs-common roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
