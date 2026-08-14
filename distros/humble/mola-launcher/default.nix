
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, mola-kernel, mrpt-libbase, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-launcher";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_launcher/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "69dd552441f2511961712d9752898f08294824436cb127e5f9fb92018523d95d";
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
