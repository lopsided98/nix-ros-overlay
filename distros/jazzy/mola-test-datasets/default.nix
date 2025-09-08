
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-test-datasets";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_test_datasets-release/archive/release/jazzy/mola_test_datasets/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "bd4445601542576f6fa6db167b4bd1e2465deb6cdbac5e9591ec57186250b2f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Small SLAM dataset extracts used for demos or unit tests in the rest of MOLA packages";
    license = with lib.licenses; [ bsd3 bsd3 "CC-BY-NC-SA-3.0" "CC-BY-3.0" "CC-BY-3.0" cc-by-nc-sa-40 ];
  };
}
