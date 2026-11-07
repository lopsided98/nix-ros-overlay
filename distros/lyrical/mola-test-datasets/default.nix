
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-test-datasets";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/lyrical/mola_test_datasets/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6e8b9a4431b7bc73b72d3ac87c7ab2bd2054d40ae36c7ee1a4330daf7a222608";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages";
    license = with lib.licenses; [ bsd3 bsd3 cc-by-nc-sa-30 cc-by-30 cc-by-30 cc-by-nc-sa-40 ];
  };
}
