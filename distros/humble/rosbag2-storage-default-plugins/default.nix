
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-rosbag2-storage-default-plugins";
  version = "0.15.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_storage_default_plugins/0.15.12-1.tar.gz";
    name = "0.15.12-1.tar.gz";
    sha256 = "37210da06ecf3c489f7f7194fc70a9d317e8c5c6eb0358b18c067d20a19bc231";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcpputils rcutils rosbag2-storage sqlite3-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSBag2 SQLite3 storage plugin";
    license = with lib.licenses; [ asl20 ];
  };
}
