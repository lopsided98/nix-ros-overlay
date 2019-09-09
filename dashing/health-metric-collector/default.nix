
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, ament-cmake, launch-ros, ament-cmake-gmock, launch, aws-common, rclcpp, ros-monitoring-msgs }:
buildRosPackage {
  pname = "ros-dashing-health-metric-collector";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/dashing/health_metric_collector/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "f9032183e052c43465f1a2ed6fd1e9da78ae4486e11e9f015abdf7f6e82276fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-common aws-ros2-common rclcpp ros-monitoring-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ launch-ros launch aws-common rclcpp ros-monitoring-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for sending health metrics to Cloudwatch Metrics'';
    license = with lib.licenses; [ asl20 ];
  };
}
