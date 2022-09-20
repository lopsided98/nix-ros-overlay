
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-foxy-sqlite3-vendor";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/sqlite3_vendor/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "cf2a0488809b957a0bd612a3d7116d68193e70d4eaf1eb99bbb37cf0464e2329";
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
