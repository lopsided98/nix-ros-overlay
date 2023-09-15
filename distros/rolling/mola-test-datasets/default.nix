
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-test-datasets";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_test_datasets/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "e1bed97ca929c5868fbbd930305538a8c0f95371b3553c7597d7fca11472ba35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = ''Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
