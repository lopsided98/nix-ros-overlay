
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, launch, cloudwatch-logs-common, std-srvs, launch-ros, ament-cmake, rcl-interfaces, ament-cmake-gmock, rclcpp, aws-common }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logger";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/dashing/cloudwatch_logger/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "2bc69c3139f5bd23ed2a69807c040b880871a171aa344b244ad4ff8dac82be65";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-ros2-common rclcpp cloudwatch-logs-common std-srvs rcl-interfaces aws-common ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-ros2-common rclcpp launch cloudwatch-logs-common std-srvs launch-ros aws-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
