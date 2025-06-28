
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-launcher";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_launcher/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "aebe30024fc516a142656a018a3a953dffbbc2fc31e2eeee64ed1a86fcf8f10c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mola-kernel mrpt-libbase mrpt-libtclap ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Launcher app for MOLA systems";
    license = with lib.licenses; [ gpl3Only ];
  };
}
