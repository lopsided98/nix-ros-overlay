
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-python, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcutils, rosbag2-storage, rosbag2-test-common, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-storage-mcap";
  version = "0.26.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_storage_mcap/0.26.7-1.tar.gz";
    name = "0.26.7-1.tar.gz";
    sha256 = "c6d58fa14dbf47f4b1dabf748b101d4c7690bb993407c0239bfa5a9b7b46d0e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "rosbag2 storage plugin using the MCAP file format";
    license = with lib.licenses; [ asl20 ];
  };
}
