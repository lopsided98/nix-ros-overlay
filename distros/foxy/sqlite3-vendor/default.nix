
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-foxy-sqlite3-vendor";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/sqlite3_vendor/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "747946eb57d96eefa6f3322ee3392470bcdd0a848538285e730469d2e7e429ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
