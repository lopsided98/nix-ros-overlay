
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, mola-kernel, mrpt-libbase, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-launcher";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_launcher/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "fa746b93b791d8d088699a01044b051a71a651ade1a2d8b082e260b5823072df";
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
