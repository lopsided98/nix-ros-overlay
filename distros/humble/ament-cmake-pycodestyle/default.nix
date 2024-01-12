
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pycodestyle";
  version = "0.12.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pycodestyle/0.12.9-1.tar.gz";
    name = "0.12.9-1.tar.gz";
    sha256 = "5ef476356006a64fd6cd494fd2c9d8019daafa2eb3a9b49608adbdd34167dabb";
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
