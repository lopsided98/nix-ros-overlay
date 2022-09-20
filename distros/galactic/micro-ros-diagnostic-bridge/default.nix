
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, diagnostic-msgs, micro-ros-diagnostic-msgs, osrf-testing-tools-cpp, rclcpp, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-micro-ros-diagnostic-bridge";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_diagnostics-release/archive/release/galactic/micro_ros_diagnostic_bridge/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "3b08de9b4e85c55984fd2c919826eef8e2c7442a251f39dd182f6e656f6ec545";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common diagnostic-msgs micro-ros-diagnostic-msgs osrf-testing-tools-cpp ros-environment ];
  propagatedBuildInputs = [ diagnostic-msgs micro-ros-diagnostic-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Translates micro-ROS diagnostic messages to vanilla ROS 2 diagnostic messages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
