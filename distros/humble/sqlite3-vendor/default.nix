
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-humble-sqlite3-vendor";
  version = "0.15.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/sqlite3_vendor/0.15.13-1.tar.gz";
    name = "0.15.13-1.tar.gz";
    sha256 = "6edbfddefab71d09c82c4e6c0385696e41e1c9699c29a08b36587fc97c96aae9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SQLite 3 vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
