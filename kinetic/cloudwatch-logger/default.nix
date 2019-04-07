
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, aws-common, cloudwatch-logs-common, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-logger";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/kinetic/cloudwatch_logger/2.0.0-1.tar.gz;
    sha256 = "4c686f7bc3ed2e1b687d9f90a2f2fddb905f63dd72422dc15e9cda42cf47f798";
  };

  buildInputs = [ aws-ros1-common aws-common roscpp cloudwatch-logs-common ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ aws-ros1-common aws-common roscpp cloudwatch-logs-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    #license = lib.licenses.Apache 2.0;
  };
}
