
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-gtest, ament-cmake-uncrustify, ament-cmake-xmllint, boost, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-filters";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/filters-release/archive/release/rolling/filters/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "ab9b0e1234a6c3cea6a34534aa6b989a9e6f8ace82c76f4416f62c26bcbbd71b";
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
