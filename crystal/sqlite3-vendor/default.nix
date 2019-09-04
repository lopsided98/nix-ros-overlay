
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sqlite, cmake }:
buildRosPackage {
  pname = "ros-crystal-sqlite3-vendor";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/sqlite3_vendor/0.0.7-0.tar.gz;
    sha256 = "243bb62d135e78429dd88a5f21c18293ccf173041cc274b3031c948f0c77c5c6";
  };

  buildInputs = [ sqlite ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
