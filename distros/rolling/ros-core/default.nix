
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-cpp, ament-index-python, ament-lint-auto, ament-lint-common, class-loader, common-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, launch-xml, launch-yaml, pluginlib, rcl-lifecycle, rclcpp, rclcpp-action, rclcpp-lifecycle, rclpy, ros-environment, ros2cli-common-extensions, ros2launch, rosidl-default-generators, rosidl-default-runtime, sros2, sros2-cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-core";
  version = "0.10.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "variants-release";
        rev = "release/rolling/ros_core/0.10.0-1";
        sha256 = "sha256-Oq1qKMDCrNKnoDWlaZtBuCMhiDEWEaPoyvkumjxWuFg=";
      };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake ament-cmake-auto ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-index-cpp ament-index-python ament-lint-auto ament-lint-common class-loader common-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros launch-xml launch-yaml pluginlib rcl-lifecycle rclcpp rclcpp-action rclcpp-lifecycle rclpy ros-environment ros2cli-common-extensions ros2launch rosidl-default-generators rosidl-default-runtime sros2 sros2-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package to aggregate the packages required to use publish / subscribe, services, generate messages and other core ROS concepts.'';
    license = with lib.licenses; [ asl20 ];
  };
}
