
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-test-datasets";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/rolling/mola_test_datasets/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "89e46150b263db03d62c7a28a24be96d7d85d841765eded7eed2e4f79a6be13f";
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
