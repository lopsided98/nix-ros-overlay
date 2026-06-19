
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, nlohmann_json, rclcpp, ros2-medkit-cmake, ros2-medkit-msgs, ros2-medkit-serialization, rosbag2-cpp, rosbag2-storage, rosbag2-storage-mcap, sensor-msgs, sqlite, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-manager";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_manager/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "2e25fbf483099eec77b4d4d14aac8e8bc38bd96f081205696b547e3b90ae3bd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros sensor-msgs std-msgs ];
  propagatedBuildInputs = [ nlohmann_json rclcpp ros2-medkit-msgs ros2-medkit-serialization rosbag2-cpp rosbag2-storage rosbag2-storage-mcap sqlite ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Central fault manager node for ros2_medkit fault management system";
    license = with lib.licenses; [ asl20 ];
  };
}
