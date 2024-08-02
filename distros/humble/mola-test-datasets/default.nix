
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-test-datasets";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/humble/mola_test_datasets/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "3a70674ad0d2cac97bfee8df35383e2e5eae9b1859859099c480e91024428e1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages";
    license = with lib.licenses; [ bsdOriginal bsdOriginal "CC-BY-NC-SA-3.0" "CC-BY-3.0" "CC-BY-3.0" ];
  };
}
