
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-math-util";
  version = "3.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_math_util/3.7.6-1.tar.gz";
    name = "3.7.6-1.tar.gz";
    sha256 = "0a162e8e03cee8732bbf1b66934cf978ff14560d9e304dfa9f5e28fb46a7de4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used math utility code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
