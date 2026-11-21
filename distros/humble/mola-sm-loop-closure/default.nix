
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, cli11, cmake, flann, gtsam, lz4, mola-common, mola-georeferencing, mola-gtsam-factors, mola-metric-maps, mola-pose-list, mola-relocalization, mola-test-datasets, mola-yaml, mp2p-icp, mrpt-maps, mrpt-poses, mrpt-viz, onetbb, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mola-sm-loop-closure";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_sm_loop_closure-release/archive/release/humble/mola_sm_loop_closure/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "dcd581d0d2051467343baf204adf1a4e5ab7311135bd969f08d75980d68ebbd4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest cmake flann lz4 ros-environment ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto mola-metric-maps mola-test-datasets ];
  propagatedBuildInputs = [ cli11 gtsam mola-common mola-georeferencing mola-gtsam-factors mola-pose-list mola-relocalization mola-yaml mp2p-icp mrpt-maps mrpt-poses mrpt-viz onetbb ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "Simplemap loop-closure postprocessing library and CLI tool";
    license = with lib.licenses; [ gpl3Only ];
  };
}
