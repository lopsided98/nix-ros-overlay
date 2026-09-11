
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt5or6, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-lyrical-rviz-rendering-tests";
  version = "15.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/lyrical/rviz_rendering_tests/15.2.6-1.tar.gz";
    name = "15.2.6-1.tar.gz";
    sha256 = "ec965396872449557d5a3f2520988ba76d7277a9146eb73122f75d07e506dff7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5or6.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example plugin for RViz - documents and tests RViz plugin development";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
