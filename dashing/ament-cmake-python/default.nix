
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-python";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_python/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "65912f08551ea941d816ea19dfb93fdda669f71ad5d7edd04cdf0f4bb099893a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to use Python in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
