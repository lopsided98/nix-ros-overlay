
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-test-datasets";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_test_datasets/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a338cee4b582d48fc25f4c3edc6c7cf05ac89c715ea6029d63382f758bc86de7";
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
