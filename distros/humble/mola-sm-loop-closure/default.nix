
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, gtsam, mola-common, mola-georeferencing, mola-gtsam-factors, mola-metric-maps, mola-pose-list, mola-relocalization, mola-test-datasets, mola-yaml, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-sm-loop-closure";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_sm_loop_closure-release/archive/release/humble/mola_sm_loop_closure/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "355c880e70abf43adcd76fbbf8b2882cc87b4af7adde99febb9d2e6d3a7ad3af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto mola-metric-maps mola-test-datasets ];
  propagatedBuildInputs = [ gtsam mola-common mola-georeferencing mola-gtsam-factors mola-pose-list mola-relocalization mola-yaml mp2p-icp mrpt-libgui mrpt-libmaps mrpt-libtclap ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Simplemap loop-closure postprocessing library and CLI tool";
    license = with lib.licenses; [ gpl3Only ];
  };
}
