
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-galactic-rviz-rendering-tests";
  version = "8.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/galactic/rviz_rendering_tests/8.5.0-3.tar.gz";
    name = "8.5.0-3.tar.gz";
    sha256 = "60ccbe310e03cd605e831adc51886d784693df2aa8ebf398aad14ee817a88f7b";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
