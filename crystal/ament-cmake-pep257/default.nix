
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-pep257, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-pep257";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_pep257/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "a3f1c7e38ba783e0b380b7af7daf437afe04eb3495d19556e6e7e45e465cb976";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pep257 to check code against the style conventions in
    PEP 257.'';
    license = with lib.licenses; [ asl20 ];
  };
}
