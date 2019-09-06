
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rviz-rendering, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-lint-cmake, ament-cmake-gtest, ament-cmake-cppcheck, qt5, resource-retriever, ament-index-cpp, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-rviz-rendering-tests";
  version = "5.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_rendering_tests/5.1.0-0.tar.gz";
    name = "5.1.0-0.tar.gz";
    sha256 = "a66b2482a4c5c7ab5fd51246a799b42855b7d406643a9c28e1eff45fbadeb3e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-rendering resource-retriever qt5.qtbase ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-lint-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-cppcheck ament-index-cpp ament-cmake-cpplint ];
  propagatedBuildInputs = [ rviz-rendering resource-retriever ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
