
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-uncrustify, ament-cmake-xmllint, boost, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-filters";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/filters-release/archive/release/jazzy/filters/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "797fcb56ba7b8960f9c41686982da09b443147ed89a4bfe2dfb9e22d869bed1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ boost pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This library provides a standardized interface for processing data as a sequence
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
