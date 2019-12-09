
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cppcheck, resource-retriever, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, qt5, ament-cmake-gmock, ament-index-cpp, rviz-rendering, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rviz-rendering-tests";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_rendering_tests/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "de5bba689953b50de113794305b280d18365d1e49f6f0043380773fcf30d32a6";
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
