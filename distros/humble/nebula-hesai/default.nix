
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-utils-debug, boost, diagnostic-msgs, diagnostic-updater, nebula-core-common, nebula-core-decoders, nebula-core-hw-interfaces, nebula-core-ros, nebula-hesai-common, nebula-hesai-decoders, nebula-hesai-hw-interfaces, nebula-msgs, pandar-msgs, rclcpp, rclcpp-components, ros-environment, ros-testing, rosbag2-cpp, sensor-msgs, sync-tooling-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-hesai";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_hesai/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "de4135e425c785b6826054cd68e10d98f73b82f952de289446cd3899ba404288";
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
