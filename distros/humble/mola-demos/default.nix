
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-demos";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_demos/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "0488acf7357a2e1be2112c33394b5d4e6479c610ce2e4a49ab664d54f8583e8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Demo and example launch files for MOLA";
    license = with lib.licenses; [ bsd3 ];
  };
}
