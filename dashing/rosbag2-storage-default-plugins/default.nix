
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite3-vendor, pluginlib, ament-lint-common, rosbag2-test-common, ament-cmake-gmock, ament-cmake, ament-lint-auto, rosbag2-storage, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-storage-default-plugins";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_storage_default_plugins/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "5f7f7aee55bc0df586f77da7c829edfb048e87d9ddbe44d293a0dead7c3650a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ sqlite3-vendor rosbag2-storage rcutils pluginlib ];
  checkInputs = [ ament-lint-auto ament-cmake-gmock ament-lint-common rosbag2-test-common ];
  propagatedBuildInputs = [ sqlite3-vendor rosbag2-storage rcutils pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSBag2 SQLite3 storage plugin'';
    license = with lib.licenses; [ asl20 ];
  };
}
