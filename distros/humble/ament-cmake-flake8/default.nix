
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-flake8";
  version = "0.12.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_flake8/0.12.10-1.tar.gz";
    name = "0.12.10-1.tar.gz";
    sha256 = "9a9755d8ea0294190ba883db5c58324b42fadbf9641978b9fe89687eeee81fb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-flake8 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-flake8 ];

  meta = {
    description = ''The CMake API for ament_flake8 to check code syntax and style conventions
    with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
