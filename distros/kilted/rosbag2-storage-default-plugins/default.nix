
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-kilted-rosbag2-storage-default-plugins";
  version = "0.32.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/kilted/rosbag2_storage_default_plugins/0.32.0-2.tar.gz";
    name = "0.32.0-2.tar.gz";
    sha256 = "a059b5aca8781166cb9cd920b7204ce29ada27ec974743d534c762a5420be6b1";
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
