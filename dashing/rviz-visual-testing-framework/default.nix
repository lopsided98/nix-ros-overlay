
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, rviz-common, qt5, ament-cmake-gmock, ament-cmake-cppcheck, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-rviz-visual-testing-framework";
  version = "6.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_visual_testing_framework/6.1.4-1.tar.gz";
    name = "6.1.4-1.tar.gz";
    sha256 = "fd18f9fd580cc4504bd416c655b47e00472615fb15f55a047d58481319fe4b49";
  };

  buildType = "ament_cmake";
  buildInputs = [ rviz-common ament-cmake-gtest qt5.qtbase ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-cpplint ament-cmake-uncrustify ament-cmake-gmock ament-cmake-cppcheck ];
  propagatedBuildInputs = [ rviz-common ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D testing framework for RViz.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
