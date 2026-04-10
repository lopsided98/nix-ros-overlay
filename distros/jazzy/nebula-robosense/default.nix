
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-msgs, nebula-robosense-common, nebula-robosense-decoders, nebula-robosense-hw-interfaces, rclcpp, rclcpp-components, robosense-msgs, ros-environment, ros-testing, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-nebula-robosense";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_robosense/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c725c81c3b15d2b174994b6300865802bdddee39b45483212442a253ac626b3e";
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
