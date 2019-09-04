
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite, cmake }:
buildRosPackage {
  pname = "ros-dashing-sqlite3-vendor";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/sqlite3_vendor/0.1.4-1.tar.gz;
    sha256 = "a4ca55fdfe80002689d034f52cedd6adc97ed8d27d650e078b97cb043785569a";
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
