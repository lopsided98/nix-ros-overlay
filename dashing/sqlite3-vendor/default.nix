
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite, cmake }:
buildRosPackage {
  pname = "ros-dashing-sqlite3-vendor";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/sqlite3_vendor/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "e8298b5c6ce0cfb2eecaca633af20ae881df406918f54f1d9ec28563ac63fa36";
  };

  buildType = "cmake";
  buildInputs = [ sqlite ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
