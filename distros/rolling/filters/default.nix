
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-uncrustify, ament-cmake-xmllint, boost, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-filters";
  version = "2.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/filters-release/archive/release/rolling/filters/2.1.0-5.tar.gz";
    name = "2.1.0-5.tar.gz";
    sha256 = "4fbe698a563b73bc4d3505c987e0df1e552815b9b2755a785f4c1669af19797c";
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
