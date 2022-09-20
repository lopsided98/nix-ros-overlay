
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-uncrustify, ament-cmake-xmllint, boost, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-filters";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/filters-release/archive/release/galactic/filters/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "2a6c14d40944d30277c034fd6b83c3e7bcbb5d1c53797881a342f50fb55aff72";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-gtest ament-cmake-uncrustify ament-cmake-xmllint ];
  propagatedBuildInputs = [ boost pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This library provides a standardized interface for processing data as a sequence
    of filters.  This package contains a base class upon which to build specific implementations
    as well as an interface which dynamically loads filters based on runtime parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
