
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-python, ament-cmake-ros-core, ament-index-cpp, ament-lint-auto, ament-lint-common, mcap-vendor, pluginlib, rcutils, rosbag2-storage, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-mcap";
  version = "0.35.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_mcap/0.35.0-1.tar.gz";
    name = "0.35.0-1.tar.gz";
    sha256 = "72611e428fc20afebf87e0f45f51778f82c3e9cfb427dce770220e0fa3283c06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ ament-index-cpp mcap-vendor pluginlib rcutils rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ament-cmake-ros-core ];

  meta = {
    description = "rosbag2 storage plugin using the MCAP file format";
    license = with lib.licenses; [ asl20 ];
  };
}
