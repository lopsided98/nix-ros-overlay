
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-jazzy-sqlite3-vendor";
  version = "0.26.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/sqlite3_vendor/0.26.9-1.tar.gz";
    name = "0.26.9-1.tar.gz";
    sha256 = "5e1dd36fd766620a8a7ac18e39f2e079ac46280f5eb142813ac6f3827324715f";
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
