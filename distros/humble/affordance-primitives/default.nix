
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-clang-tidy, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-lint-cmake, ament-lint-auto, geometry-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-humble-affordance-primitives";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/affordance_primitives-release/archive/release/humble/affordance_primitives/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "eb25ae49b78c3cb702387927258cb4d68a4b1548b403209645a1e7495f5986fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-clang-tidy ament-cmake-copyright ament-cmake-gtest ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for affordance motion primitives.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
