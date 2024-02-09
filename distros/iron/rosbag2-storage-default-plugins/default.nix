
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-mcap, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-iron-rosbag2-storage-default-plugins";
  version = "0.22.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_storage_default_plugins/0.22.6-1.tar.gz";
    name = "0.22.6-1.tar.gz";
    sha256 = "025f47f4763b32dc1cb4676cfb60d7ea6561eefad15ef0eaf31990f887414d4b";
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
