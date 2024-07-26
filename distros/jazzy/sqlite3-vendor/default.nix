
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-jazzy-sqlite3-vendor";
  version = "0.26.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/sqlite3_vendor/0.26.4-1.tar.gz";
    name = "0.26.4-1.tar.gz";
    sha256 = "8426211e2e7fb1f78e4d4afc3033408e81b9f8731b7f5239dcaa298c22914d56";
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
