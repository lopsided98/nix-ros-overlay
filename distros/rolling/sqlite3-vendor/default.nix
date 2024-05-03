
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-rolling-sqlite3-vendor";
  version = "0.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/sqlite3_vendor/0.27.0-1.tar.gz";
    name = "0.27.0-1.tar.gz";
    sha256 = "5e905f23bc3c7108976e7715191d316f9e10480107beae9a0f2c8899ec53d8f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "SQLite 3 vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
