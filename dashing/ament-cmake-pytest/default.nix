
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, pythonPackages, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pytest";
  version = "0.7.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_pytest/0.7.3-1.tar.gz;
    sha256 = "c412698e38df13eec825abcec2e8dff4f76747169c78840b5dfcf5376493594f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test pythonPackages.pytest ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
