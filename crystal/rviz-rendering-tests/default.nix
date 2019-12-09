
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cppcheck, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, qt5, ament-cmake-gmock, ament-index-cpp, rviz-rendering, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-rviz-rendering-tests";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_rendering_tests/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "253c5320398e6c7df339ec80b5263cefe1cc4c37c80622e705199a22b7ee8aad";
  };

  buildType = "ament_cmake";
  buildInputs = [ resource-retriever rviz-rendering qt5.qtbase ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-index-cpp ament-cmake-gtest ];
  propagatedBuildInputs = [ resource-retriever rviz-rendering ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example plugin for RViz - documents and tests RViz plugin development'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
