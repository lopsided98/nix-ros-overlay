
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-kilted-rviz-rendering-tests";
  version = "15.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_rendering_tests/15.0.11-1.tar.gz";
    name = "15.0.11-1.tar.gz";
    sha256 = "e055e401d8d2f87908baf30832b25caa9efedfa87643845d1995b841627e86d4";
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
