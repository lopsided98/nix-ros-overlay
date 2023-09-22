
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pycodestyle";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pycodestyle/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "1d8ac5d38d5aad2e1cfce78fb7c910c1bca05922b8b768ad4cc9749b13bb23c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pycodestyle ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pycodestyle ];

  meta = {
    description = ''The CMake API for ament_pycodestyle to check code against the style conventions in
    PEP 8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
