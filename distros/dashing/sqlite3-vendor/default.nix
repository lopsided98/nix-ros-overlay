
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, sqlite }:
buildRosPackage {
  pname = "ros-dashing-sqlite3-vendor";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/sqlite3_vendor/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "4a816f77781a45651f5438829900e0bd258aa5ebe9a234551bac4d08d49ee82c";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
