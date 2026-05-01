
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-launcher";
  version = "2.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_launcher/2.7.0-3.tar.gz";
    name = "2.7.0-3.tar.gz";
    sha256 = "acdfef0106515edc1a5f73db1143ecbd6d6a180e169786d72ce67cfdcfcbf958";
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
