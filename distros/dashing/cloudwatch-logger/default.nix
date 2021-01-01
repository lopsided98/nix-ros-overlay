
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, aws-common, aws-ros2-common, cloudwatch-logs-common, launch, launch-ros, rcl-interfaces, rclcpp, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-logger";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_logger-release/archive/release/dashing/cloudwatch_logger/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "75a541dfb583d5f056a7e8f2042313984f625ec66c549e0753a408a2088dfc19";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl-interfaces ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-common aws-ros2-common cloudwatch-logs-common launch launch-ros rclcpp std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CloudWatch Logger node for publishing logs to AWS CloudWatch Logs'';
    license = with lib.licenses; [ asl20 ];
  };
}
