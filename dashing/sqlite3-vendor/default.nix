
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite, cmake }:
buildRosPackage {
  pname = "ros-dashing-sqlite3-vendor";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/sqlite3_vendor/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "1d99e0ea35e1441a45ecddddac72838b570a4efcf6d7a41790e11fdf22db3c1f";
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
