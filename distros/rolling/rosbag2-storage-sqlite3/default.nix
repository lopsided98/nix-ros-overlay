
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-sqlite3";
  version = "0.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_sqlite3/0.27.0-1.tar.gz";
    name = "0.27.0-1.tar.gz";
    sha256 = "2b99f3037788a5b268fe2566a1918fbe817a21e1a9ca3b6ad00e957a682a291b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-storage sqlite3-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "ROSBag2 SQLite3 storage plugin";
    license = with lib.licenses; [ asl20 ];
  };
}
