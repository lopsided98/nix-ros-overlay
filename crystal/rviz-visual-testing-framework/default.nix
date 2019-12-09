
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-cpplint, ament-cmake, ament-cmake-uncrustify, rviz-common, qt5, ament-cmake-gmock, ament-cmake-cppcheck, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-rviz-visual-testing-framework";
  version = "5.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz-release/archive/release/crystal/rviz_visual_testing_framework/5.1.1-1.tar.gz";
    name = "5.1.1-1.tar.gz";
    sha256 = "179a5eaa03c2c17007e33845ca8d82902ffe34d45de7312e89de3ee82c50b215";
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
