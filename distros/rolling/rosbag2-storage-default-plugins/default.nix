
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-default-plugins";
  version = "0.24.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_default_plugins/0.24.0-1.tar.gz";
    name = "0.24.0-1.tar.gz";
    sha256 = "8a0f353a39c358745c48218bf0f2bb5f72d5f6b79dadf223ac6bcd0360c5b582";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbag2-storage-mcap rosbag2-storage-sqlite3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Intermediate metapackage to point at default storage plugin(s) for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
