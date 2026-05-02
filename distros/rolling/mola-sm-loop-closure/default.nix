
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, gtsam, mola-common, mola-georeferencing, mola-gtsam-factors, mola-metric-maps, mola-pose-list, mola-relocalization, mola-test-datasets, mola-yaml, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libtclap, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-sm-loop-closure";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_sm_loop_closure-release/archive/release/rolling/mola_sm_loop_closure/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "2cc8b048062263c0994d0cf29e19d65a8ae479ccc8eda3eae5e363e17333d8d2";
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
