
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-launcher";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_launcher/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "81c0e3b38e524e217cf4422a96935e85b91edc49abb4b96bbab53120bfec112a";
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
