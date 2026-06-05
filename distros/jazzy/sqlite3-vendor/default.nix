
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, sqlite }:
buildRosPackage {
  pname = "ros-jazzy-sqlite3-vendor";
  version = "0.26.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/sqlite3_vendor/0.26.11-1.tar.gz";
    name = "0.26.11-1.tar.gz";
    sha256 = "83306b4c6085d7c85b403dfb34b8b6fd09775b9b0effcb711d1d97a1535ffb22";
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
