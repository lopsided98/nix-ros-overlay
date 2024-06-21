
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, class-loader, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-jazzy-pluginlib";
  version = "5.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pluginlib-release/archive/release/jazzy/pluginlib/5.4.2-2.tar.gz";
    name = "5.4.2-2.tar.gz";
    sha256 = "7ee21b8443a8aac40dbeabd55a733b23245cfe515972e2d78f406c5aae364c12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp class-loader rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
