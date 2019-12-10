
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rcutils, rosbag2-storage, rosbag2-test-common, sqlite3-vendor }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-storage-default-plugins";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_storage_default_plugins/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "bac1a9af561dcca095cbad5ec3e43c1e7ea98fa259b22eae275fbceba2be5a1e";
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
