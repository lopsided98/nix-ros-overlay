
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, demo-nodes-cpp, libstatistics-collector, lifecycle-msgs, message-filters, python3Packages, rcl, rclcpp, rclcpp-components, rclcpp-lifecycle, rclpy, rcpputils, rcutils, ros2launch, ros2lifecycle, ros2topic, rosidl-default-generators, rosidl-default-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-system-metrics-collector";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-tooling";
        repo = "system_metrics_collector-release";
        rev = "release/foxy/system_metrics_collector/0.1.1-1";
        sha256 = "sha256-udhrr1Uzr8NnyxADISCZOOKuQOqvx2PI8o/o9PG7t4w=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common class-loader lifecycle-msgs python3Packages.retrying rclpy ros2launch ros2lifecycle ros2topic ];
  propagatedBuildInputs = [ demo-nodes-cpp libstatistics-collector message-filters rcl rclcpp rclcpp-components rclcpp-lifecycle rcpputils rcutils rosidl-default-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node and aggregation utilities to measure and publish system metrics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
