
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-python";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_python/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "e4f4f6990dc2614b4b5fa2f4bd3dad86b99eaaabdd598126db1612240922d1e5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to use Python in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
