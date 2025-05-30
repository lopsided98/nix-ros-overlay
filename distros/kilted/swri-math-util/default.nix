
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-swri-math-util";
  version = "3.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_math_util/3.7.5-1.tar.gz";
    name = "3.7.5-1.tar.gz";
    sha256 = "242bd5e5d487b3ea0a62aef346a278a2dcec3cc41d5bfd146ed663fd7b2367dc";
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
