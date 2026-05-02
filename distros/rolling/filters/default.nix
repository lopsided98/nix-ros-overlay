
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-uncrustify, ament-cmake-xmllint, boost, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-filters";
  version = "2.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/filters-release/archive/release/rolling/filters/2.2.2-2.tar.gz";
    name = "2.2.2-2.tar.gz";
    sha256 = "ff7037429e8b6a8ca7a520897bc54914903cc84e642775f0c7d8f48652e7b4cb";
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
