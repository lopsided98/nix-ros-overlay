
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-index-cpp, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-eloquent-rviz-rendering-tests";
  version = "7.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_rendering_tests/7.0.6-1.tar.gz";
    name = "7.0.6-1.tar.gz";
    sha256 = "3819c313b52c1a3430841e40e5be2d3addf4d7c68e5ac3079aff66e2a12a9c71";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-index-cpp ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
