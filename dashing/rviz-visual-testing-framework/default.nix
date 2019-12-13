
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-uncrustify, qt5, rviz-common }:
buildRosPackage {
  pname = "ros-dashing-rviz-visual-testing-framework";
  version = "6.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/dashing/rviz_visual_testing_framework/6.1.5-1.tar.gz";
    name = "6.1.5-1.tar.gz";
    sha256 = "f42359c9869ba7d26ef732be855d801a9eac100ce3c3c9bad833b586fd73bc5c";
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
