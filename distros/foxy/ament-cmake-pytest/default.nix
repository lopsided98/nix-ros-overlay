
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-pytest";
  version = "0.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_pytest/0.9.9-1.tar.gz";
    name = "0.9.9-1.tar.gz";
    sha256 = "6c2f1bc5048c4e08f7e46f08ac29ae86fd509a72030bf19b806185e84671f1e9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test pythonPackages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
