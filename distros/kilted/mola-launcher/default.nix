
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-launcher";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_launcher/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "3a23af84413e904cb7c0bc99b0afa039cba8dd94056e71366afaef25f224c240";
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
