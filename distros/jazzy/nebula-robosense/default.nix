
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-msgs, nebula-robosense-common, nebula-robosense-decoders, nebula-robosense-hw-interfaces, rclcpp, rclcpp-components, robosense-msgs, ros-environment, ros-testing, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d19ad41af0a1d6ffde00ab20e784a8b9e8b1fb45d4f33c9899a0d07404522e99";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater nebula-core-common nebula-core-decoders nebula-core-hw-interfaces nebula-core-ros nebula-msgs nebula-robosense-common nebula-robosense-decoders nebula-robosense-hw-interfaces rclcpp rclcpp-components robosense-msgs sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula Robosense ROS Wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
