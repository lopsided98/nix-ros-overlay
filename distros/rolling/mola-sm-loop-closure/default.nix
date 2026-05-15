
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cmake, flann, gtsam, lz4, mola-common, mola-georeferencing, mola-gtsam-factors, mola-metric-maps, mola-pose-list, mola-relocalization, mola-test-datasets, mola-yaml, mp2p-icp, mrpt-libgui, mrpt-libmaps, mrpt-libtclap, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-sm-loop-closure";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_sm_loop_closure-release/archive/release/rolling/mola_sm_loop_closure/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "a79234b2c816f086fa540ab8bdbdd27e4f8b9d98a876b81a46cbfbeb77c5fcd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake flann lz4 ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto mola-metric-maps mola-test-datasets ];
  propagatedBuildInputs = [ gtsam mola-common mola-georeferencing mola-gtsam-factors mola-pose-list mola-relocalization mola-yaml mp2p-icp mrpt-libgui mrpt-libmaps mrpt-libtclap onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Simplemap loop-closure postprocessing library and CLI tool";
    license = with lib.licenses; [ gpl3Only ];
  };
}
