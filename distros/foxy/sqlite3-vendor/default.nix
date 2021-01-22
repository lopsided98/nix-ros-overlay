
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-foxy-sqlite3-vendor";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/sqlite3_vendor/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "345a8ac8a2a8076518ea4b93cb138574378c394d9293897de289ee81b540cbdb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
