
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-launcher";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_launcher/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "d964afeaf204549d352a183bf77d3ab07c8f7eda4538866e7bae11e4becb73c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-pep257 ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mola-kernel mrpt-libbase mrpt-libtclap ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Launcher app for MOLA systems";
    license = with lib.licenses; [ gpl3Only ];
  };
}
