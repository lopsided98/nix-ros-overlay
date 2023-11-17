
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-python";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_python/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "1c1c9b05849a3afde159b808b3e5aad2339820ad5a6e7fa8217863ebc3ee8648";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to use Python in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
