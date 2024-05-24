
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-common";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/jazzy/mola_common/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "fc86809740c4df6b1758ed7e56ab3211f67973052b92d0e484fbd6a22cc9bea7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Common CMake scripts to all MOLA modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
