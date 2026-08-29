
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, mola-kernel, mrpt-libbase, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-launcher";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_launcher/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "8f6136cca18e1025d5868fff11151562759016866e0f59bea437f9691185e041";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ cli11 mola-kernel mrpt-libbase ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Launcher app for MOLA systems";
    license = with lib.licenses; [ gpl3Only ];
  };
}
