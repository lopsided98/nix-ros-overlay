
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-utils-debug, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-hesai-common, nebula-hesai-decoders, nebula-hesai-hw-interfaces, nebula-msgs, pandar-msgs, rclcpp, rclcpp-components, ros-environment, ros-testing, rosbag2-cpp, sensor-msgs, sync-tooling-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-hesai";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_hesai/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8196d7dc53491ef9806f2f8d182d40bcaad3b6c4e2bce2baffc3bf6729fa9c8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto rosbag2-cpp ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-utils-debug boost diagnostic-msgs diagnostic-updater nebula-core-common nebula-core-decoders nebula-core-hw-interfaces nebula-core-ros nebula-hesai-common nebula-hesai-decoders nebula-hesai-hw-interfaces nebula-msgs pandar-msgs rclcpp rclcpp-components sensor-msgs sync-tooling-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula Hesai ROS Wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
