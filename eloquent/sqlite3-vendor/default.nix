
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, sqlite }:
buildRosPackage {
  pname = "ros-eloquent-sqlite3-vendor";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/sqlite3_vendor/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "bb5dc1079f0874aefd7ee20c22d2fadf8509b22382f8570f309ab25b0e24eb6e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
