
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-cppcheck, qt5, ament-cmake-lint-cmake, rviz-common, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-dashing-rviz-visual-testing-framework";
  version = "6.1.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_visual_testing_framework/6.1.3-1.tar.gz;
    sha256 = "45c847c89123e72c6ceab88dcb92d03271614d51bc7dd1fcb709d7943eaa3b32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gtest qt5.qtbase rviz-common ];
  checkInputs = [ ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-cpplint ];
  propagatedBuildInputs = [ ament-cmake-gtest rviz-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D testing framework for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
