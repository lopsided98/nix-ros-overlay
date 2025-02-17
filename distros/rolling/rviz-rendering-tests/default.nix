
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-rolling-rviz-rendering-tests";
  version = "14.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/rolling/rviz_rendering_tests/14.4.2-1.tar.gz";
    name = "14.4.2-1.tar.gz";
    sha256 = "b498377136ed6c40982c9a7f652d9c17b98c2eaf4daeec03c3df2d9eca42d478";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example plugin for RViz - documents and tests RViz plugin development";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
