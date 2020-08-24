
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, demo-nodes-cpp, libstatistics-collector, lifecycle-msgs, message-filters, python3Packages, rcl, rclcpp, rclcpp-components, rclcpp-lifecycle, rclpy, rcpputils, rcutils, ros2launch, ros2lifecycle, ros2topic, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-metrics-collector";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-tooling/system_metrics_collector-release/archive/release/foxy/system_metrics_collector/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "41a20cdbcd754e2719c2e08ff5deab17157ad27080e353679784567727b4de08";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common class-loader lifecycle-msgs python3Packages.retrying rclpy ros2launch ros2lifecycle ros2topic ];
  propagatedBuildInputs = [ demo-nodes-cpp libstatistics-collector message-filters rcl rclcpp rclcpp-components rclcpp-lifecycle rcpputils rcutils rosidl-default-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node and aggregation utilities to measure and publish system metrics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
