
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-kilted-mola-test-datasets";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/kilted/mola_test_datasets/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a3e9cab2ccb1706acc05237acf773f09eb7ddc09b043a32ad8d2ba7420a2d2c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages";
    license = with lib.licenses; [ bsd3 bsd3 cc-by-nc-sa-30 "CC-BY-3.0" "CC-BY-3.0" cc-by-nc-sa-40 ];
  };
}
