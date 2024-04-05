
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-default-plugins";
  version = "0.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_default_plugins/0.25.0-1.tar.gz";
    name = "0.25.0-1.tar.gz";
    sha256 = "9072ed9f49709b8e2dfecbe8152d9fa63a52523036ac5d1344c65d678fce5b7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbag2-storage-mcap rosbag2-storage-sqlite3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Intermediate metapackage to point at default storage plugin(s) for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
