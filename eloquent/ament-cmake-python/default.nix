
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-python";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_python/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "a74ce5bbd89232109975648cec0aadb22ec8b2eceac021a973667817c291b0ef";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to use Python in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
