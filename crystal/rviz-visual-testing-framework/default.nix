
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-cppcheck, qt5, ament-cmake-lint-cmake, rviz-common, ament-cmake-cpplint }:
buildRosPackage {
  pname = "ros-crystal-rviz-visual-testing-framework";
  version = "5.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_visual_testing_framework/5.1.0-0.tar.gz";
    name = "5.1.0-0.tar.gz";
    sha256 = "70d7d6aa110b2f04368e7c7f90d152b6c43f38f704e6188f19352af1e93372c5";
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
