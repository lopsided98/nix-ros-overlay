
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-storage-default-plugins";
  version = "0.26.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_storage_default_plugins/0.26.7-1.tar.gz";
    name = "0.26.7-1.tar.gz";
    sha256 = "b0b620d3785dfbd5805ed11faa504161a34ba7c90b76f2388e7715a3d517df4c";
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
