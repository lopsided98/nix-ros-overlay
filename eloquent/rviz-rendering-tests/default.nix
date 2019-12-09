
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cppcheck, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, qt5, ament-cmake-gmock, ament-index-cpp, rviz-rendering, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-rviz-rendering-tests";
  version = "7.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/rviz_rendering_tests/7.0.3-1.tar.gz";
    name = "7.0.3-1.tar.gz";
    sha256 = "81702fbfbe3aea5b7f7ea0fba6c5518b8fbe3947ca6f899137ae4b050e491938";
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
