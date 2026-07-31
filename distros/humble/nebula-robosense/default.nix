
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-msgs, nebula-robosense-common, nebula-robosense-decoders, nebula-robosense-hw-interfaces, rclcpp, rclcpp-components, robosense-msgs, ros-environment, ros-testing, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "431a490e4761f38e41d4f862759c34aa56b410ff0bc4b4256f954779bdfff3e2";
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
