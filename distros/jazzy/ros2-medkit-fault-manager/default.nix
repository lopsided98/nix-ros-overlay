
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, launch-testing-ros, nlohmann_json, rclcpp, ros2-medkit-msgs, ros2-medkit-serialization, rosbag2-cpp, rosbag2-storage, rosbag2-storage-mcap, sensor-msgs, sqlite, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-manager";
  version = "0.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_manager/0.3.0-4.tar.gz";
    name = "0.3.0-4.tar.gz";
    sha256 = "1c4db6d7209f4413686fc435f72c16487edeba829a031a3fdcac89fb6a008421";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-testing-ament-cmake launch-testing-ros rosbag2-storage-mcap sensor-msgs std-msgs ];
  propagatedBuildInputs = [ nlohmann_json rclcpp ros2-medkit-msgs ros2-medkit-serialization rosbag2-cpp rosbag2-storage sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Central fault manager node for ros2_medkit fault management system";
    license = with lib.licenses; [ asl20 ];
  };
}
