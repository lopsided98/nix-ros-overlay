
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep8 }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-pep8";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_pep8/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "f8cd9b5f684fd87e3ad81ca4cbbab4dbe9119e5d58989a3800a4e27bd5d2449e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep8 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_pep8 to check code against the style conventions in
    PEP 8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
