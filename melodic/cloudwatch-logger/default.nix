
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, aws-common, cloudwatch-logs-common, aws-ros1-common, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-logger";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/melodic/cloudwatch_logger/2.0.0-1.tar.gz;
    sha256 = "1807f520e5a757a72c0c46f40c1e114e7b743ad0ff5e9452579496be857ce3e3";
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
