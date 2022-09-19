
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-humble-sqlite3-vendor";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/sqlite3_vendor/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "89749a0c8c5078722849c87659455d788e4891f61f740979de346d71ecc0f713";
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
