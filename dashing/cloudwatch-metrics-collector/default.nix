
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-ros2-common, launch, std-msgs, cloudwatch-metrics-common, std-srvs, launch-ros, ament-cmake, ros-monitoring-msgs, ament-cmake-gmock, rmw-implementation, rclcpp, aws-common }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-collector";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/dashing/cloudwatch_metrics_collector/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "bc55f53db04781623c25c55f2b2e63d136f0bb3b799ab4757ee0598e2819107c";
  };

  buildType = "ament_cmake";
  buildInputs = [ aws-ros2-common rclcpp std-msgs std-srvs cloudwatch-metrics-common ros-monitoring-msgs rmw-implementation aws-common ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ aws-ros2-common rclcpp launch std-msgs std-srvs cloudwatch-metrics-common launch-ros ros-monitoring-msgs rmw-implementation aws-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    license = with lib.licenses; [ asl20 ];
  };
}
