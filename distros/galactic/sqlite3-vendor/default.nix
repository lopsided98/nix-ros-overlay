
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-galactic-sqlite3-vendor";
  version = "0.9.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/sqlite3_vendor/0.9.1-3.tar.gz";
    name = "0.9.1-3.tar.gz";
    sha256 = "c22e6164716c8eb44383f4fa9040927ede18bf5d9a966bcc6644f17c1a4eb84b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SQLite 3 vendor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
