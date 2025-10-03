
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-kilted-rviz-rendering-tests";
  version = "15.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/kilted/rviz_rendering_tests/15.0.7-1.tar.gz";
    name = "15.0.7-1.tar.gz";
    sha256 = "7cc20a7d6613928df2ef972f80a7fa0e1d2aec6fcf90c2827656bc998e8f075d";
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
