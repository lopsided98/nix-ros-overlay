
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, qt5, rviz-common }:
buildRosPackage {
  pname = "ros-foxy-rviz-visual-testing-framework";
  version = "8.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/foxy/rviz_visual_testing_framework/8.2.2-1.tar.gz";
    name = "8.2.2-1.tar.gz";
    sha256 = "b937d5a8561b9eb39fb441fe25fd1f3605caa50d981b19ec6236847eb6c6fb77";
  };

  buildType = "ament_cmake";
  buildInputs = [ qt5.qtbase ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gmock ament-cmake-lint-cmake ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ament-cmake-gtest rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D testing framework for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
