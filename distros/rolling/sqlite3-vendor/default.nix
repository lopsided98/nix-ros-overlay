
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-rolling-sqlite3-vendor";
  version = "0.24.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/sqlite3_vendor/0.24.0-2.tar.gz";
    name = "0.24.0-2.tar.gz";
    sha256 = "dd29dae2b05c908df3bb979979e077102f60b466d848b969479adaa32c099e22";
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
