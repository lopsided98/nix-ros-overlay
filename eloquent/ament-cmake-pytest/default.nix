
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, pythonPackages, ament-cmake-test }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-pytest";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_pytest/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "f835c1b9be4c911b216efba399a875cc4903ed33b23027342d0d80be69e0bc0c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core pythonPackages.pytest ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to run Python tests using pytest in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
