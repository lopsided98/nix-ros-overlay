
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-rolling-sqlite3-vendor";
  version = "0.24.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/sqlite3_vendor/0.24.0-1.tar.gz";
    name = "0.24.0-1.tar.gz";
    sha256 = "ede6a05bc542737d5a89a440d8b31b4dee733e44d15209b56be54227ece2d59c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
