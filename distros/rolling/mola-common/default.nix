
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-common";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_common-release/archive/release/rolling/mola_common/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "7ae80f325c90f3078c58714c13363942696d9971df9903e341be6cf69885f0c4";
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
