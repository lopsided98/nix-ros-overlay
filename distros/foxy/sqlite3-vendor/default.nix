
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-foxy-sqlite3-vendor";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/sqlite3_vendor/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "6b8d66c59e65c236f84aafe3efc570497b3ba19943cbbf98453accb6bdd093aa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
