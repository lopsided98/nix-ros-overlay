
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-test-datasets";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/jazzy/mola_test_datasets/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "a7bd0c22d5e86d5140de49751d79b9da6ec998171b8a50cd309fef928d45fd7a";
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
