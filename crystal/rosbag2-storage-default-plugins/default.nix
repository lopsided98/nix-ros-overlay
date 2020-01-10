
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-storage-default-plugins";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_storage_default_plugins/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "d686069fc2136b5053f9e601e2e6f9f69359cf8e2bfc50f3119b06a8261aec74";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ pluginlib rcutils rosbag2-storage sqlite3-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 SQLite3 storage plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
