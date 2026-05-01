
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-test-datasets";
  version = "0.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/lyrical/mola_test_datasets/0.4.2-3.tar.gz";
    name = "0.4.2-3.tar.gz";
    sha256 = "019381de4623b90f909da566a03886a8e1c6bb73cc1932bf5a8fb07feb720d5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages";
    license = with lib.licenses; [ bsd3 bsd3 "CC-BY-NC-SA-3.0" "CC-BY-3.0" "CC-BY-3.0" cc-by-nc-sa-40 ];
  };
}
