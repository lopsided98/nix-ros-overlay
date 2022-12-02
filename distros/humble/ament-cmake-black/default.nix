
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-black";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/Timple/ament_black-release/archive/release/humble/ament_cmake_black/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "07045615bb575cfbd485e721dd76ce5ef2bb12e2e8dd56464325e061568de73b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-black ament-cmake-test ];
  nativeBuildInputs = [ ament-black ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_black to lint Python code using black.'';
    license = with lib.licenses; [ asl20 ];
  };
}
