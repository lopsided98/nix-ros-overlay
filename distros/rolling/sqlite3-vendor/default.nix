
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sqlite }:
buildRosPackage {
  pname = "ros-rolling-sqlite3-vendor";
  version = "0.18.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/sqlite3_vendor/0.18.0-3.tar.gz";
    name = "0.18.0-3.tar.gz";
    sha256 = "f75c05844cd8ae2260067d18088f2154b42e139ad2fc3a06ea8b494b1457b762";
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
