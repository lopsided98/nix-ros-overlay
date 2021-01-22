
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, aws-common, aws-ros2-common, cloudwatch-metrics-common, launch, launch-ros, rclcpp, rmw-implementation, ros-monitoring-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-cloudwatch-metrics-collector";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/dashing/cloudwatch_metrics_collector/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "41e7c4eb96ba963bcbdcf4e0e0188c54b52e56239fa10b4ab3658ab2cf5a8d7a";
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
