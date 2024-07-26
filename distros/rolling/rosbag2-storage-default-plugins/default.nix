
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-default-plugins";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_default_plugins/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "c72fd932038584042a127d028ea2630886555d67befed2d422554c5e4f53650a";
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
