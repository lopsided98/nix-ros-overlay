
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-demos";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_demos/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "cde25b5a8b5954029a82bc29567bb905b79339a47ddf37094614f559210aa792";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Demo and example launch files for MOLA";
    license = with lib.licenses; [ bsd3 ];
  };
}
