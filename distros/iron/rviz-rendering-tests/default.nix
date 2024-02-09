
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, qt5, resource-retriever, rviz-rendering }:
buildRosPackage {
  pname = "ros-iron-rviz-rendering-tests";
  version = "12.4.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/iron/rviz_rendering_tests/12.4.6-1.tar.gz";
    name = "12.4.6-1.tar.gz";
    sha256 = "d7f88aa1e581ba4f06569ffa37fe5a03bbcd3e86162954d51f1a6d82181c8b42";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
