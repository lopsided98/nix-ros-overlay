
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-storage-sqlite3 }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-default-plugins";
  version = "0.18.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_storage_default_plugins/0.18.0-3.tar.gz";
    name = "0.18.0-3.tar.gz";
    sha256 = "d19c69c578eba935f707b11b682a03ec19627bf21fc4b0429071fd5f01216776";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbag2-storage-sqlite3 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Intermediate metapackage to point at default storage plugin(s) for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
