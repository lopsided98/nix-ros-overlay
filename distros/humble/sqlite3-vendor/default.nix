
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-humble-sqlite3-vendor";
  version = "0.15.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/sqlite3_vendor/0.15.5-1.tar.gz";
    name = "0.15.5-1.tar.gz";
    sha256 = "b377bdcac32a55bfc7f8db99aa95ae0f8b3fc1e62b7e295c210c0652e2b3d3d0";
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
