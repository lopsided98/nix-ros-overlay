
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite3-vendor, pluginlib, ament-lint-common, rosbag2-test-common, ament-cmake-gmock, ament-cmake, ament-lint-auto, rosbag2-storage, rcutils }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-storage-default-plugins";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_storage_default_plugins/0.0.7-0.tar.gz;
    sha256 = "d686069fc2136b5053f9e601e2e6f9f69359cf8e2bfc50f3119b06a8261aec74";
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
