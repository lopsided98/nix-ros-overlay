
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, aws-common, aws-ros2-common, cloudwatch-metrics-common, launch, launch-ros, rclcpp, rmw-implementation, ros-monitoring-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-collector";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/dashing/cloudwatch_metrics_collector/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "bc55f53db04781623c25c55f2b2e63d136f0bb3b799ab4757ee0598e2819107c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-common aws-ros2-common cloudwatch-metrics-common launch launch-ros rclcpp rmw-implementation ros-monitoring-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    license = with lib.licenses; [ asl20 ];
  };
}
