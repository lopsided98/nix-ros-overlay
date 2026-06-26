
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-clang-tidy, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing-ament-cmake, launch-testing-ros, nlohmann_json, rclcpp, ros2-medkit-cmake, ros2-medkit-msgs, ros2-medkit-serialization, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-mcap, sensor-msgs, sqlite, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-medkit-fault-manager";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/jazzy/ros2_medkit_fault_manager/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "a5a86c66524931ad2f9aa5af55e33562f5c9bee159b8459ab84ae4f174636b80";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-medkit-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-clang-tidy ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing-ament-cmake launch-testing-ros rosbag2-py rosbag2-storage-mcap sensor-msgs std-msgs ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros nlohmann_json rclcpp ros2-medkit-msgs ros2-medkit-serialization rosbag2-cpp rosbag2-storage sqlite ];
  nativeBuildInputs = [ ament-cmake ros2-medkit-cmake ];

  meta = {
    description = "Central fault manager node for ros2_medkit fault management system";
    license = with lib.licenses; [ asl20 ];
  };
}
