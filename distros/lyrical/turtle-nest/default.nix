
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-lyrical-turtle-nest";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtle_nest-release/archive/release/lyrical/turtle_nest/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "21df44335d1dd20288287c863fd577d664ce81eb800870c71c30ba2e9bc0b3c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 python3Packages.black python3Packages.pybind11 qt5.qtbase qt5.qtsvg tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Package Creator";
    license = with lib.licenses; [ asl20 ];
  };
}
