
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-iron-sqlite3-vendor";
  version = "0.22.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/sqlite3_vendor/0.22.7-1.tar.gz";
    name = "0.22.7-1.tar.gz";
    sha256 = "e5bdb37bd87d1cc81d45b3365b25dfc8e155ceab9c1d7c11ba18c97002c104cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SQLite 3 vendor package";
    license = with lib.licenses; [ asl20 ];
  };
}
