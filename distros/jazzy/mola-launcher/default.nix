
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-kernel, mrpt2, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-launcher";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_launcher/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "a9de69f9c0f6d0268210c096f32e2423bc9a57386b0ac416cb4147bb62f0bd99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Launcher app for MOLA systems";
    license = with lib.licenses; [ gpl3Only ];
  };
}
